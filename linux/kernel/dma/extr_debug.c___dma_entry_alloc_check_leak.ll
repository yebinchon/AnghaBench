; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c___dma_entry_alloc_check_leak.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c___dma_entry_alloc_check_leak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nr_total_entries = common dso_local global i64 0, align 8
@nr_prealloc_entries = common dso_local global i64 0, align 8
@DMA_DEBUG_DYNAMIC_ENTRIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"dma_debug_entry pool grown to %u (%u00%%)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dma_entry_alloc_check_leak() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @nr_total_entries, align 8
  %3 = load i64, i64* @nr_prealloc_entries, align 8
  %4 = srem i64 %2, %3
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @DMA_DEBUG_DYNAMIC_ENTRIES, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = load i64, i64* @nr_total_entries, align 8
  %10 = load i64, i64* @nr_total_entries, align 8
  %11 = load i64, i64* @nr_prealloc_entries, align 8
  %12 = sdiv i64 %10, %11
  %13 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %9, i64 %12)
  br label %14

14:                                               ; preds = %8, %0
  ret void
}

declare dso_local i32 @pr_info(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
