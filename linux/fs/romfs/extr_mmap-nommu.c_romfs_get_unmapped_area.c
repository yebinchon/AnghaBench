
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mtd_info {unsigned long size; } ;
struct inode {TYPE_2__* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
struct TYPE_6__ {scalar_t__ i_dataoffset; } ;
struct TYPE_5__ {struct mtd_info* s_mtd; } ;
struct TYPE_4__ {struct inode* host; } ;


 scalar_t__ EINVAL ;
 int ENOSYS ;
 int EOPNOTSUPP ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 TYPE_3__* ROMFS_I (struct inode*) ;
 unsigned long i_size_read (struct inode*) ;
 int mtd_get_unmapped_area (struct mtd_info*,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long romfs_get_unmapped_area(struct file *file,
          unsigned long addr,
          unsigned long len,
          unsigned long pgoff,
          unsigned long flags)
{
 struct inode *inode = file->f_mapping->host;
 struct mtd_info *mtd = inode->i_sb->s_mtd;
 unsigned long isize, offset, maxpages, lpages;
 int ret;

 if (!mtd)
  return (unsigned long) -ENOSYS;


 lpages = (len + PAGE_SIZE - 1) >> PAGE_SHIFT;
 isize = i_size_read(inode);
 offset = pgoff << PAGE_SHIFT;

 maxpages = (isize + PAGE_SIZE - 1) >> PAGE_SHIFT;
 if ((pgoff >= maxpages) || (maxpages - pgoff < lpages))
  return (unsigned long) -EINVAL;

 if (addr != 0)
  return (unsigned long) -EINVAL;

 if (len > mtd->size || pgoff >= (mtd->size >> PAGE_SHIFT))
  return (unsigned long) -EINVAL;

 offset += ROMFS_I(inode)->i_dataoffset;
 if (offset >= mtd->size)
  return (unsigned long) -EINVAL;

 if ((offset + len) > mtd->size)
  len = mtd->size - offset;

 ret = mtd_get_unmapped_area(mtd, len, offset, flags);
 if (ret == -EOPNOTSUPP)
  ret = -ENOSYS;
 return (unsigned long) ret;
}
