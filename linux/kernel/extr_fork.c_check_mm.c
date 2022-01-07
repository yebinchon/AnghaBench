
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * count; } ;
struct mm_struct {int pmd_huge_pte; TYPE_1__ rss_stat; } ;


 int ARRAY_SIZE (int *) ;
 int BUILD_BUG_ON_MSG (int,char*) ;
 int NR_MM_COUNTERS ;
 int VM_BUG_ON_MM (int ,struct mm_struct*) ;
 long atomic_long_read (int *) ;
 int mm_pgtables_bytes (struct mm_struct*) ;
 int pr_alert (char*,struct mm_struct*,...) ;
 int * resident_page_types ;
 scalar_t__ unlikely (long) ;

__attribute__((used)) static void check_mm(struct mm_struct *mm)
{
 int i;

 BUILD_BUG_ON_MSG(ARRAY_SIZE(resident_page_types) != NR_MM_COUNTERS,
    "Please make sure 'struct resident_page_types[]' is updated as well");

 for (i = 0; i < NR_MM_COUNTERS; i++) {
  long x = atomic_long_read(&mm->rss_stat.count[i]);

  if (unlikely(x))
   pr_alert("BUG: Bad rss-counter state mm:%p type:%s val:%ld\n",
     mm, resident_page_types[i], x);
 }

 if (mm_pgtables_bytes(mm))
  pr_alert("BUG: non-zero pgtables_bytes on freeing mm: %ld\n",
    mm_pgtables_bytes(mm));




}
