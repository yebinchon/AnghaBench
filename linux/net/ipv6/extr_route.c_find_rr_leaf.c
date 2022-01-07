
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fib6_result {scalar_t__ f6i; } ;
struct fib6_node {int dummy; } ;
struct fib6_info {int fib6_metric; } ;


 int __find_rr_leaf (struct fib6_info*,struct fib6_info*,int ,struct fib6_result*,struct fib6_info**,int,int,int*,int*) ;

__attribute__((used)) static void find_rr_leaf(struct fib6_node *fn, struct fib6_info *leaf,
    struct fib6_info *rr_head, int oif, int strict,
    bool *do_rr, struct fib6_result *res)
{
 u32 metric = rr_head->fib6_metric;
 struct fib6_info *cont = ((void*)0);
 int mpri = -1;

 __find_rr_leaf(rr_head, ((void*)0), metric, res, &cont,
         oif, strict, do_rr, &mpri);

 __find_rr_leaf(leaf, rr_head, metric, res, &cont,
         oif, strict, do_rr, &mpri);

 if (res->f6i || !cont)
  return;

 __find_rr_leaf(cont, ((void*)0), metric, res, ((void*)0),
         oif, strict, do_rr, &mpri);
}
