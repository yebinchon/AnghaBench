
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {unsigned long i_size; } ;


 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;

__attribute__((used)) static unsigned
minix_last_byte(struct inode *inode, unsigned long page_nr)
{
 unsigned last_byte = PAGE_SIZE;

 if (page_nr == (inode->i_size >> PAGE_SHIFT))
  last_byte = inode->i_size & (PAGE_SIZE - 1);
 return last_byte;
}
