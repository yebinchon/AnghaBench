
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_cpus; } ;


 int * calloc (int,int) ;
 int err (int,char*) ;
 int * outp ;
 int * output_buffer ;
 TYPE_1__ topo ;

void allocate_output_buffer()
{
 output_buffer = calloc(1, (1 + topo.num_cpus) * 2048);
 outp = output_buffer;
 if (outp == ((void*)0))
  err(-1, "calloc output buffer");
}
