
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef unsigned int loff_t ;
typedef int get_block_t ;


 unsigned int PAGE_MASK ;
 int block_write_begin (struct address_space*,unsigned int,unsigned int,unsigned int,struct page**,int *) ;
 int cont_expand_zero (struct file*,struct address_space*,unsigned int,unsigned int*) ;
 unsigned int i_blocksize (struct inode*) ;

int cont_write_begin(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned flags,
   struct page **pagep, void **fsdata,
   get_block_t *get_block, loff_t *bytes)
{
 struct inode *inode = mapping->host;
 unsigned int blocksize = i_blocksize(inode);
 unsigned int zerofrom;
 int err;

 err = cont_expand_zero(file, mapping, pos, bytes);
 if (err)
  return err;

 zerofrom = *bytes & ~PAGE_MASK;
 if (pos+len > *bytes && zerofrom & (blocksize-1)) {
  *bytes |= (blocksize-1);
  (*bytes)++;
 }

 return block_write_begin(mapping, pos, len, flags, pagep, get_block);
}
