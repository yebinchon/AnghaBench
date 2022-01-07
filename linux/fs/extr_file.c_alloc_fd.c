
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int files; } ;


 int RLIMIT_NOFILE ;
 int __alloc_fd (int ,unsigned int,int ,unsigned int) ;
 TYPE_1__* current ;
 int rlimit (int ) ;

__attribute__((used)) static int alloc_fd(unsigned start, unsigned flags)
{
 return __alloc_fd(current->files, start, rlimit(RLIMIT_NOFILE), flags);
}
