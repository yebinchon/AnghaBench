
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crush_work {int * work; } ;
struct crush_map {int max_devices; int max_buckets; unsigned int choose_total_tries; int * choose_tries; struct crush_bucket** buckets; } ;
struct crush_choose_arg {int dummy; } ;
struct crush_bucket {int id; scalar_t__ alg; int size; int type; } ;
typedef int __u32 ;


 scalar_t__ CRUSH_BUCKET_UNIFORM ;
 int CRUSH_ITEM_NONE ;
 int CRUSH_ITEM_UNDEF ;
 int crush_bucket_choose (struct crush_bucket const*,int ,int,int,struct crush_choose_arg const*,int) ;
 int dprintk (char*,...) ;
 scalar_t__ is_out (struct crush_map const*,int const*,int,int,int) ;

__attribute__((used)) static void crush_choose_indep(const struct crush_map *map,
          struct crush_work *work,
          const struct crush_bucket *bucket,
          const __u32 *weight, int weight_max,
          int x, int left, int numrep, int type,
          int *out, int outpos,
          unsigned int tries,
          unsigned int recurse_tries,
          int recurse_to_leaf,
          int *out2,
          int parent_r,
          const struct crush_choose_arg *choose_args)
{
 const struct crush_bucket *in = bucket;
 int endpos = outpos + left;
 int rep;
 unsigned int ftotal;
 int r;
 int i;
 int item = 0;
 int itemtype;
 int collide;

 dprintk("CHOOSE%s INDEP bucket %d x %d outpos %d numrep %d\n", recurse_to_leaf ? "_LEAF" : "",
  bucket->id, x, outpos, numrep);


 for (rep = outpos; rep < endpos; rep++) {
  out[rep] = CRUSH_ITEM_UNDEF;
  if (out2)
   out2[rep] = CRUSH_ITEM_UNDEF;
 }

 for (ftotal = 0; left > 0 && ftotal < tries; ftotal++) {
  for (rep = outpos; rep < endpos; rep++) {
   if (out[rep] != CRUSH_ITEM_UNDEF)
    continue;

   in = bucket;


   for (;;) {
    r = rep + parent_r;


    if (in->alg == CRUSH_BUCKET_UNIFORM &&
        in->size % numrep == 0)

     r += (numrep+1) * ftotal;
    else

     r += numrep * ftotal;


    if (in->size == 0) {
     dprintk("   empty bucket\n");
     break;
    }

    item = crush_bucket_choose(
     in, work->work[-1-in->id],
     x, r,
     (choose_args ?
      &choose_args[-1-in->id] : ((void*)0)),
     outpos);
    if (item >= map->max_devices) {
     dprintk("   bad item %d\n", item);
     out[rep] = CRUSH_ITEM_NONE;
     if (out2)
      out2[rep] = CRUSH_ITEM_NONE;
     left--;
     break;
    }


    if (item < 0)
     itemtype = map->buckets[-1-item]->type;
    else
     itemtype = 0;
    dprintk("  item %d type %d\n", item, itemtype);


    if (itemtype != type) {
     if (item >= 0 ||
         (-1-item) >= map->max_buckets) {
      dprintk("   bad item type %d\n", type);
      out[rep] = CRUSH_ITEM_NONE;
      if (out2)
       out2[rep] =
        CRUSH_ITEM_NONE;
      left--;
      break;
     }
     in = map->buckets[-1-item];
     continue;
    }


    collide = 0;
    for (i = outpos; i < endpos; i++) {
     if (out[i] == item) {
      collide = 1;
      break;
     }
    }
    if (collide)
     break;

    if (recurse_to_leaf) {
     if (item < 0) {
      crush_choose_indep(
       map,
       work,
       map->buckets[-1-item],
       weight, weight_max,
       x, 1, numrep, 0,
       out2, rep,
       recurse_tries, 0,
       0, ((void*)0), r,
       choose_args);
      if (out2[rep] == CRUSH_ITEM_NONE) {

       break;
      }
     } else {

      out2[rep] = item;
     }
    }


    if (itemtype == 0 &&
        is_out(map, weight, weight_max, item, x))
     break;


    out[rep] = item;
    left--;
    break;
   }
  }
 }
 for (rep = outpos; rep < endpos; rep++) {
  if (out[rep] == CRUSH_ITEM_UNDEF) {
   out[rep] = CRUSH_ITEM_NONE;
  }
  if (out2 && out2[rep] == CRUSH_ITEM_UNDEF) {
   out2[rep] = CRUSH_ITEM_NONE;
  }
 }

 if (map->choose_tries && ftotal <= map->choose_total_tries)
  map->choose_tries[ftotal]++;
}
