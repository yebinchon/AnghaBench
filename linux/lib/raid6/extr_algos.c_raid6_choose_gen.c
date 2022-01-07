
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid6_calls {scalar_t__ prefer; int (* xor_syndrome ) (int const,int,int,int ,void**) ;int name; int (* gen_syndrome ) (int const,int ,void**) ;int (* valid ) () ;} ;


 int CONFIG_RAID6_PQ_BENCHMARK ;
 unsigned long HZ ;
 int IS_ENABLED (int ) ;
 int PAGE_SIZE ;
 int RAID6_TIME_JIFFIES_LG2 ;
 int cpu_relax () ;
 unsigned long jiffies ;
 int pr_err (char*) ;
 int pr_info (char*,unsigned long,...) ;
 int preempt_disable () ;
 int preempt_enable () ;
 struct raid6_calls** raid6_algos ;
 struct raid6_calls raid6_call ;
 int stub1 () ;
 int stub2 (int const,int ,void**) ;
 int stub3 (int const,int,int,int ,void**) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static inline const struct raid6_calls *raid6_choose_gen(
 void *(*const dptrs)[(65536/PAGE_SIZE)+2], const int disks)
{
 unsigned long perf, bestgenperf, bestxorperf, j0, j1;
 int start = (disks>>1)-1, stop = disks-3;
 const struct raid6_calls *const *algo;
 const struct raid6_calls *best;

 for (bestgenperf = 0, bestxorperf = 0, best = ((void*)0), algo = raid6_algos; *algo; algo++) {
  if (!best || (*algo)->prefer >= best->prefer) {
   if ((*algo)->valid && !(*algo)->valid())
    continue;

   if (!IS_ENABLED(CONFIG_RAID6_PQ_BENCHMARK)) {
    best = *algo;
    break;
   }

   perf = 0;

   preempt_disable();
   j0 = jiffies;
   while ((j1 = jiffies) == j0)
    cpu_relax();
   while (time_before(jiffies,
         j1 + (1<<RAID6_TIME_JIFFIES_LG2))) {
    (*algo)->gen_syndrome(disks, PAGE_SIZE, *dptrs);
    perf++;
   }
   preempt_enable();

   if (perf > bestgenperf) {
    bestgenperf = perf;
    best = *algo;
   }
   pr_info("raid6: %-8s gen() %5ld MB/s\n", (*algo)->name,
          (perf*HZ) >> (20-16+RAID6_TIME_JIFFIES_LG2));

   if (!(*algo)->xor_syndrome)
    continue;

   perf = 0;

   preempt_disable();
   j0 = jiffies;
   while ((j1 = jiffies) == j0)
    cpu_relax();
   while (time_before(jiffies,
         j1 + (1<<RAID6_TIME_JIFFIES_LG2))) {
    (*algo)->xor_syndrome(disks, start, stop,
            PAGE_SIZE, *dptrs);
    perf++;
   }
   preempt_enable();

   if (best == *algo)
    bestxorperf = perf;

   pr_info("raid6: %-8s xor() %5ld MB/s\n", (*algo)->name,
    (perf*HZ) >> (20-16+RAID6_TIME_JIFFIES_LG2+1));
  }
 }

 if (best) {
  pr_info("raid6: using algorithm %s gen() %ld MB/s\n",
         best->name,
         (bestgenperf*HZ) >> (20-16+RAID6_TIME_JIFFIES_LG2));
  if (best->xor_syndrome)
   pr_info("raid6: .... xor() %ld MB/s, rmw enabled\n",
          (bestxorperf*HZ) >> (20-16+RAID6_TIME_JIFFIES_LG2+1));
  raid6_call = *best;
 } else
  pr_err("raid6: Yikes!  No algorithm found!\n");

 return best;
}
