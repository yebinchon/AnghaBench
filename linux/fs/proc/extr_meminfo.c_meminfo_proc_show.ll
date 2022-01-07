; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_meminfo.c_meminfo_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_meminfo.c_meminfo_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.sysinfo = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@NR_LRU_LISTS = common dso_local global i32 0, align 4
@vm_committed_as = common dso_local global i32 0, align 4
@NR_FILE_PAGES = common dso_local global i64 0, align 8
@LRU_BASE = common dso_local global i32 0, align 4
@NR_LRU_BASE = common dso_local global i64 0, align 8
@NR_SLAB_RECLAIMABLE = common dso_local global i64 0, align 8
@NR_SLAB_UNRECLAIMABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"MemTotal:       \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"MemFree:        \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"MemAvailable:   \00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Buffers:        \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Cached:         \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"SwapCached:     \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Active:         \00", align 1
@LRU_ACTIVE_ANON = common dso_local global i64 0, align 8
@LRU_ACTIVE_FILE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"Inactive:       \00", align 1
@LRU_INACTIVE_ANON = common dso_local global i64 0, align 8
@LRU_INACTIVE_FILE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"Active(anon):   \00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Inactive(anon): \00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Active(file):   \00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Inactive(file): \00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Unevictable:    \00", align 1
@LRU_UNEVICTABLE = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [17 x i8] c"Mlocked:        \00", align 1
@NR_MLOCK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"MmapCopy:       \00", align 1
@mmap_pages_allocated = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"SwapTotal:      \00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"SwapFree:       \00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Dirty:          \00", align 1
@NR_FILE_DIRTY = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [17 x i8] c"Writeback:      \00", align 1
@NR_WRITEBACK = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [17 x i8] c"AnonPages:      \00", align 1
@NR_ANON_MAPPED = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [17 x i8] c"Mapped:         \00", align 1
@NR_FILE_MAPPED = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [17 x i8] c"Shmem:          \00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"KReclaimable:   \00", align 1
@NR_KERNEL_MISC_RECLAIMABLE = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [17 x i8] c"Slab:           \00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"SReclaimable:   \00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"SUnreclaim:     \00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"KernelStack:    %8lu kB\0A\00", align 1
@NR_KERNEL_STACK_KB = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [17 x i8] c"PageTables:     \00", align 1
@NR_PAGETABLE = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [17 x i8] c"NFS_Unstable:   \00", align 1
@NR_UNSTABLE_NFS = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [17 x i8] c"Bounce:         \00", align 1
@NR_BOUNCE = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [17 x i8] c"WritebackTmp:   \00", align 1
@NR_WRITEBACK_TEMP = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [17 x i8] c"CommitLimit:    \00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"Committed_AS:   \00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"VmallocTotal:   %8lu kB\0A\00", align 1
@VMALLOC_TOTAL = common dso_local global i64 0, align 8
@.str.34 = private unnamed_addr constant [17 x i8] c"VmallocUsed:    \00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"VmallocChunk:   \00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"Percpu:         \00", align 1
@HPAGE_PMD_NR = common dso_local global i64 0, align 8
@NR_ANON_THPS = common dso_local global i64 0, align 8
@NR_FILE_PMDMAPPED = common dso_local global i64 0, align 8
@NR_FILE_THPS = common dso_local global i64 0, align 8
@NR_FREE_CMA_PAGES = common dso_local global i32 0, align 4
@NR_SHMEM_PMDMAPPED = common dso_local global i64 0, align 8
@NR_SHMEM_THPS = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@num_poisoned_pages = common dso_local global i32 0, align 4
@totalcma_pages = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @meminfo_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meminfo_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sysinfo, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i32, i32* @NR_LRU_LISTS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = call i32 @si_meminfo(%struct.sysinfo* %5)
  %19 = call i32 @si_swapinfo(%struct.sysinfo* %5)
  %20 = call i64 @percpu_counter_read_positive(i32* @vm_committed_as)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* @NR_FILE_PAGES, align 8
  %22 = call i64 @global_node_page_state(i64 %21)
  %23 = call i64 (...) @total_swapcache_pages()
  %24 = sub i64 %22, %23
  %25 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %5, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub i64 %24, %26
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i32, i32* @LRU_BASE, align 4
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %46, %31
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @NR_LRU_LISTS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i64, i64* @NR_LRU_BASE, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = call i64 @global_node_page_state(i64 %41)
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %17, i64 %44
  store i64 %42, i64* %45, align 8
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %13, align 4
  br label %33

