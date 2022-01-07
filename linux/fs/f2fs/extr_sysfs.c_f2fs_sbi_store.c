
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct f2fs_sb_info {TYPE_2__* sb; } ;
struct TYPE_3__ {int name; } ;
struct f2fs_attr {scalar_t__ struct_type; TYPE_1__ attr; } ;
typedef int ssize_t ;
struct TYPE_4__ {int s_umount; } ;


 int EAGAIN ;
 scalar_t__ GC_THREAD ;
 int __sbi_store (struct f2fs_attr*,struct f2fs_sb_info*,char const*,size_t) ;
 int down_read_trylock (int *) ;
 int strcmp (int ,char*) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t f2fs_sbi_store(struct f2fs_attr *a,
   struct f2fs_sb_info *sbi,
   const char *buf, size_t count)
{
 ssize_t ret;
 bool gc_entry = (!strcmp(a->attr.name, "gc_urgent") ||
     a->struct_type == GC_THREAD);

 if (gc_entry) {
  if (!down_read_trylock(&sbi->sb->s_umount))
   return -EAGAIN;
 }
 ret = __sbi_store(a, sbi, buf, count);
 if (gc_entry)
  up_read(&sbi->sb->s_umount);

 return ret;
}
