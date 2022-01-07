
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {int dummy; } ;


 int __pagevec_lru_add_fn ;
 int pagevec_lru_move_fn (struct pagevec*,int ,int *) ;

void __pagevec_lru_add(struct pagevec *pvec)
{
 pagevec_lru_move_fn(pvec, __pagevec_lru_add_fn, ((void*)0));
}
