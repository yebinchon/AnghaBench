
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cflayer {int dummy; } ;
struct cffrml {int pcpu_refcnt; } ;


 struct cffrml* container_obj (struct cflayer*) ;
 int free_percpu (int ) ;
 int kfree (struct cflayer*) ;

void cffrml_free(struct cflayer *layer)
{
 struct cffrml *this = container_obj(layer);
 free_percpu(this->pcpu_refcnt);
 kfree(layer);
}
