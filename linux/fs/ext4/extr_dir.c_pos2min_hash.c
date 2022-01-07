
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_mode; } ;
typedef int loff_t ;
typedef int __u32 ;


 int FMODE_32BITHASH ;
 int FMODE_64BITHASH ;
 scalar_t__ is_32bit_api () ;

__attribute__((used)) static inline __u32 pos2min_hash(struct file *filp, loff_t pos)
{
 if ((filp->f_mode & FMODE_32BITHASH) ||
     (!(filp->f_mode & FMODE_64BITHASH) && is_32bit_api()))
  return 0;
 else
  return pos & 0xffffffff;
}
