
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct TYPE_5__ {scalar_t__ length; } ;
struct TYPE_6__ {TYPE_1__ name; int parent; } ;
struct TYPE_7__ {int key_len; TYPE_2__ cat; } ;
typedef TYPE_3__ hfsplus_btree_key ;


 int cpu_to_be16 (int) ;
 int cpu_to_be32 (int ) ;

void hfsplus_cat_build_key_with_cnid(struct super_block *sb,
   hfsplus_btree_key *key, u32 parent)
{
 key->cat.parent = cpu_to_be32(parent);
 key->cat.name.length = 0;
 key->key_len = cpu_to_be16(6);
}
