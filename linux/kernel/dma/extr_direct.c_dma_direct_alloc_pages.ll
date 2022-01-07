; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_direct.c_dma_direct_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_direct.c_dma_direct_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.page = type opaque

@DMA_ATTR_NO_KERNEL_MAPPING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Rejecting highmem page from CMA.\0A\00", align 1
@CONFIG_ARCH_HAS_UNCACHED_SEGMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dma_direct_alloc_pages(%struct.device* %0, i64 %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i64, i64* %11, align 8
  %19 = call i8* @__dma_direct_alloc_pages(%struct.device* %14, i64 %15, i32* %16, i32 %17, i64 %18)
  %20 = bitcast i8* %19 to %struct.page*
  store %struct.page* %20, %struct.page** %12, align 8
  %21 = load %struct.page*, %struct.page** %12, align 8
  %22 = icmp ne %struct.page* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %113

24:                                               ; preds = %5
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @DMA_ATTR_NO_KERNEL_MAPPING, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  %30 = load %struct.device*, %struct.device** %7, align 8
  %31 = call i64 @force_dma_unencrypted(%struct.device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %29
  %34 = load %struct.page*, %struct.page** %12, align 8
  %35 = bitcast %struct.page* %34 to i8*
  %36 = call i64 @PageHighMem(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.page*, %struct.page** %12, align 8
  %40 = bitcast %struct.page* %39 to i8*
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @arch_dma_prep_coherent(i8* %40, i64 %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.device*, %struct.device** %7, align 8
  %45 = load %struct.page*, %struct.page** %12, align 8
  %46 = bitcast %struct.page* %45 to i8*
  %47 = call i32 @page_to_phys(i8* %46)
  %48 = call i32 @phys_to_dma(%struct.device* %44, i32 %47)
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  %50 = load %struct.page*, %struct.page** %12, align 8
  %51 = bitcast %struct.page* %50 to i8*
  store i8* %51, i8** %6, align 8
  br label %113

52:                                               ; preds = %29, %24
  %53 = load %struct.page*, %struct.page** %12, align 8
  %54 = bitcast %struct.page* %53 to i8*
  %55 = call i64 @PageHighMem(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.device*, %struct.device** %7, align 8
  %59 = call i32 @dev_info(%struct.device* %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.device*, %struct.device** %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.page*, %struct.page** %12, align 8
  %63 = bitcast %struct.page* %62 to i8*
  %64 = call i32 @__dma_direct_free_pages(%struct.device* %60, i64 %61, i8* %63)
  store i8* null, i8** %6, align 8
  br label %113

65:                                               ; preds = %52
  %66 = load %struct.page*, %struct.page** %12, align 8
  %67 = bitcast %struct.page* %66 to i8*
  %68 = call i8* @page_address(i8* %67)
  store i8* %68, i8** %13, align 8
  %69 = load %struct.device*, %struct.device** %7, align 8
  %70 = call i64 @force_dma_unencrypted(%struct.device* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %65
  %73 = load i8*, i8** %13, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @get_order(i64 %75)
  %77 = shl i32 1, %76
  %78 = call i32 @set_memory_decrypted(i64 %74, i32 %77)
  %79 = load %struct.device*, %struct.device** %7, align 8
  %80 = load %struct.page*, %struct.page** %12, align 8
  %81 = bitcast %struct.page* %80 to i8*
  %82 = call i32 @page_to_phys(i8* %81)
  %83 = call i32 @__phys_to_dma(%struct.device* %79, i32 %82)
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  br label %92

85:                                               ; preds = %65
  %86 = load %struct.device*, %struct.device** %7, align 8
  %87 = load %struct.page*, %struct.page** %12, align 8
  %88 = bitcast %struct.page* %87 to i8*
  %89 = call i32 @page_to_phys(i8* %88)
  %90 = call i32 @phys_to_dma(%struct.device* %86, i32 %89)
  %91 = load i32*, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %85, %72
  %93 = load i8*, i8** %13, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @memset(i8* %93, i32 0, i64 %94)
  %96 = load i32, i32* @CONFIG_ARCH_HAS_UNCACHED_SEGMENT, align 4
  %97 = call i64 @IS_ENABLED(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %92
  %100 = load %struct.device*, %struct.device** %7, align 8
  %101 = load i64, i64* %11, align 8
  %102 = call i64 @dma_alloc_need_uncached(%struct.device* %100, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load %struct.page*, %struct.page** %12, align 8
  %106 = bitcast %struct.page* %105 to i8*
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @arch_dma_prep_coherent(i8* %106, i64 %107)
  %109 = load i8*, i8** %13, align 8
  %110 = call i8* @uncached_kernel_address(i8* %109)
  store i8* %110, i8** %13, align 8
  br label %111

111:                                              ; preds = %104, %99, %92
  %112 = load i8*, i8** %13, align 8
  store i8* %112, i8** %6, align 8
  br label %113

113:                                              ; preds = %111, %57, %43, %23
  %114 = load i8*, i8** %6, align 8
  ret i8* %114
}

declare dso_local i8* @__dma_direct_alloc_pages(%struct.device*, i64, i32*, i32, i64) #1

declare dso_local i64 @force_dma_unencrypted(%struct.device*) #1

declare dso_local i64 @PageHighMem(i8*) #1

declare dso_local i32 @arch_dma_prep_coherent(i8*, i64) #1

declare dso_local i32 @phys_to_dma(%struct.device*, i32) #1

declare dso_local i32 @page_to_phys(i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @__dma_direct_free_pages(%struct.device*, i64, i8*) #1

declare dso_local i8* @page_address(i8*) #1

declare dso_local i32 @set_memory_decrypted(i64, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @__phys_to_dma(%struct.device*, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @dma_alloc_need_uncached(%struct.device*, i64) #1

declare dso_local i8* @uncached_kernel_address(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
