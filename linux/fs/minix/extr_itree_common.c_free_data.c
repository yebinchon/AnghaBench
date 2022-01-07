
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef scalar_t__ block_t ;


 unsigned long block_to_cpu (scalar_t__) ;
 int minix_free_block (struct inode*,unsigned long) ;

__attribute__((used)) static inline void free_data(struct inode *inode, block_t *p, block_t *q)
{
 unsigned long nr;

 for ( ; p < q ; p++) {
  nr = block_to_cpu(*p);
  if (nr) {
   *p = 0;
   minix_free_block(inode, nr);
  }
 }
}
