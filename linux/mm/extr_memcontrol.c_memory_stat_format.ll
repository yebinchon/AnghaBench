; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_memory_stat_format.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_memory_stat_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }
%struct.seq_buf = type { i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"anon %llu\0A\00", align 1
@MEMCG_RSS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"file %llu\0A\00", align 1
@MEMCG_CACHE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"kernel_stack %llu\0A\00", align 1
@MEMCG_KERNEL_STACK_KB = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"slab %llu\0A\00", align 1
@NR_SLAB_RECLAIMABLE = common dso_local global i64 0, align 8
@NR_SLAB_UNRECLAIMABLE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"sock %llu\0A\00", align 1
@MEMCG_SOCK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"shmem %llu\0A\00", align 1
@NR_SHMEM = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"file_mapped %llu\0A\00", align 1
@NR_FILE_MAPPED = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"file_dirty %llu\0A\00", align 1
@NR_FILE_DIRTY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"file_writeback %llu\0A\00", align 1
@NR_WRITEBACK = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"anon_thp %llu\0A\00", align 1
@MEMCG_RSS_HUGE = common dso_local global i64 0, align 8
@NR_LRU_LISTS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"%s %llu\0A\00", align 1
@mem_cgroup_lru_names = common dso_local global i32* null, align 8
@NR_LRU_BASE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"slab_reclaimable %llu\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"slab_unreclaimable %llu\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"pgfault %lu\0A\00", align 1
@PGFAULT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"pgmajfault %lu\0A\00", align 1
@PGMAJFAULT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"workingset_refault %lu\0A\00", align 1
@WORKINGSET_REFAULT = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [25 x i8] c"workingset_activate %lu\0A\00", align 1
@WORKINGSET_ACTIVATE = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [28 x i8] c"workingset_nodereclaim %lu\0A\00", align 1
@WORKINGSET_NODERECLAIM = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"pgrefill %lu\0A\00", align 1
@PGREFILL = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"pgscan %lu\0A\00", align 1
@PGSCAN_KSWAPD = common dso_local global i32 0, align 4
@PGSCAN_DIRECT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [13 x i8] c"pgsteal %lu\0A\00", align 1
@PGSTEAL_KSWAPD = common dso_local global i32 0, align 4
@PGSTEAL_DIRECT = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [16 x i8] c"pgactivate %lu\0A\00", align 1
@PGACTIVATE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [18 x i8] c"pgdeactivate %lu\0A\00", align 1
@PGDEACTIVATE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [16 x i8] c"pglazyfree %lu\0A\00", align 1
@PGLAZYFREE = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [17 x i8] c"pglazyfreed %lu\0A\00", align 1
@PGLAZYFREED = common dso_local global i32 0, align 4
@THP_COLLAPSE_ALLOC = common dso_local global i32 0, align 4
@THP_FAULT_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mem_cgroup*)* @memory_stat_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @memory_stat_format(%struct.mem_cgroup* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca %struct.seq_buf, align 8
  %5 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %3, align 8
  %6 = load i32, i32* @PAGE_SIZE, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i32 @kmalloc(i32 %6, i32 %7)
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = call i32 @seq_buf_init(%struct.seq_buf* %4, i32 %8, i32 %9)
  %11 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %4, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %174

15:                                               ; preds = %1
  %16 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %17 = load i64, i64* @MEMCG_RSS, align 8
  %18 = call i32 @memcg_page_state(%struct.mem_cgroup* %16, i64 %17)
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = mul nsw i32 %18, %19
  %21 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %23 = load i64, i64* @MEMCG_CACHE, align 8
  %24 = call i32 @memcg_page_state(%struct.mem_cgroup* %22, i64 %23)
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = mul nsw i32 %24, %25
  %27 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %29 = load i64, i64* @MEMCG_KERNEL_STACK_KB, align 8
  %30 = call i32 @memcg_page_state(%struct.mem_cgroup* %28, i64 %29)
  %31 = mul nsw i32 %30, 1024
  %32 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %34 = load i64, i64* @NR_SLAB_RECLAIMABLE, align 8
  %35 = call i32 @memcg_page_state(%struct.mem_cgroup* %33, i64 %34)
  %36 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %37 = load i64, i64* @NR_SLAB_UNRECLAIMABLE, align 8
  %38 = call i32 @memcg_page_state(%struct.mem_cgroup* %36, i64 %37)
  %39 = add nsw i32 %35, %38
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = mul nsw i32 %39, %40
  %42 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %44 = load i64, i64* @MEMCG_SOCK, align 8
  %45 = call i32 @memcg_page_state(%struct.mem_cgroup* %43, i64 %44)
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = mul nsw i32 %45, %46
  %48 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  %49 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %50 = load i64, i64* @NR_SHMEM, align 8
  %51 = call i32 @memcg_page_state(%struct.mem_cgroup* %49, i64 %50)
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = mul nsw i32 %51, %52
  %54 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  %55 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %56 = load i64, i64* @NR_FILE_MAPPED, align 8
  %57 = call i32 @memcg_page_state(%struct.mem_cgroup* %55, i64 %56)
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = mul nsw i32 %57, %58
  %60 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %59)
  %61 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %62 = load i64, i64* @NR_FILE_DIRTY, align 8
  %63 = call i32 @memcg_page_state(%struct.mem_cgroup* %61, i64 %62)
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = mul nsw i32 %63, %64
  %66 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %65)
  %67 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %68 = load i64, i64* @NR_WRITEBACK, align 8
  %69 = call i32 @memcg_page_state(%struct.mem_cgroup* %67, i64 %68)
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = mul nsw i32 %69, %70
  %72 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %71)
  %73 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %74 = load i64, i64* @MEMCG_RSS_HUGE, align 8
  %75 = call i32 @memcg_page_state(%struct.mem_cgroup* %73, i64 %74)
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = mul nsw i32 %75, %76
  %78 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %77)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %98, %15
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @NR_LRU_LISTS, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %79
  %84 = load i32*, i32** @mem_cgroup_lru_names, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %90 = load i64, i64* @NR_LRU_BASE, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = call i32 @memcg_page_state(%struct.mem_cgroup* %89, i64 %93)
  %95 = load i32, i32* @PAGE_SIZE, align 4
  %96 = mul nsw i32 %94, %95
  %97 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %88, i32 %96)
  br label %98

