
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_iterator {int buffer; } ;


 int kfree (struct gcov_iterator*) ;
 int vfree (int ) ;

void gcov_iter_free(struct gcov_iterator *iter)
{
 vfree(iter->buffer);
 kfree(iter);
}
