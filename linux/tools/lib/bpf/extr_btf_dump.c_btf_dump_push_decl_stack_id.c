
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_dump {int decl_stack_cnt; int decl_stack_cap; int * decl_stack; } ;
typedef int new_stack ;
typedef int __u32 ;


 int ENOMEM ;
 size_t max (int,int) ;
 int * realloc (int *,size_t) ;

__attribute__((used)) static int btf_dump_push_decl_stack_id(struct btf_dump *d, __u32 id)
{
 __u32 *new_stack;
 size_t new_cap;

 if (d->decl_stack_cnt >= d->decl_stack_cap) {
  new_cap = max(16, d->decl_stack_cap * 3 / 2);
  new_stack = realloc(d->decl_stack,
        new_cap * sizeof(new_stack[0]));
  if (!new_stack)
   return -ENOMEM;
  d->decl_stack = new_stack;
  d->decl_stack_cap = new_cap;
 }

 d->decl_stack[d->decl_stack_cnt++] = id;

 return 0;
}
