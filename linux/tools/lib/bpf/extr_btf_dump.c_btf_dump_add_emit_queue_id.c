
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_dump {int emit_queue_cnt; int emit_queue_cap; int * emit_queue; } ;
typedef int new_queue ;
typedef int __u32 ;


 int ENOMEM ;
 size_t max (int,int) ;
 int * realloc (int *,size_t) ;

__attribute__((used)) static int btf_dump_add_emit_queue_id(struct btf_dump *d, __u32 id)
{
 __u32 *new_queue;
 size_t new_cap;

 if (d->emit_queue_cnt >= d->emit_queue_cap) {
  new_cap = max(16, d->emit_queue_cap * 3 / 2);
  new_queue = realloc(d->emit_queue,
        new_cap * sizeof(new_queue[0]));
  if (!new_queue)
   return -ENOMEM;
  d->emit_queue = new_queue;
  d->emit_queue_cap = new_cap;
 }

 d->emit_queue[d->emit_queue_cnt++] = id;
 return 0;
}
