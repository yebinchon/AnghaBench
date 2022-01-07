; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_dma_debug_create_entries.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_dma_debug_create_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_debug_entry = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DMA_DEBUG_DYNAMIC_ENTRIES = common dso_local global i32 0, align 4
@free_entries = common dso_local global i32 0, align 4
@num_free_entries = common dso_local global i32 0, align 4
@nr_total_entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dma_debug_create_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_debug_create_entries(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_debug_entry*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @get_zeroed_page(i32 %6)
  %8 = inttoptr i64 %7 to i8*
  %9 = bitcast i8* %8 to %struct.dma_debug_entry*
  store %struct.dma_debug_entry* %9, %struct.dma_debug_entry** %4, align 8
  %10 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %4, align 8
  %11 = icmp ne %struct.dma_debug_entry* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %37

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %27, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @DMA_DEBUG_DYNAMIC_ENTRIES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %21, i64 %23
  %25 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %24, i32 0, i32 0
  %26 = call i32 @list_add_tail(i32* %25, i32* @free_entries)
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %16

30:                                               ; preds = %16
  %31 = load i32, i32* @DMA_DEBUG_DYNAMIC_ENTRIES, align 4
  %32 = load i32, i32* @num_free_entries, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* @num_free_entries, align 4
  %34 = load i32, i32* @DMA_DEBUG_DYNAMIC_ENTRIES, align 4
  %35 = load i32, i32* @nr_total_entries, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* @nr_total_entries, align 4
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %30, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
