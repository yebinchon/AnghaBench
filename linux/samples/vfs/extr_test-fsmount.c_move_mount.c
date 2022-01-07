
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __NR_move_mount ;
 int syscall (int ,int,char const*,int,char const*,unsigned int) ;

__attribute__((used)) static inline int move_mount(int from_dfd, const char *from_pathname,
        int to_dfd, const char *to_pathname,
        unsigned int flags)
{
 return syscall(__NR_move_mount,
         from_dfd, from_pathname,
         to_dfd, to_pathname, flags);
}
