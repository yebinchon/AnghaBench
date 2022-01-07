
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nesting; } ;


 int barrier () ;
 int this_cpu_dec (int ) ;
 TYPE_1__* trace_percpu_buffer ;

__attribute__((used)) static void put_trace_buf(void)
{

 barrier();
 this_cpu_dec(trace_percpu_buffer->nesting);
}
