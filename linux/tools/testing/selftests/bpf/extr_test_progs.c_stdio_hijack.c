
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* stdout; int log_cnt; int log_buf; scalar_t__ verbose; void* stderr; } ;


 TYPE_1__ env ;
 int fflush (void*) ;
 void* open_memstream (int *,int *) ;
 int perror (char*) ;
 void* stderr ;
 void* stdout ;

__attribute__((used)) static void stdio_hijack(void)
{
}
