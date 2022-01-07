
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint_func {scalar_t__ func; int prio; scalar_t__ data; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 struct tracepoint_func* ERR_PTR (int ) ;
 scalar_t__ WARN_ON (int) ;
 struct tracepoint_func* allocate_probes (int) ;
 int debug_print_probes (struct tracepoint_func*) ;
 int memcpy (struct tracepoint_func*,struct tracepoint_func*,int) ;

__attribute__((used)) static struct tracepoint_func *
func_add(struct tracepoint_func **funcs, struct tracepoint_func *tp_func,
  int prio)
{
 struct tracepoint_func *old, *new;
 int nr_probes = 0;
 int pos = -1;

 if (WARN_ON(!tp_func->func))
  return ERR_PTR(-EINVAL);

 debug_print_probes(*funcs);
 old = *funcs;
 if (old) {

  for (nr_probes = 0; old[nr_probes].func; nr_probes++) {

   if (pos < 0 && old[nr_probes].prio < prio)
    pos = nr_probes;
   if (old[nr_probes].func == tp_func->func &&
       old[nr_probes].data == tp_func->data)
    return ERR_PTR(-EEXIST);
  }
 }

 new = allocate_probes(nr_probes + 2);
 if (new == ((void*)0))
  return ERR_PTR(-ENOMEM);
 if (old) {
  if (pos < 0) {
   pos = nr_probes;
   memcpy(new, old, nr_probes * sizeof(struct tracepoint_func));
  } else {

   memcpy(new, old, pos * sizeof(struct tracepoint_func));

   memcpy(new + pos + 1, old + pos,
          (nr_probes - pos) * sizeof(struct tracepoint_func));
  }
 } else
  pos = 0;
 new[pos] = *tp_func;
 new[nr_probes + 1].func = ((void*)0);
 *funcs = new;
 debug_print_probes(*funcs);
 return old;
}
