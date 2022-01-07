
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;


 int EINVAL ;
 unsigned int MAX_HASHTABLE_BITS ;
 unsigned int fls (unsigned long) ;
 int kstrtoul (char const*,int ,unsigned long*) ;

__attribute__((used)) static int param_set_hashtbl_sz(const char *val, const struct kernel_param *kp)
{
 unsigned long num;
 unsigned int nbits;
 int ret;

 if (!val)
  goto out_inval;
 ret = kstrtoul(val, 0, &num);
 if (ret)
  goto out_inval;
 nbits = fls(num - 1);
 if (nbits > MAX_HASHTABLE_BITS || nbits < 2)
  goto out_inval;
 *(unsigned int *)kp->arg = nbits;
 return 0;
out_inval:
 return -EINVAL;
}
