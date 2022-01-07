
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int f2fs_setxattr(struct inode *inode, int index,
  const char *name, const void *value, size_t size,
  struct page *page, int flags)
{
 return -EOPNOTSUPP;
}
