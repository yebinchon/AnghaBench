
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct qstr {int len; int name; } ;
struct TYPE_7__ {int length; } ;
struct TYPE_5__ {TYPE_4__ nodeName; int parentID; scalar_t__ reserved; } ;
struct TYPE_6__ {TYPE_1__ thread; int type; } ;
typedef TYPE_2__ hfsplus_cat_entry ;


 int HFSPLUS_MAX_STRLEN ;
 int be16_to_cpu (int ) ;
 int cpu_to_be16 (int) ;
 int cpu_to_be32 (int ) ;
 int hfsplus_asc2uni (struct super_block*,TYPE_4__*,int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int hfsplus_fill_cat_thread(struct super_block *sb,
       hfsplus_cat_entry *entry, int type,
       u32 parentid, const struct qstr *str)
{
 int err;

 entry->type = cpu_to_be16(type);
 entry->thread.reserved = 0;
 entry->thread.parentID = cpu_to_be32(parentid);
 err = hfsplus_asc2uni(sb, &entry->thread.nodeName, HFSPLUS_MAX_STRLEN,
    str->name, str->len);
 if (unlikely(err < 0))
  return err;

 return 10 + be16_to_cpu(entry->thread.nodeName.length) * 2;
}
