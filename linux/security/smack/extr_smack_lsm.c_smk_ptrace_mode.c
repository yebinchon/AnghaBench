
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAY_READ ;
 unsigned int MAY_READWRITE ;
 unsigned int PTRACE_MODE_ATTACH ;
 unsigned int PTRACE_MODE_READ ;

__attribute__((used)) static inline unsigned int smk_ptrace_mode(unsigned int mode)
{
 if (mode & PTRACE_MODE_ATTACH)
  return MAY_READWRITE;
 if (mode & PTRACE_MODE_READ)
  return MAY_READ;

 return 0;
}
