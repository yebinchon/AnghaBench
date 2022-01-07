
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint_path {int system; int name; struct tracepoint_path* next; } ;


 int free (struct tracepoint_path*) ;
 int zfree (int *) ;

__attribute__((used)) static void
put_tracepoints_path(struct tracepoint_path *tps)
{
 while (tps) {
  struct tracepoint_path *t = tps;

  tps = tps->next;
  zfree(&t->name);
  zfree(&t->system);
  free(t);
 }
}
