
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {unsigned long i_size; } ;


 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 unsigned long QNX6_DIR_ENTRY_SIZE ;

__attribute__((used)) static unsigned last_entry(struct inode *inode, unsigned long page_nr)
{
 unsigned long last_byte = inode->i_size;
 last_byte -= page_nr << PAGE_SHIFT;
 if (last_byte > PAGE_SIZE)
  last_byte = PAGE_SIZE;
 return last_byte / QNX6_DIR_ENTRY_SIZE;
}
