
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo {unsigned long bufferram; unsigned long totalram; unsigned long freeram; unsigned long totalhigh; unsigned long freehigh; unsigned long totalswap; unsigned long freeswap; unsigned long sharedram; } ;
struct seq_file {int dummy; } ;


 unsigned long HPAGE_PMD_NR ;
 size_t LRU_ACTIVE_ANON ;
 size_t LRU_ACTIVE_FILE ;
 int LRU_BASE ;
 size_t LRU_INACTIVE_ANON ;
 size_t LRU_INACTIVE_FILE ;
 size_t LRU_UNEVICTABLE ;
 scalar_t__ NR_ANON_MAPPED ;
 scalar_t__ NR_ANON_THPS ;
 int NR_BOUNCE ;
 scalar_t__ NR_FILE_DIRTY ;
 scalar_t__ NR_FILE_MAPPED ;
 scalar_t__ NR_FILE_PAGES ;
 scalar_t__ NR_FILE_PMDMAPPED ;
 scalar_t__ NR_FILE_THPS ;
 int NR_FREE_CMA_PAGES ;
 scalar_t__ NR_KERNEL_MISC_RECLAIMABLE ;
 int NR_KERNEL_STACK_KB ;
 scalar_t__ NR_LRU_BASE ;
 int NR_LRU_LISTS ;
 int NR_MLOCK ;
 int NR_PAGETABLE ;
 scalar_t__ NR_SHMEM_PMDMAPPED ;
 scalar_t__ NR_SHMEM_THPS ;
 scalar_t__ NR_SLAB_RECLAIMABLE ;
 scalar_t__ NR_SLAB_UNRECLAIMABLE ;
 scalar_t__ NR_UNSTABLE_NFS ;
 scalar_t__ NR_WRITEBACK ;
 scalar_t__ NR_WRITEBACK_TEMP ;
 int PAGE_SHIFT ;
 scalar_t__ VMALLOC_TOTAL ;
 int arch_report_meminfo (struct seq_file*) ;
 int atomic_long_read (int *) ;
 unsigned long global_node_page_state (scalar_t__) ;
 unsigned long global_zone_page_state (int ) ;
 int hugetlb_report_meminfo (struct seq_file*) ;
 int mmap_pages_allocated ;
 int num_poisoned_pages ;
 unsigned long pcpu_nr_pages () ;
 unsigned long percpu_counter_read_positive (int *) ;
 int seq_printf (struct seq_file*,char*,int) ;
 int show_val_kb (struct seq_file*,char*,unsigned long) ;
 long si_mem_available () ;
 int si_meminfo (struct sysinfo*) ;
 int si_swapinfo (struct sysinfo*) ;
 unsigned long total_swapcache_pages () ;
 unsigned long totalcma_pages ;
 unsigned long vm_commit_limit () ;
 int vm_committed_as ;
 unsigned long vmalloc_nr_pages () ;

__attribute__((used)) static int meminfo_proc_show(struct seq_file *m, void *v)
{
 struct sysinfo i;
 unsigned long committed;
 long cached;
 long available;
 unsigned long pages[NR_LRU_LISTS];
 unsigned long sreclaimable, sunreclaim;
 int lru;

 si_meminfo(&i);
 si_swapinfo(&i);
 committed = percpu_counter_read_positive(&vm_committed_as);

 cached = global_node_page_state(NR_FILE_PAGES) -
   total_swapcache_pages() - i.bufferram;
 if (cached < 0)
  cached = 0;

 for (lru = LRU_BASE; lru < NR_LRU_LISTS; lru++)
  pages[lru] = global_node_page_state(NR_LRU_BASE + lru);

 available = si_mem_available();
 sreclaimable = global_node_page_state(NR_SLAB_RECLAIMABLE);
 sunreclaim = global_node_page_state(NR_SLAB_UNRECLAIMABLE);

 show_val_kb(m, "MemTotal:       ", i.totalram);
 show_val_kb(m, "MemFree:        ", i.freeram);
 show_val_kb(m, "MemAvailable:   ", available);
 show_val_kb(m, "Buffers:        ", i.bufferram);
 show_val_kb(m, "Cached:         ", cached);
 show_val_kb(m, "SwapCached:     ", total_swapcache_pages());
 show_val_kb(m, "Active:         ", pages[LRU_ACTIVE_ANON] +
        pages[LRU_ACTIVE_FILE]);
 show_val_kb(m, "Inactive:       ", pages[LRU_INACTIVE_ANON] +
        pages[LRU_INACTIVE_FILE]);
 show_val_kb(m, "Active(anon):   ", pages[LRU_ACTIVE_ANON]);
 show_val_kb(m, "Inactive(anon): ", pages[LRU_INACTIVE_ANON]);
 show_val_kb(m, "Active(file):   ", pages[LRU_ACTIVE_FILE]);
 show_val_kb(m, "Inactive(file): ", pages[LRU_INACTIVE_FILE]);
 show_val_kb(m, "Unevictable:    ", pages[LRU_UNEVICTABLE]);
 show_val_kb(m, "Mlocked:        ", global_zone_page_state(NR_MLOCK));
 show_val_kb(m, "MmapCopy:       ",
      (unsigned long)atomic_long_read(&mmap_pages_allocated));


 show_val_kb(m, "SwapTotal:      ", i.totalswap);
 show_val_kb(m, "SwapFree:       ", i.freeswap);
 show_val_kb(m, "Dirty:          ",
      global_node_page_state(NR_FILE_DIRTY));
 show_val_kb(m, "Writeback:      ",
      global_node_page_state(NR_WRITEBACK));
 show_val_kb(m, "AnonPages:      ",
      global_node_page_state(NR_ANON_MAPPED));
 show_val_kb(m, "Mapped:         ",
      global_node_page_state(NR_FILE_MAPPED));
 show_val_kb(m, "Shmem:          ", i.sharedram);
 show_val_kb(m, "KReclaimable:   ", sreclaimable +
      global_node_page_state(NR_KERNEL_MISC_RECLAIMABLE));
 show_val_kb(m, "Slab:           ", sreclaimable + sunreclaim);
 show_val_kb(m, "SReclaimable:   ", sreclaimable);
 show_val_kb(m, "SUnreclaim:     ", sunreclaim);
 seq_printf(m, "KernelStack:    %8lu kB\n",
     global_zone_page_state(NR_KERNEL_STACK_KB));
 show_val_kb(m, "PageTables:     ",
      global_zone_page_state(NR_PAGETABLE));

 show_val_kb(m, "NFS_Unstable:   ",
      global_node_page_state(NR_UNSTABLE_NFS));
 show_val_kb(m, "Bounce:         ",
      global_zone_page_state(NR_BOUNCE));
 show_val_kb(m, "WritebackTmp:   ",
      global_node_page_state(NR_WRITEBACK_TEMP));
 show_val_kb(m, "CommitLimit:    ", vm_commit_limit());
 show_val_kb(m, "Committed_AS:   ", committed);
 seq_printf(m, "VmallocTotal:   %8lu kB\n",
     (unsigned long)VMALLOC_TOTAL >> 10);
 show_val_kb(m, "VmallocUsed:    ", vmalloc_nr_pages());
 show_val_kb(m, "VmallocChunk:   ", 0ul);
 show_val_kb(m, "Percpu:         ", pcpu_nr_pages());
 hugetlb_report_meminfo(m);

 arch_report_meminfo(m);

 return 0;
}
