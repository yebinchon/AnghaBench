
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int depth; } ;
struct sbitmap_queue {unsigned int min_shallow_depth; int round_robin; int * alloc_hint; TYPE_1__ sb; } ;


 unsigned int READ_ONCE (int ) ;
 int WARN_ON_ONCE (int) ;
 unsigned int prandom_u32 () ;
 int sbitmap_get_shallow (TYPE_1__*,unsigned int,unsigned int) ;
 unsigned int this_cpu_read (int ) ;
 int this_cpu_write (int ,unsigned int) ;
 scalar_t__ unlikely (int) ;

int __sbitmap_queue_get_shallow(struct sbitmap_queue *sbq,
    unsigned int shallow_depth)
{
 unsigned int hint, depth;
 int nr;

 WARN_ON_ONCE(shallow_depth < sbq->min_shallow_depth);

 hint = this_cpu_read(*sbq->alloc_hint);
 depth = READ_ONCE(sbq->sb.depth);
 if (unlikely(hint >= depth)) {
  hint = depth ? prandom_u32() % depth : 0;
  this_cpu_write(*sbq->alloc_hint, hint);
 }
 nr = sbitmap_get_shallow(&sbq->sb, hint, shallow_depth);

 if (nr == -1) {

  this_cpu_write(*sbq->alloc_hint, 0);
 } else if (nr == hint || unlikely(sbq->round_robin)) {

  hint = nr + 1;
  if (hint >= depth - 1)
   hint = 0;
  this_cpu_write(*sbq->alloc_hint, hint);
 }

 return nr;
}
