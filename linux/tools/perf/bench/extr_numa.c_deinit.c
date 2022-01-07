
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bytes_global; } ;
struct TYPE_5__ {struct TYPE_5__* data; TYPE_1__ p; } ;


 int deinit_thread_data () ;
 int free_data (TYPE_2__*,int) ;
 TYPE_2__* g ;

__attribute__((used)) static void deinit(void)
{
 free_data(g->data, g->p.bytes_global);
 g->data = ((void*)0);

 deinit_thread_data();

 free_data(g, sizeof(*g));
 g = ((void*)0);
}
