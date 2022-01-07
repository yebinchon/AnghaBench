
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {struct bpf_object* obj; int section_name; int * caps; } ;
struct bpf_object {int nr_programs; struct bpf_program* programs; int caps; } ;
typedef int progs ;


 int ENOMEM ;
 int bpf_program__exit (struct bpf_program*) ;
 int bpf_program__init (void*,size_t,char*,int,struct bpf_program*) ;
 int pr_debug (char*,int ) ;
 int pr_warning (char*,char*) ;
 struct bpf_program* reallocarray (struct bpf_program*,int,int) ;

__attribute__((used)) static int
bpf_object__add_program(struct bpf_object *obj, void *data, size_t size,
   char *section_name, int idx)
{
 struct bpf_program prog, *progs;
 int nr_progs, err;

 err = bpf_program__init(data, size, section_name, idx, &prog);
 if (err)
  return err;

 prog.caps = &obj->caps;
 progs = obj->programs;
 nr_progs = obj->nr_programs;

 progs = reallocarray(progs, nr_progs + 1, sizeof(progs[0]));
 if (!progs) {





  pr_warning("failed to alloc a new program under section '%s'\n",
      section_name);
  bpf_program__exit(&prog);
  return -ENOMEM;
 }

 pr_debug("found program %s\n", prog.section_name);
 obj->programs = progs;
 obj->nr_programs = nr_progs + 1;
 prog.obj = obj;
 progs[nr_progs] = prog;
 return 0;
}
