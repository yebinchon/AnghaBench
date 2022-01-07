
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_vectors {int ncpus; } ;



__attribute__((used)) static int ncpus_cmp_func(const void *l, const void *r)
{
 const struct node_vectors *ln = l;
 const struct node_vectors *rn = r;

 return ln->ncpus - rn->ncpus;
}
