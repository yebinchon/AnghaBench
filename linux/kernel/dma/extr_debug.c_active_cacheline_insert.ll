; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_active_cacheline_insert.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_active_cacheline_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_debug_entry = type { i64 }

@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@radix_lock = common dso_local global i32 0, align 4
@dma_active_cacheline = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_debug_entry*)* @active_cacheline_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @active_cacheline_insert(%struct.dma_debug_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_debug_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.dma_debug_entry* %0, %struct.dma_debug_entry** %3, align 8
  %7 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %3, align 8
  %8 = call i32 @to_cacheline_number(%struct.dma_debug_entry* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %3, align 8
  %10 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DMA_TO_DEVICE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* @radix_lock, i64 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %3, align 8
  %20 = call i32 @radix_tree_insert(i32* @dma_active_cacheline, i32 %18, %struct.dma_debug_entry* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @EEXIST, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @active_cacheline_inc_overlap(i32 %26)
  br label %28

28:                                               ; preds = %25, %15
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* @radix_lock, i64 %29)
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %14
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @to_cacheline_number(%struct.dma_debug_entry*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.dma_debug_entry*) #1

declare dso_local i32 @active_cacheline_inc_overlap(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
