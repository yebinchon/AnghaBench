
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_pos; int * ki_filp; } ;
struct async_list {int io_start; int io_len; int * file; } ;
typedef int off_t ;


 int PAGE_MASK ;
 int PAGE_SIZE ;

__attribute__((used)) static inline bool io_should_merge(struct async_list *al, struct kiocb *kiocb)
{
 if (al->file == kiocb->ki_filp) {
  off_t start, end;
  start = al->io_start & PAGE_MASK;
  end = (al->io_start + al->io_len + PAGE_SIZE - 1) & PAGE_MASK;
  if (kiocb->ki_pos >= start && kiocb->ki_pos <= end)
   return 1;
 }

 al->file = ((void*)0);
 return 0;
}
