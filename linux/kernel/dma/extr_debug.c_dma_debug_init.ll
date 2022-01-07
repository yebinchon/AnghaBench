; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_dma_debug_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_dma_debug_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@global_disable = common dso_local global i32 0, align 4
@HASH_SIZE = common dso_local global i32 0, align 4
@dma_entry_hash = common dso_local global %struct.TYPE_2__* null, align 8
@nr_prealloc_entries = common dso_local global i64 0, align 8
@DMA_DEBUG_DYNAMIC_ENTRIES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@num_free_entries = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"preallocated %d debug entries\0A\00", align 1
@nr_total_entries = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"%d debug entries requested but only %d allocated\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"debugging out of memory error - disabled\0A\00", align 1
@min_free_entries = common dso_local global i64 0, align 8
@dma_debug_initialized = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"debugging enabled by kernel config\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dma_debug_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_debug_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @global_disable, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %63

7:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %25, %7
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @HASH_SIZE, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_entry_hash, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_entry_hash, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_init(i32* %23)
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %8

28:                                               ; preds = %8
  %29 = call i32 (...) @dma_debug_fs_init()
  %30 = load i64, i64* @nr_prealloc_entries, align 8
  %31 = load i32, i32* @DMA_DEBUG_DYNAMIC_ENTRIES, align 4
  %32 = call i32 @DIV_ROUND_UP(i64 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %40, %28
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i32 @dma_debug_create_entries(i32 %38)
  br label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %33

43:                                               ; preds = %33
  %44 = load i64, i64* @num_free_entries, align 8
  %45 = load i64, i64* @nr_prealloc_entries, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @nr_total_entries, align 4
  %49 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %60

50:                                               ; preds = %43
  %51 = load i64, i64* @num_free_entries, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i64, i64* @nr_prealloc_entries, align 8
  %55 = load i32, i32* @nr_total_entries, align 4
  %56 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %54, i32 %55)
  br label %59

57:                                               ; preds = %50
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* @global_disable, align 4
  store i32 0, i32* %1, align 4
  br label %63

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %47
  %61 = load i64, i64* @num_free_entries, align 8
  store i64 %61, i64* @min_free_entries, align 8
  store i32 1, i32* @dma_debug_initialized, align 4
  %62 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %63

63:                                               ; preds = %60, %57, %6
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dma_debug_fs_init(...) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @dma_debug_create_entries(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @pr_warn(i8*, i64, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
