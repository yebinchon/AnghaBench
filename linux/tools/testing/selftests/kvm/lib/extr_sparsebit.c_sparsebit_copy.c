
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparsebit {int num_set; scalar_t__ root; } ;


 scalar_t__ node_copy_subtree (scalar_t__) ;
 int sparsebit_clear_all (struct sparsebit*) ;

void sparsebit_copy(struct sparsebit *d, struct sparsebit *s)
{

 sparsebit_clear_all(d);

 if (s->root) {
  d->root = node_copy_subtree(s->root);
  d->num_set = s->num_set;
 }
}
