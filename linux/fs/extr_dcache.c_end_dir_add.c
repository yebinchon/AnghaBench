
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_dir_seq; } ;


 int smp_store_release (int *,unsigned int) ;

__attribute__((used)) static inline void end_dir_add(struct inode *dir, unsigned n)
{
 smp_store_release(&dir->i_dir_seq, n + 2);
}
