
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crush_work_bucket {int dummy; } ;
struct crush_choose_arg {int dummy; } ;
struct crush_bucket_uniform {int dummy; } ;
struct crush_bucket_tree {int dummy; } ;
struct crush_bucket_straw2 {int dummy; } ;
struct crush_bucket_straw {int dummy; } ;
struct crush_bucket_list {int dummy; } ;
struct crush_bucket {scalar_t__ size; int alg; int* items; int id; } ;


 int BUG_ON (int) ;





 int bucket_list_choose (struct crush_bucket_list const*,int,int) ;
 int bucket_straw2_choose (struct crush_bucket_straw2 const*,int,int,struct crush_choose_arg const*,int) ;
 int bucket_straw_choose (struct crush_bucket_straw const*,int,int) ;
 int bucket_tree_choose (struct crush_bucket_tree const*,int,int) ;
 int bucket_uniform_choose (struct crush_bucket_uniform const*,struct crush_work_bucket*,int,int) ;
 int dprintk (char*,int ,int,...) ;

__attribute__((used)) static int crush_bucket_choose(const struct crush_bucket *in,
          struct crush_work_bucket *work,
          int x, int r,
          const struct crush_choose_arg *arg,
          int position)
{
 dprintk(" crush_bucket_choose %d x=%d r=%d\n", in->id, x, r);
 BUG_ON(in->size == 0);
 switch (in->alg) {
 case 128:
  return bucket_uniform_choose(
   (const struct crush_bucket_uniform *)in,
   work, x, r);
 case 132:
  return bucket_list_choose((const struct crush_bucket_list *)in,
       x, r);
 case 129:
  return bucket_tree_choose((const struct crush_bucket_tree *)in,
       x, r);
 case 131:
  return bucket_straw_choose(
   (const struct crush_bucket_straw *)in,
   x, r);
 case 130:
  return bucket_straw2_choose(
   (const struct crush_bucket_straw2 *)in,
   x, r, arg, position);
 default:
  dprintk("unknown bucket %d alg %d\n", in->id, in->alg);
  return in->items[0];
 }
}
