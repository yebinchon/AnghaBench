#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sysinfo {unsigned long bufferram; unsigned long totalram; unsigned long freeram; unsigned long totalhigh; unsigned long freehigh; unsigned long totalswap; unsigned long freeswap; unsigned long sharedram; } ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 unsigned long HPAGE_PMD_NR ; 
 size_t LRU_ACTIVE_ANON ; 
 size_t LRU_ACTIVE_FILE ; 
 int LRU_BASE ; 
 size_t LRU_INACTIVE_ANON ; 
 size_t LRU_INACTIVE_FILE ; 
 size_t LRU_UNEVICTABLE ; 
 scalar_t__ NR_ANON_MAPPED ; 
 scalar_t__ NR_ANON_THPS ; 
 int /*<<< orphan*/  NR_BOUNCE ; 
 scalar_t__ NR_FILE_DIRTY ; 
 scalar_t__ NR_FILE_MAPPED ; 
 scalar_t__ NR_FILE_PAGES ; 
 scalar_t__ NR_FILE_PMDMAPPED ; 
 scalar_t__ NR_FILE_THPS ; 
 int /*<<< orphan*/  NR_FREE_CMA_PAGES ; 
 scalar_t__ NR_KERNEL_MISC_RECLAIMABLE ; 
 int /*<<< orphan*/  NR_KERNEL_STACK_KB ; 
 scalar_t__ NR_LRU_BASE ; 
 int NR_LRU_LISTS ; 
 int /*<<< orphan*/  NR_MLOCK ; 
 int /*<<< orphan*/  NR_PAGETABLE ; 
 scalar_t__ NR_SHMEM_PMDMAPPED ; 
 scalar_t__ NR_SHMEM_THPS ; 
 scalar_t__ NR_SLAB_RECLAIMABLE ; 
 scalar_t__ NR_SLAB_UNRECLAIMABLE ; 
 scalar_t__ NR_UNSTABLE_NFS ; 
 scalar_t__ NR_WRITEBACK ; 
 scalar_t__ NR_WRITEBACK_TEMP ; 
 int PAGE_SHIFT ; 
 scalar_t__ VMALLOC_TOTAL ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*) ; 
 int /*<<< orphan*/  mmap_pages_allocated ; 
 int /*<<< orphan*/  num_poisoned_pages ; 
 unsigned long FUNC5 () ; 
 unsigned long FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,char*,unsigned long) ; 
 long FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct sysinfo*) ; 
 int /*<<< orphan*/  FUNC11 (struct sysinfo*) ; 
 unsigned long FUNC12 () ; 
 unsigned long totalcma_pages ; 
 unsigned long FUNC13 () ; 
 int /*<<< orphan*/  vm_committed_as ; 
 unsigned long FUNC14 () ; 

