
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_output_handle {TYPE_1__* rb; int event; } ;
struct TYPE_2__ {void* aux_priv; } ;



void *perf_get_aux(struct perf_output_handle *handle)
{

 if (!handle->event)
  return ((void*)0);

 return handle->rb->aux_priv;
}
