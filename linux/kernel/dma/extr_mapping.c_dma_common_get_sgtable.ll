; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_mapping.c_dma_common_get_sgtable.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_mapping.c_dma_common_get_sgtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sg_table = type { i32 }
%struct.page = type { i32 }

@CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_common_get_sgtable(%struct.device* %0, %struct.sg_table* %1, i8* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.sg_table*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.sg_table* %1, %struct.sg_table** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.device*, %struct.device** %8, align 8
  %18 = call i32 @dev_is_dma_coherent(%struct.device* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN, align 4
  %22 = call i32 @IS_ENABLED(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %60

27:                                               ; preds = %20
  %28 = load %struct.device*, %struct.device** %8, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @arch_dma_coherent_to_pfn(%struct.device* %28, i8* %29, i32 %30)
  store i64 %31, i64* %16, align 8
  %32 = load i64, i64* %16, align 8
  %33 = call i32 @pfn_valid(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @ENXIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %60

38:                                               ; preds = %27
  %39 = load i64, i64* %16, align 8
  %40 = call %struct.page* @pfn_to_page(i64 %39)
  store %struct.page* %40, %struct.page** %14, align 8
  br label %44

41:                                               ; preds = %6
  %42 = load i8*, i8** %10, align 8
  %43 = call %struct.page* @virt_to_page(i8* %42)
  store %struct.page* %43, %struct.page** %14, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i32 @sg_alloc_table(%struct.sg_table* %45, i32 1, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %44
  %51 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %52 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.page*, %struct.page** %14, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @PAGE_ALIGN(i64 %55)
  %57 = call i32 @sg_set_page(i32 %53, %struct.page* %54, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %50, %44
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %58, %35, %24
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @dev_is_dma_coherent(%struct.device*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i64 @arch_dma_coherent_to_pfn(%struct.device*, i8*, i32) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @sg_alloc_table(%struct.sg_table*, i32, i32) #1

declare dso_local i32 @sg_set_page(i32, %struct.page*, i32, i32) #1

declare dso_local i32 @PAGE_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
