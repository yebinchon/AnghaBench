
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {unsigned int i_dir_seq; } ;


 unsigned int cmpxchg (unsigned int*,unsigned int,unsigned int) ;
 int cpu_relax () ;

__attribute__((used)) static inline unsigned start_dir_add(struct inode *dir)
{

 for (;;) {
  unsigned n = dir->i_dir_seq;
  if (!(n & 1) && cmpxchg(&dir->i_dir_seq, n, n + 1) == n)
   return n;
  cpu_relax();
 }
}
