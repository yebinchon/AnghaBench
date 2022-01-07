
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_sq_ring {unsigned int* tail; unsigned int* head; unsigned int* array; } ;
struct submitter {struct io_sq_ring sq_ring; } ;


 int init_io (struct submitter*,unsigned int) ;
 int read_barrier () ;
 unsigned int sq_ring_mask ;
 int write_barrier () ;

__attribute__((used)) static int prep_more_ios(struct submitter *s, unsigned max_ios)
{
 struct io_sq_ring *ring = &s->sq_ring;
 unsigned index, tail, next_tail, prepped = 0;

 next_tail = tail = *ring->tail;
 do {
  next_tail++;
  read_barrier();
  if (next_tail == *ring->head)
   break;

  index = tail & sq_ring_mask;
  init_io(s, index);
  ring->array[index] = index;
  prepped++;
  tail = next_tail;
 } while (prepped < max_ios);

 if (*ring->tail != tail) {

  write_barrier();
  *ring->tail = tail;
  write_barrier();
 }
 return prepped;
}
