
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAP_SYS_BOOT ;
 int EINVAL ;
 int EPERM ;
 unsigned long KEXEC_ARCH_MASK ;
 unsigned long KEXEC_FLAGS ;
 unsigned long KEXEC_SEGMENT_MAX ;
 int LOADING_KEXEC_IMAGE ;
 int LOCKDOWN_KEXEC ;
 int capable (int ) ;
 scalar_t__ kexec_load_disabled ;
 int security_kernel_load_data (int ) ;
 int security_locked_down (int ) ;

__attribute__((used)) static inline int kexec_load_check(unsigned long nr_segments,
       unsigned long flags)
{
 int result;


 if (!capable(CAP_SYS_BOOT) || kexec_load_disabled)
  return -EPERM;


 result = security_kernel_load_data(LOADING_KEXEC_IMAGE);
 if (result < 0)
  return result;





 result = security_locked_down(LOCKDOWN_KEXEC);
 if (result)
  return result;





 if ((flags & KEXEC_FLAGS) != (flags & ~KEXEC_ARCH_MASK))
  return -EINVAL;




 if (nr_segments > KEXEC_SEGMENT_MAX)
  return -EINVAL;

 return 0;
}
