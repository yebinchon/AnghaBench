
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtd_info {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {TYPE_1__* i_sb; } ;
struct TYPE_3__ {struct mtd_info* s_mtd; } ;


 int NOMMU_MAP_COPY ;
 TYPE_2__* file_inode (struct file*) ;
 int mtd_mmap_capabilities (struct mtd_info*) ;

__attribute__((used)) static unsigned romfs_mmap_capabilities(struct file *file)
{
 struct mtd_info *mtd = file_inode(file)->i_sb->s_mtd;

 if (!mtd)
  return NOMMU_MAP_COPY;
 return mtd_mmap_capabilities(mtd);
}
