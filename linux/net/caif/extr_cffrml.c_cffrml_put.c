
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cflayer {int dummy; } ;
struct cffrml {int * pcpu_refcnt; } ;


 struct cffrml* container_obj (struct cflayer*) ;
 int this_cpu_dec (int ) ;

void cffrml_put(struct cflayer *layr)
{
 struct cffrml *this = container_obj(layr);
 if (layr != ((void*)0) && this->pcpu_refcnt != ((void*)0))
  this_cpu_dec(*this->pcpu_refcnt);
}
