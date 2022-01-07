
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {int dummy; } ;


 int PGROTATED ;
 int __count_vm_events (int ,int) ;
 int pagevec_lru_move_fn (struct pagevec*,int ,int*) ;
 int pagevec_move_tail_fn ;

__attribute__((used)) static void pagevec_move_tail(struct pagevec *pvec)
{
 int pgmoved = 0;

 pagevec_lru_move_fn(pvec, pagevec_move_tail_fn, &pgmoved);
 __count_vm_events(PGROTATED, pgmoved);
}
