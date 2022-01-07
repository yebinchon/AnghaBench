
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct partition_group {int start; int length; } ;
typedef int ranctx ;


 scalar_t__ DECL_BIT_FIELD_TYPE (int ) ;
 int partition_struct (int *,unsigned long,struct partition_group*,unsigned long*) ;
 unsigned long ranval (int *) ;

__attribute__((used)) static void performance_shuffle(tree *newtree, unsigned long length, ranctx *prng_state)
{
 unsigned long i, x;
 struct partition_group size_group[length];
 unsigned long num_groups = 0;
 unsigned long randnum;

 partition_struct(newtree, length, (struct partition_group *)&size_group, &num_groups);
 for (i = num_groups - 1; i > 0; i--) {
  struct partition_group tmp;
  randnum = ranval(prng_state) % (i + 1);
  tmp = size_group[i];
  size_group[i] = size_group[randnum];
  size_group[randnum] = tmp;
 }

 for (x = 0; x < num_groups; x++) {
  for (i = size_group[x].start + size_group[x].length - 1; i > size_group[x].start; i--) {
   tree tmp;
   if (DECL_BIT_FIELD_TYPE(newtree[i]))
    continue;
   randnum = ranval(prng_state) % (i + 1);

   if (DECL_BIT_FIELD_TYPE(newtree[randnum]))
    continue;
   tmp = newtree[i];
   newtree[i] = newtree[randnum];
   newtree[randnum] = tmp;
  }
 }
}
