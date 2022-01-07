; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_direct.c_dma_direct_map_page.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_direct.c_dma_direct_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.page = type { i32 }

@DMA_MAPPING_ERROR = common dso_local global i32 0, align 4
@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_direct_map_page(%struct.device* %0, %struct.page* %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.page* %1, %struct.page** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %16 = load %struct.page*, %struct.page** %9, align 8
  %17 = call i64 @page_to_phys(%struct.page* %16)
  %18 = load i64, i64* %10, align 8
  %19 = add i64 %17, %18
  store i64 %19, i64* %14, align 8
  %20 = load %struct.device*, %struct.device** %8, align 8
  %21 = load i64, i64* %14, align 8
  %22 = call i32 @phys_to_dma(%struct.device* %20, i64 %21)
  store i32 %22, i32* %15, align 4
  %23 = load %struct.device*, %struct.device** %8, align 8
  %24 = load i32, i32* %15, align 4
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @dma_direct_possible(%struct.device* %23, i32 %24, i64 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %6
  %33 = load %struct.device*, %struct.device** %8, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @swiotlb_map(%struct.device* %33, i64* %14, i32* %15, i64 %34, i32 %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %32
  %40 = load %struct.device*, %struct.device** %8, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @report_addr(%struct.device* %40, i32 %41, i64 %42)
  %44 = load i32, i32* @DMA_MAPPING_ERROR, align 4
  store i32 %44, i32* %7, align 4
  br label %62

45:                                               ; preds = %32, %6
  %46 = load %struct.device*, %struct.device** %8, align 8
  %47 = call i32 @dev_is_dma_coherent(%struct.device* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* @DMA_ATTR_SKIP_CPU_SYNC, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = load %struct.device*, %struct.device** %8, align 8
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @arch_sync_dma_for_device(%struct.device* %55, i64 %56, i64 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %49, %45
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %60, %39
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i64 @page_to_phys(%struct.page*) #1

declare dso_local i32 @phys_to_dma(%struct.device*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_direct_possible(%struct.device*, i32, i64) #1

declare dso_local i32 @swiotlb_map(%struct.device*, i64*, i32*, i64, i32, i64) #1

declare dso_local i32 @report_addr(%struct.device*, i32, i64) #1

declare dso_local i32 @dev_is_dma_coherent(%struct.device*) #1

declare dso_local i32 @arch_sync_dma_for_device(%struct.device*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
