
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct seq_buf {char* buffer; } ;
struct mem_cgroup {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ MEMCG_CACHE ;
 scalar_t__ MEMCG_KERNEL_STACK_KB ;
 scalar_t__ MEMCG_RSS ;
 scalar_t__ MEMCG_RSS_HUGE ;
 scalar_t__ MEMCG_SOCK ;
 scalar_t__ NR_FILE_DIRTY ;
 scalar_t__ NR_FILE_MAPPED ;
 scalar_t__ NR_LRU_BASE ;
 int NR_LRU_LISTS ;
 scalar_t__ NR_SHMEM ;
 scalar_t__ NR_SLAB_RECLAIMABLE ;
 scalar_t__ NR_SLAB_UNRECLAIMABLE ;
 scalar_t__ NR_WRITEBACK ;
 int PAGE_SIZE ;
 int PGACTIVATE ;
 int PGDEACTIVATE ;
 int PGFAULT ;
 int PGLAZYFREE ;
 int PGLAZYFREED ;
 int PGMAJFAULT ;
 int PGREFILL ;
 int PGSCAN_DIRECT ;
 int PGSCAN_KSWAPD ;
 int PGSTEAL_DIRECT ;
 int PGSTEAL_KSWAPD ;
 int THP_COLLAPSE_ALLOC ;
 int THP_FAULT_ALLOC ;
 int WARN_ON_ONCE (int ) ;
 scalar_t__ WORKINGSET_ACTIVATE ;
 scalar_t__ WORKINGSET_NODERECLAIM ;
 scalar_t__ WORKINGSET_REFAULT ;
 int kmalloc (int,int ) ;
 int * mem_cgroup_lru_names ;
 int memcg_events (struct mem_cgroup*,int ) ;
 int memcg_page_state (struct mem_cgroup*,scalar_t__) ;
 int seq_buf_has_overflowed (struct seq_buf*) ;
 int seq_buf_init (struct seq_buf*,int ,int) ;
 int seq_buf_printf (struct seq_buf*,char*,int,...) ;

__attribute__((used)) static char *memory_stat_format(struct mem_cgroup *memcg)
{
 struct seq_buf s;
 int i;

 seq_buf_init(&s, kmalloc(PAGE_SIZE, GFP_KERNEL), PAGE_SIZE);
 if (!s.buffer)
  return ((void*)0);
 seq_buf_printf(&s, "anon %llu\n",
         (u64)memcg_page_state(memcg, MEMCG_RSS) *
         PAGE_SIZE);
 seq_buf_printf(&s, "file %llu\n",
         (u64)memcg_page_state(memcg, MEMCG_CACHE) *
         PAGE_SIZE);
 seq_buf_printf(&s, "kernel_stack %llu\n",
         (u64)memcg_page_state(memcg, MEMCG_KERNEL_STACK_KB) *
         1024);
 seq_buf_printf(&s, "slab %llu\n",
         (u64)(memcg_page_state(memcg, NR_SLAB_RECLAIMABLE) +
        memcg_page_state(memcg, NR_SLAB_UNRECLAIMABLE)) *
         PAGE_SIZE);
 seq_buf_printf(&s, "sock %llu\n",
         (u64)memcg_page_state(memcg, MEMCG_SOCK) *
         PAGE_SIZE);

 seq_buf_printf(&s, "shmem %llu\n",
         (u64)memcg_page_state(memcg, NR_SHMEM) *
         PAGE_SIZE);
 seq_buf_printf(&s, "file_mapped %llu\n",
         (u64)memcg_page_state(memcg, NR_FILE_MAPPED) *
         PAGE_SIZE);
 seq_buf_printf(&s, "file_dirty %llu\n",
         (u64)memcg_page_state(memcg, NR_FILE_DIRTY) *
         PAGE_SIZE);
 seq_buf_printf(&s, "file_writeback %llu\n",
         (u64)memcg_page_state(memcg, NR_WRITEBACK) *
         PAGE_SIZE);







 seq_buf_printf(&s, "anon_thp %llu\n",
         (u64)memcg_page_state(memcg, MEMCG_RSS_HUGE) *
         PAGE_SIZE);

 for (i = 0; i < NR_LRU_LISTS; i++)
  seq_buf_printf(&s, "%s %llu\n", mem_cgroup_lru_names[i],
          (u64)memcg_page_state(memcg, NR_LRU_BASE + i) *
          PAGE_SIZE);

 seq_buf_printf(&s, "slab_reclaimable %llu\n",
         (u64)memcg_page_state(memcg, NR_SLAB_RECLAIMABLE) *
         PAGE_SIZE);
 seq_buf_printf(&s, "slab_unreclaimable %llu\n",
         (u64)memcg_page_state(memcg, NR_SLAB_UNRECLAIMABLE) *
         PAGE_SIZE);



 seq_buf_printf(&s, "pgfault %lu\n", memcg_events(memcg, PGFAULT));
 seq_buf_printf(&s, "pgmajfault %lu\n", memcg_events(memcg, PGMAJFAULT));

 seq_buf_printf(&s, "workingset_refault %lu\n",
         memcg_page_state(memcg, WORKINGSET_REFAULT));
 seq_buf_printf(&s, "workingset_activate %lu\n",
         memcg_page_state(memcg, WORKINGSET_ACTIVATE));
 seq_buf_printf(&s, "workingset_nodereclaim %lu\n",
         memcg_page_state(memcg, WORKINGSET_NODERECLAIM));

 seq_buf_printf(&s, "pgrefill %lu\n", memcg_events(memcg, PGREFILL));
 seq_buf_printf(&s, "pgscan %lu\n",
         memcg_events(memcg, PGSCAN_KSWAPD) +
         memcg_events(memcg, PGSCAN_DIRECT));
 seq_buf_printf(&s, "pgsteal %lu\n",
         memcg_events(memcg, PGSTEAL_KSWAPD) +
         memcg_events(memcg, PGSTEAL_DIRECT));
 seq_buf_printf(&s, "pgactivate %lu\n", memcg_events(memcg, PGACTIVATE));
 seq_buf_printf(&s, "pgdeactivate %lu\n", memcg_events(memcg, PGDEACTIVATE));
 seq_buf_printf(&s, "pglazyfree %lu\n", memcg_events(memcg, PGLAZYFREE));
 seq_buf_printf(&s, "pglazyfreed %lu\n", memcg_events(memcg, PGLAZYFREED));
 WARN_ON_ONCE(seq_buf_has_overflowed(&s));

 return s.buffer;
}
