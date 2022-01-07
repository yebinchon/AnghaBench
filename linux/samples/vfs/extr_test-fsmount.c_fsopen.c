
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __NR_fsopen ;
 int syscall (int ,char const*,unsigned int) ;

__attribute__((used)) static inline int fsopen(const char *fs_name, unsigned int flags)
{
 return syscall(__NR_fsopen, fs_name, flags);
}
