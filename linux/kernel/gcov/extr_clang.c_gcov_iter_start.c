
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_iterator {scalar_t__ pos; } ;



void gcov_iter_start(struct gcov_iterator *iter)
{
 iter->pos = 0;
}