98:                                               ; preds = %83
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %79

101:                                              ; preds = %79
  %102 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %103 = load i64, i64* @NR_SLAB_RECLAIMABLE, align 8
  %104 = call i32 @memcg_page_state(%struct.mem_cgroup* %102, i64 %103)
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = mul nsw i32 %104, %105
  %107 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %106)
  %108 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %109 = load i64, i64* @NR_SLAB_UNRECLAIMABLE, align 8
  %110 = call i32 @memcg_page_state(%struct.mem_cgroup* %108, i64 %109)
  %111 = load i32, i32* @PAGE_SIZE, align 4
  %112 = mul nsw i32 %110, %111
  %113 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %112)
  %114 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %115 = load i32, i32* @PGFAULT, align 4
  %116 = call i32 @memcg_events(%struct.mem_cgroup* %114, i32 %115)
  %117 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %116)
  %118 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %119 = load i32, i32* @PGMAJFAULT, align 4
  %120 = call i32 @memcg_events(%struct.mem_cgroup* %118, i32 %119)
  %121 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %120)
  %122 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %123 = load i64, i64* @WORKINGSET_REFAULT, align 8
  %124 = call i32 @memcg_page_state(%struct.mem_cgroup* %122, i64 %123)
  %125 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %124)
  %126 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %127 = load i64, i64* @WORKINGSET_ACTIVATE, align 8
  %128 = call i32 @memcg_page_state(%struct.mem_cgroup* %126, i64 %127)
  %129 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 %128)
  %130 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %131 = load i64, i64* @WORKINGSET_NODERECLAIM, align 8
  %132 = call i32 @memcg_page_state(%struct.mem_cgroup* %130, i64 %131)
  %133 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 %132)
  %134 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %135 = load i32, i32* @PGREFILL, align 4
  %136 = call i32 @memcg_events(%struct.mem_cgroup* %134, i32 %135)
  %137 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 %136)
  %138 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %139 = load i32, i32* @PGSCAN_KSWAPD, align 4
  %140 = call i32 @memcg_events(%struct.mem_cgroup* %138, i32 %139)
  %141 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %142 = load i32, i32* @PGSCAN_DIRECT, align 4
  %143 = call i32 @memcg_events(%struct.mem_cgroup* %141, i32 %142)
  %144 = add nsw i32 %140, %143
  %145 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %144)
  %146 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %147 = load i32, i32* @PGSTEAL_KSWAPD, align 4
  %148 = call i32 @memcg_events(%struct.mem_cgroup* %146, i32 %147)
  %149 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %150 = load i32, i32* @PGSTEAL_DIRECT, align 4
  %151 = call i32 @memcg_events(%struct.mem_cgroup* %149, i32 %150)
  %152 = add nsw i32 %148, %151
  %153 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i32 %152)
  %154 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %155 = load i32, i32* @PGACTIVATE, align 4
  %156 = call i32 @memcg_events(%struct.mem_cgroup* %154, i32 %155)
  %157 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i32 %156)
  %158 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %159 = load i32, i32* @PGDEACTIVATE, align 4
  %160 = call i32 @memcg_events(%struct.mem_cgroup* %158, i32 %159)
  %161 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i32 %160)
  %162 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %163 = load i32, i32* @PGLAZYFREE, align 4
  %164 = call i32 @memcg_events(%struct.mem_cgroup* %162, i32 %163)
  %165 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 %164)
  %166 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %167 = load i32, i32* @PGLAZYFREED, align 4
  %168 = call i32 @memcg_events(%struct.mem_cgroup* %166, i32 %167)
  %169 = call i32 (%struct.seq_buf*, i8*, i32, ...) @seq_buf_printf(%struct.seq_buf* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 %168)
  %170 = call i32 @seq_buf_has_overflowed(%struct.seq_buf* %4)
  %171 = call i32 @WARN_ON_ONCE(i32 %170)
  %172 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %4, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  store i8* %173, i8** %2, align 8
  br label %174

174:                                              ; preds = %101, %14
  %175 = load i8*, i8** %2, align 8
  ret i8* %175
}

declare dso_local i32 @seq_buf_init(%struct.seq_buf*, i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @seq_buf_printf(%struct.seq_buf*, i8*, i32, ...) #1

declare dso_local i32 @memcg_page_state(%struct.mem_cgroup*, i64) #1

declare dso_local i32 @memcg_events(%struct.mem_cgroup*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @seq_buf_has_overflowed(%struct.seq_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
