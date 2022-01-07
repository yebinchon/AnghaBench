
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 unsigned long long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int i_size_read (struct inode*) ;

__attribute__((used)) static unsigned long dir_blocks(struct inode *inode)
{
 return ((unsigned long long) (i_size_read(inode) + PAGE_SIZE - 1))
       >> PAGE_SHIFT;
}
