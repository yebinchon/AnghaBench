; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_direct.c___dma_direct_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_direct.c___dma_direct_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.device = type { i32 }

@DMA_ATTR_NO_WARN = common dso_local global i64 0, align 8
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@CONFIG_ZONE_DMA32 = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@CONFIG_ZONE_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @__dma_direct_alloc_pages(%struct.device* %0, i64 %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @PAGE_ALIGN(i64 %15)
  store i64 %16, i64* %11, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 @dev_to_node(%struct.device* %17)
  store i32 %18, i32* %12, align 4
  store %struct.page* null, %struct.page** %13, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @DMA_ATTR_NO_WARN, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i32, i32* @__GFP_NOWARN, align 4
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %23, %5
  %28 = load i32, i32* @__GFP_ZERO, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @__dma_direct_optimal_gfp_mask(%struct.device* %32, i32 %35, i64* %14)
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call %struct.page* @dma_alloc_contiguous(%struct.device* %39, i64 %40, i32 %41)
  store %struct.page* %42, %struct.page** %13, align 8
  %43 = load %struct.page*, %struct.page** %13, align 8
  %44 = icmp ne %struct.page* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %27
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load %struct.page*, %struct.page** %13, align 8
  %48 = call i32 @page_to_phys(%struct.page* %47)
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @dma_coherent_ok(%struct.device* %46, i32 %48, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = load %struct.page*, %struct.page** %13, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @dma_free_contiguous(%struct.device* %53, %struct.page* %54, i64 %55)
  store %struct.page* null, %struct.page** %13, align 8
  br label %57

57:                                               ; preds = %52, %45, %27
  br label %58

58:                                               ; preds = %109, %96, %57
  %59 = load %struct.page*, %struct.page** %13, align 8
  %60 = icmp ne %struct.page* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @get_order(i64 %64)
  %66 = call %struct.page* @alloc_pages_node(i32 %62, i32 %63, i32 %65)
  store %struct.page* %66, %struct.page** %13, align 8
  br label %67

67:                                               ; preds = %61, %58
  %68 = load %struct.page*, %struct.page** %13, align 8
  %69 = icmp ne %struct.page* %68, null
  br i1 %69, label %70, label %117

70:                                               ; preds = %67
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = load %struct.page*, %struct.page** %13, align 8
  %73 = call i32 @page_to_phys(%struct.page* %72)
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @dma_coherent_ok(%struct.device* %71, i32 %73, i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %117, label %77

77:                                               ; preds = %70
  %78 = load %struct.device*, %struct.device** %6, align 8
  %79 = load %struct.page*, %struct.page** %13, align 8
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @dma_free_contiguous(%struct.device* %78, %struct.page* %79, i64 %80)
  store %struct.page* null, %struct.page** %13, align 8
  %82 = load i32, i32* @CONFIG_ZONE_DMA32, align 4
  %83 = call i64 @IS_ENABLED(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %77
  %86 = load i64, i64* %14, align 8
  %87 = call i64 @DMA_BIT_MASK(i32 64)
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @GFP_DMA32, align 4
  %92 = load i32, i32* @GFP_DMA, align 4
  %93 = or i32 %91, %92
  %94 = and i32 %90, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* @GFP_DMA32, align 4
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %9, align 4
  br label %58

100:                                              ; preds = %89, %85, %77
  %101 = load i32, i32* @CONFIG_ZONE_DMA, align 4
  %102 = call i64 @IS_ENABLED(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @GFP_DMA, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @GFP_DMA32, align 4
  %112 = xor i32 %111, -1
  %113 = and i32 %110, %112
  %114 = load i32, i32* @GFP_DMA, align 4
  %115 = or i32 %113, %114
  store i32 %115, i32* %9, align 4
  br label %58

116:                                              ; preds = %104, %100
  br label %117

117:                                              ; preds = %116, %70, %67
  %118 = load %struct.page*, %struct.page** %13, align 8
  ret %struct.page* %118
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @dev_to_node(%struct.device*) #1

declare dso_local i32 @__dma_direct_optimal_gfp_mask(%struct.device*, i32, i64*) #1

declare dso_local %struct.page* @dma_alloc_contiguous(%struct.device*, i64, i32) #1

declare dso_local i32 @dma_coherent_ok(%struct.device*, i32, i64) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

declare dso_local i32 @dma_free_contiguous(%struct.device*, %struct.page*, i64) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @DMA_BIT_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
