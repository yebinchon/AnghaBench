
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {long long tv_sec; long long tv_nsec; } ;
struct radix_tree_root {int dummy; } ;


 int CLOCK_MONOTONIC ;
 long long NSEC_PER_SEC ;
 int clock_gettime (int ,struct timespec*) ;
 int item_insert (struct radix_tree_root*,unsigned long) ;
 int printv (int,char*,unsigned long,unsigned long,long long) ;

__attribute__((used)) static void benchmark_insert(struct radix_tree_root *root,
        unsigned long size, unsigned long step)
{
 struct timespec start, finish;
 unsigned long index;
 long long nsec;

 clock_gettime(CLOCK_MONOTONIC, &start);

 for (index = 0 ; index < size ; index += step)
  item_insert(root, index);

 clock_gettime(CLOCK_MONOTONIC, &finish);

 nsec = (finish.tv_sec - start.tv_sec) * NSEC_PER_SEC +
        (finish.tv_nsec - start.tv_nsec);

 printv(2, "Size: %8ld, step: %8ld, insertion: %15lld ns\n",
  size, step, nsec);
}
