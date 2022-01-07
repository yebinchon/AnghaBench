
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int finish; } ;


 int finish ;
 int printf (char*,int) ;
 TYPE_1__* submitters ;

__attribute__((used)) static void sig_int(int sig)
{
 printf("Exiting on signal %d\n", sig);
 submitters[0].finish = 1;
 finish = 1;
}
