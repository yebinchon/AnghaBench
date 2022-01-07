
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct bpf_program {struct bpf_object const* obj; } const bpf_program ;
struct bpf_object {size_t nr_programs; struct bpf_program const* programs; } ;
typedef size_t ssize_t ;


 int pr_warning (char*) ;

__attribute__((used)) static struct bpf_program *
__bpf_program__iter(const struct bpf_program *p, const struct bpf_object *obj,
      bool forward)
{
 size_t nr_programs = obj->nr_programs;
 ssize_t idx;

 if (!nr_programs)
  return ((void*)0);

 if (!p)

  return forward ? &obj->programs[0] :
   &obj->programs[nr_programs - 1];

 if (p->obj != obj) {
  pr_warning("error: program handler doesn't match object\n");
  return ((void*)0);
 }

 idx = (p - obj->programs) + (forward ? 1 : -1);
 if (idx >= obj->nr_programs || idx < 0)
  return ((void*)0);
 return &obj->programs[idx];
}
