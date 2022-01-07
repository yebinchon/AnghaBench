; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_debug_dma_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_debug_dma_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_debug_entry = type { i64, i32, i32, i32, i32, %struct.device*, i32 }

@dma_debug_coherent = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_dma_alloc_coherent(%struct.device* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dma_debug_entry*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = call i32 (...) @dma_debug_disabled()
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %72

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %72

21:                                               ; preds = %14
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @is_vmalloc_addr(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @virt_addr_valid(i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %72

30:                                               ; preds = %25, %21
  %31 = call %struct.dma_debug_entry* (...) @dma_entry_alloc()
  store %struct.dma_debug_entry* %31, %struct.dma_debug_entry** %9, align 8
  %32 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %9, align 8
  %33 = icmp ne %struct.dma_debug_entry* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %72

35:                                               ; preds = %30
  %36 = load i32, i32* @dma_debug_coherent, align 4
  %37 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %9, align 8
  %38 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %9, align 8
  %41 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %40, i32 0, i32 5
  store %struct.device* %39, %struct.device** %41, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @offset_in_page(i8* %42)
  %44 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %9, align 8
  %45 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %9, align 8
  %48 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %9, align 8
  %51 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %53 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %9, align 8
  %54 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = call i64 @is_vmalloc_addr(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %35
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @vmalloc_to_pfn(i8* %59)
  %61 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %9, align 8
  %62 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %69

63:                                               ; preds = %35
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @virt_to_page(i8* %64)
  %66 = call i32 @page_to_pfn(i32 %65)
  %67 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %9, align 8
  %68 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %63, %58
  %70 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %9, align 8
  %71 = call i32 @add_dma_entry(%struct.dma_debug_entry* %70)
  br label %72

72:                                               ; preds = %69, %34, %29, %20, %13
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_debug_disabled(...) #1

declare dso_local i64 @is_vmalloc_addr(i8*) #1

declare dso_local i32 @virt_addr_valid(i8*) #1

declare dso_local %struct.dma_debug_entry* @dma_entry_alloc(...) #1

declare dso_local i32 @offset_in_page(i8*) #1

declare dso_local i32 @vmalloc_to_pfn(i8*) #1

declare dso_local i32 @page_to_pfn(i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i32 @add_dma_entry(%struct.dma_debug_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
