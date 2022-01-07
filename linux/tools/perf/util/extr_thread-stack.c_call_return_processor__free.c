
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct call_return_processor {int cpr; } ;


 int call_path_root__free (int ) ;
 int free (struct call_return_processor*) ;

void call_return_processor__free(struct call_return_processor *crp)
{
 if (crp) {
  call_path_root__free(crp->cpr);
  free(crp);
 }
}