__attribute__((used)) static int FUNC15(struct seq_file *m, void *v)
{
	struct sysinfo i;
	unsigned long committed;
	long cached;
	long available;
	unsigned long pages[NR_LRU_LISTS];
	unsigned long sreclaimable, sunreclaim;
	int lru;

	FUNC10(&i);
	FUNC11(&i);
	committed = FUNC6(&vm_committed_as);

	cached = FUNC2(NR_FILE_PAGES) -
			FUNC12() - i.bufferram;
	if (cached < 0)
		cached = 0;

	for (lru = LRU_BASE; lru < NR_LRU_LISTS; lru++)
		pages[lru] = FUNC2(NR_LRU_BASE + lru);

	available = FUNC9();
	sreclaimable = FUNC2(NR_SLAB_RECLAIMABLE);
	sunreclaim = FUNC2(NR_SLAB_UNRECLAIMABLE);

	FUNC8(m, "MemTotal:       ", i.totalram);
	FUNC8(m, "MemFree:        ", i.freeram);
	FUNC8(m, "MemAvailable:   ", available);
	FUNC8(m, "Buffers:        ", i.bufferram);
	FUNC8(m, "Cached:         ", cached);
	FUNC8(m, "SwapCached:     ", FUNC12());
	FUNC8(m, "Active:         ", pages[LRU_ACTIVE_ANON] +
					   pages[LRU_ACTIVE_FILE]);
	FUNC8(m, "Inactive:       ", pages[LRU_INACTIVE_ANON] +
					   pages[LRU_INACTIVE_FILE]);
	FUNC8(m, "Active(anon):   ", pages[LRU_ACTIVE_ANON]);
	FUNC8(m, "Inactive(anon): ", pages[LRU_INACTIVE_ANON]);
	FUNC8(m, "Active(file):   ", pages[LRU_ACTIVE_FILE]);
	FUNC8(m, "Inactive(file): ", pages[LRU_INACTIVE_FILE]);
	FUNC8(m, "Unevictable:    ", pages[LRU_UNEVICTABLE]);
	FUNC8(m, "Mlocked:        ", FUNC3(NR_MLOCK));

#ifdef CONFIG_HIGHMEM
	show_val_kb(m, "HighTotal:      ", i.totalhigh);
	show_val_kb(m, "HighFree:       ", i.freehigh);
	show_val_kb(m, "LowTotal:       ", i.totalram - i.totalhigh);
	show_val_kb(m, "LowFree:        ", i.freeram - i.freehigh);
#endif

#ifndef CONFIG_MMU
	FUNC8(m, "MmapCopy:       ",
		    (unsigned long)FUNC1(&mmap_pages_allocated));
#endif

	FUNC8(m, "SwapTotal:      ", i.totalswap);
	FUNC8(m, "SwapFree:       ", i.freeswap);
	FUNC8(m, "Dirty:          ",
		    FUNC2(NR_FILE_DIRTY));
	FUNC8(m, "Writeback:      ",
		    FUNC2(NR_WRITEBACK));
	FUNC8(m, "AnonPages:      ",
		    FUNC2(NR_ANON_MAPPED));
	FUNC8(m, "Mapped:         ",
		    FUNC2(NR_FILE_MAPPED));
	FUNC8(m, "Shmem:          ", i.sharedram);
	FUNC8(m, "KReclaimable:   ", sreclaimable +
		    FUNC2(NR_KERNEL_MISC_RECLAIMABLE));
	FUNC8(m, "Slab:           ", sreclaimable + sunreclaim);
	FUNC8(m, "SReclaimable:   ", sreclaimable);
	FUNC8(m, "SUnreclaim:     ", sunreclaim);
	FUNC7(m, "KernelStack:    %8lu kB\n",
		   FUNC3(NR_KERNEL_STACK_KB));
	FUNC8(m, "PageTables:     ",
		    FUNC3(NR_PAGETABLE));

	FUNC8(m, "NFS_Unstable:   ",
		    FUNC2(NR_UNSTABLE_NFS));
	FUNC8(m, "Bounce:         ",
		    FUNC3(NR_BOUNCE));
	FUNC8(m, "WritebackTmp:   ",
		    FUNC2(NR_WRITEBACK_TEMP));
	FUNC8(m, "CommitLimit:    ", FUNC13());
	FUNC8(m, "Committed_AS:   ", committed);
	FUNC7(m, "VmallocTotal:   %8lu kB\n",
		   (unsigned long)VMALLOC_TOTAL >> 10);
	FUNC8(m, "VmallocUsed:    ", FUNC14());
	FUNC8(m, "VmallocChunk:   ", 0ul);
	FUNC8(m, "Percpu:         ", FUNC5());

#ifdef CONFIG_MEMORY_FAILURE
	seq_printf(m, "HardwareCorrupted: %5lu kB\n",
		   atomic_long_read(&num_poisoned_pages) << (PAGE_SHIFT - 10));
#endif

#ifdef CONFIG_TRANSPARENT_HUGEPAGE
	show_val_kb(m, "AnonHugePages:  ",
		    global_node_page_state(NR_ANON_THPS) * HPAGE_PMD_NR);
	show_val_kb(m, "ShmemHugePages: ",
		    global_node_page_state(NR_SHMEM_THPS) * HPAGE_PMD_NR);
	show_val_kb(m, "ShmemPmdMapped: ",
		    global_node_page_state(NR_SHMEM_PMDMAPPED) * HPAGE_PMD_NR);
	show_val_kb(m, "FileHugePages:  ",
		    global_node_page_state(NR_FILE_THPS) * HPAGE_PMD_NR);
	show_val_kb(m, "FilePmdMapped:  ",
		    global_node_page_state(NR_FILE_PMDMAPPED) * HPAGE_PMD_NR);
#endif

#ifdef CONFIG_CMA
	show_val_kb(m, "CmaTotal:       ", totalcma_pages);
	show_val_kb(m, "CmaFree:        ",
		    global_zone_page_state(NR_FREE_CMA_PAGES));
#endif

	FUNC4(m);

	FUNC0(m);

	return 0;
}