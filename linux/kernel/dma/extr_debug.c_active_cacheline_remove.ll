; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_active_cacheline_remove.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_active_cacheline_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_debug_entry = type { i64 }

@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@radix_lock = common dso_local global i32 0, align 4
@dma_active_cacheline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_debug_entry*)* @active_cacheline_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @active_cacheline_remove(%struct.dma_debug_entry* %0) #0 {
  %2 = alloca %struct.dma_debug_entry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.dma_debug_entry* %0, %struct.dma_debug_entry** %2, align 8
  %5 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %2, align 8
  %6 = call i32 @to_cacheline_number(%struct.dma_debug_entry* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %2, align 8
  %8 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DMA_TO_DEVICE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %25

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @radix_lock, i64 %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @active_cacheline_dec_overlap(i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @radix_tree_delete(i32* @dma_active_cacheline, i32 %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* @radix_lock, i64 %23)
  br label %25

25:                                               ; preds = %22, %12
  ret void
}

declare dso_local i32 @to_cacheline_number(%struct.dma_debug_entry*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @active_cacheline_dec_overlap(i32) #1

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