49:                                               ; preds = %33
  %50 = call i64 (...) @si_mem_available()
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* @NR_SLAB_RECLAIMABLE, align 8
  %52 = call i64 @global_node_page_state(i64 %51)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* @NR_SLAB_UNRECLAIMABLE, align 8
  %54 = call i64 @global_node_page_state(i64 %53)
  store i64 %54, i64* %12, align 8
  %55 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %56 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %5, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @show_val_kb(%struct.seq_file* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %60 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %5, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @show_val_kb(%struct.seq_file* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  %63 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @show_val_kb(%struct.seq_file* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %5, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @show_val_kb(%struct.seq_file* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %68)
  %70 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @show_val_kb(%struct.seq_file* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %71)
  %73 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %74 = call i64 (...) @total_swapcache_pages()
  %75 = call i32 @show_val_kb(%struct.seq_file* %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i64 %74)
  %76 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %77 = load i64, i64* @LRU_ACTIVE_ANON, align 8
  %78 = getelementptr inbounds i64, i64* %17, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @LRU_ACTIVE_FILE, align 8
  %81 = getelementptr inbounds i64, i64* %17, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %79, %82
  %84 = call i32 @show_val_kb(%struct.seq_file* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64 %83)
  %85 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %86 = load i64, i64* @LRU_INACTIVE_ANON, align 8
  %87 = getelementptr inbounds i64, i64* %17, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @LRU_INACTIVE_FILE, align 8
  %90 = getelementptr inbounds i64, i64* %17, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %88, %91
  %93 = call i32 @show_val_kb(%struct.seq_file* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i64 %92)
  %94 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %95 = load i64, i64* @LRU_ACTIVE_ANON, align 8
  %96 = getelementptr inbounds i64, i64* %17, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @show_val_kb(%struct.seq_file* %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i64 %97)
  %99 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %100 = load i64, i64* @LRU_INACTIVE_ANON, align 8
  %101 = getelementptr inbounds i64, i64* %17, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @show_val_kb(%struct.seq_file* %99, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i64 %102)
  %104 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %105 = load i64, i64* @LRU_ACTIVE_FILE, align 8
  %106 = getelementptr inbounds i64, i64* %17, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @show_val_kb(%struct.seq_file* %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i64 %107)
  %109 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %110 = load i64, i64* @LRU_INACTIVE_FILE, align 8
  %111 = getelementptr inbounds i64, i64* %17, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @show_val_kb(%struct.seq_file* %109, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i64 %112)
  %114 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %115 = load i64, i64* @LRU_UNEVICTABLE, align 8
  %116 = getelementptr inbounds i64, i64* %17, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @show_val_kb(%struct.seq_file* %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i64 %117)
  %119 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %120 = load i32, i32* @NR_MLOCK, align 4
  %121 = call i64 @global_zone_page_state(i32 %120)
  %122 = call i32 @show_val_kb(%struct.seq_file* %119, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i64 %121)
  %123 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %124 = call i32 @atomic_long_read(i32* @mmap_pages_allocated)
  %125 = sext i32 %124 to i64
  %126 = call i32 @show_val_kb(%struct.seq_file* %123, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i64 %125)
  %127 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %128 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %5, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @show_val_kb(%struct.seq_file* %127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i64 %129)
  %131 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %132 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %5, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @show_val_kb(%struct.seq_file* %131, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i64 %133)
  %135 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %136 = load i64, i64* @NR_FILE_DIRTY, align 8
  %137 = call i64 @global_node_page_state(i64 %136)
  %138 = call i32 @show_val_kb(%struct.seq_file* %135, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i64 %137)
  %139 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %140 = load i64, i64* @NR_WRITEBACK, align 8
  %141 = call i64 @global_node_page_state(i64 %140)
  %142 = call i32 @show_val_kb(%struct.seq_file* %139, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i64 %141)
  %143 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %144 = load i64, i64* @NR_ANON_MAPPED, align 8
  %145 = call i64 @global_node_page_state(i64 %144)
  %146 = call i32 @show_val_kb(%struct.seq_file* %143, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i64 %145)
  %147 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %148 = load i64, i64* @NR_FILE_MAPPED, align 8
  %149 = call i64 @global_node_page_state(i64 %148)
  %150 = call i32 @show_val_kb(%struct.seq_file* %147, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i64 %149)
  %151 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %152 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %5, i32 0, i32 7
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @show_val_kb(%struct.seq_file* %151, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i64 %153)
  %155 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %156 = load i64, i64* %11, align 8
  %157 = load i64, i64* @NR_KERNEL_MISC_RECLAIMABLE, align 8
  %158 = call i64 @global_node_page_state(i64 %157)
  %159 = add i64 %156, %158
  %160 = call i32 @show_val_kb(%struct.seq_file* %155, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i64 %159)
  %161 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %162 = load i64, i64* %11, align 8
  %163 = load i64, i64* %12, align 8
  %164 = add i64 %162, %163
  %165 = call i32 @show_val_kb(%struct.seq_file* %161, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i64 %164)
  %166 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %167 = load i64, i64* %11, align 8
  %168 = call i32 @show_val_kb(%struct.seq_file* %166, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i64 %167)
  %169 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %170 = load i64, i64* %12, align 8
  %171 = call i32 @show_val_kb(%struct.seq_file* %169, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i64 %170)
  %172 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %173 = load i32, i32* @NR_KERNEL_STACK_KB, align 4
  %174 = call i64 @global_zone_page_state(i32 %173)
  %175 = trunc i64 %174 to i32
  %176 = call i32 @seq_printf(%struct.seq_file* %172, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i32 %175)
  %177 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %178 = load i32, i32* @NR_PAGETABLE, align 4
  %179 = call i64 @global_zone_page_state(i32 %178)
  %180 = call i32 @show_val_kb(%struct.seq_file* %177, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), i64 %179)
  %181 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %182 = load i64, i64* @NR_UNSTABLE_NFS, align 8
  %183 = call i64 @global_node_page_state(i64 %182)
  %184 = call i32 @show_val_kb(%struct.seq_file* %181, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i64 %183)
  %185 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %186 = load i32, i32* @NR_BOUNCE, align 4
  %187 = call i64 @global_zone_page_state(i32 %186)
  %188 = call i32 @show_val_kb(%struct.seq_file* %185, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i64 %187)
  %189 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %190 = load i64, i64* @NR_WRITEBACK_TEMP, align 8
  %191 = call i64 @global_node_page_state(i64 %190)
  %192 = call i32 @show_val_kb(%struct.seq_file* %189, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0), i64 %191)
  %193 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %194 = call i64 (...) @vm_commit_limit()
  %195 = call i32 @show_val_kb(%struct.seq_file* %193, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i64 %194)
  %196 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %197 = load i64, i64* %6, align 8
  %198 = call i32 @show_val_kb(%struct.seq_file* %196, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i64 %197)
  %199 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %200 = load i64, i64* @VMALLOC_TOTAL, align 8
  %201 = lshr i64 %200, 10
  %202 = trunc i64 %201 to i32
  %203 = call i32 @seq_printf(%struct.seq_file* %199, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i64 0, i64 0), i32 %202)
  %204 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %205 = call i64 (...) @vmalloc_nr_pages()
  %206 = call i32 @show_val_kb(%struct.seq_file* %204, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i64 %205)
  %207 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %208 = call i32 @show_val_kb(%struct.seq_file* %207, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i64 0)
  %209 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %210 = call i64 (...) @pcpu_nr_pages()
  %211 = call i32 @show_val_kb(%struct.seq_file* %209, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i64 %210)
  %212 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %213 = call i32 @hugetlb_report_meminfo(%struct.seq_file* %212)
  %214 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %215 = call i32 @arch_report_meminfo(%struct.seq_file* %214)
  %216 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %216)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @si_meminfo(%struct.sysinfo*) #2

declare dso_local i32 @si_swapinfo(%struct.sysinfo*) #2

declare dso_local i64 @percpu_counter_read_positive(i32*) #2

declare dso_local i64 @global_node_page_state(i64) #2

declare dso_local i64 @total_swapcache_pages(...) #2

declare dso_local i64 @si_mem_available(...) #2

declare dso_local i32 @show_val_kb(%struct.seq_file*, i8*, i64) #2

declare dso_local i64 @global_zone_page_state(i32) #2

declare dso_local i32 @atomic_long_read(i32*) #2

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #2

declare dso_local i64 @vm_commit_limit(...) #2

declare dso_local i64 @vmalloc_nr_pages(...) #2

declare dso_local i64 @pcpu_nr_pages(...) #2

declare dso_local i32 @hugetlb_report_meminfo(%struct.seq_file*) #2

declare dso_local i32 @arch_report_meminfo(%struct.seq_file*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
