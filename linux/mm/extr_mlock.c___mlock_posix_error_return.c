
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long EAGAIN ;
 long EFAULT ;
 long ENOMEM ;

__attribute__((used)) static int __mlock_posix_error_return(long retval)
{
 if (retval == -EFAULT)
  retval = -ENOMEM;
 else if (retval == -ENOMEM)
  retval = -EAGAIN;
 return retval;
}
