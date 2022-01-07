
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct qstr {int dummy; } ;
struct hfs_name {int dummy; } ;
struct TYPE_8__ {int len; } ;
struct TYPE_6__ {TYPE_3__ CName; int ParID; scalar_t__ reserved; } ;
struct TYPE_7__ {int key_len; TYPE_1__ cat; } ;
typedef TYPE_2__ btree_key ;


 int cpu_to_be32 (int ) ;
 int hfs_asc2mac (struct super_block*,TYPE_3__*,struct qstr const*) ;
 int memset (TYPE_3__*,int ,int) ;

void hfs_cat_build_key(struct super_block *sb, btree_key *key, u32 parent, const struct qstr *name)
{
 key->cat.reserved = 0;
 key->cat.ParID = cpu_to_be32(parent);
 if (name) {
  hfs_asc2mac(sb, &key->cat.CName, name);
  key->key_len = 6 + key->cat.CName.len;
 } else {
  memset(&key->cat.CName, 0, sizeof(struct hfs_name));
  key->key_len = 6;
 }
}
