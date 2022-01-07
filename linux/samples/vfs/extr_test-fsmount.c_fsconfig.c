
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __NR_fsconfig ;
 int syscall (int ,int,unsigned int,char const*,void const*,int) ;

__attribute__((used)) static inline int fsconfig(int fsfd, unsigned int cmd,
      const char *key, const void *val, int aux)
{
 return syscall(__NR_fsconfig, fsfd, cmd, key, val, aux);
}
