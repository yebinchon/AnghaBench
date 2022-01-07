
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int files; } ;


 int RLIMIT_NOFILE ;
 int __alloc_fd (int ,int ,int ,unsigned int) ;
 TYPE_1__* current ;
 int rlimit (int ) ;

int get_unused_fd_flags(unsigned flags)
{
 return __alloc_fd(current->files, 0, rlimit(RLIMIT_NOFILE), flags);
}
