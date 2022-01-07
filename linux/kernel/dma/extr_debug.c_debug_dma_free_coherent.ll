; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_debug_dma_free_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_debug_dma_free_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_debug_entry = type { i64, i32, i32, i32, i32, %struct.device*, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@dma_debug_coherent = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_dma_free_coherent(%struct.device* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_debug_entry, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %9, i32 0, i32 1
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %9, i32 0, i32 2
  %14 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %9, i32 0, i32 3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %9, i32 0, i32 4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @offset_in_page(i8* %18)
  store i32 %19, i32* %17, align 4
  %20 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %9, i32 0, i32 5
  %21 = load %struct.device*, %struct.device** %5, align 8
  store %struct.device* %21, %struct.device** %20, align 8
  %22 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %9, i32 0, i32 6
  %23 = load i32, i32* @dma_debug_coherent, align 4
  store i32 %23, i32* %22, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @is_vmalloc_addr(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @virt_addr_valid(i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %52

32:                                               ; preds = %27, %4
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 @is_vmalloc_addr(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @vmalloc_to_pfn(i8* %37)
  %39 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %9, i32 0, i32 1
  store i32 %38, i32* %39, align 8
  br label %45

40:                                               ; preds = %32
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @virt_to_page(i8* %41)
  %43 = call i32 @page_to_pfn(i32 %42)
  %44 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %9, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  br label %45

45:                                               ; preds = %40, %36
  %46 = call i32 (...) @dma_debug_disabled()
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %52

50:                                               ; preds = %45
  %51 = call i32 @check_unmap(%struct.dma_debug_entry* %9)
  br label %52

52:                                               ; preds = %50, %49, %31
  ret void
}

declare dso_local i32 @offset_in_page(i8*) #1

declare dso_local i64 @is_vmalloc_addr(i8*) #1

declare dso_local i32 @virt_addr_valid(i8*) #1

declare dso_local i32 @vmalloc_to_pfn(i8*) #1

declare dso_local i32 @page_to_pfn(i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_debug_disabled(...) #1

declare dso_local i32 @check_unmap(%struct.dma_debug_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
