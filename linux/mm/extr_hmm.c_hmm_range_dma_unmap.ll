; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_range_dma_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_range_dma_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmm_range = type { i64, i64, i32*, i32*, i32* }
%struct.device = type { i32 }
%struct.page = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@HMM_PFN_WRITE = common dso_local global i64 0, align 8
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@HMM_PFN_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hmm_range_dma_unmap(%struct.hmm_range* %0, %struct.device* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.hmm_range*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  store %struct.hmm_range* %0, %struct.hmm_range** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %12, align 8
  %15 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %16 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %19 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %5, align 8
  br label %119

25:                                               ; preds = %4
  %26 = load i64*, i64** %8, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub nsw i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %119

31:                                               ; preds = %25
  %32 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %33 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* @EINVAL, align 8
  %38 = sub nsw i64 0, %37
  store i64 %38, i64* %5, align 8
  br label %119

39:                                               ; preds = %31
  %40 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %41 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %44 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = load i64, i64* @PAGE_SHIFT, align 8
  %48 = ashr i64 %46, %47
  store i64 %48, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %49

49:                                               ; preds = %114, %39
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %117

53:                                               ; preds = %49
  %54 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %54, i32* %13, align 4
  %55 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %56 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %57 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.page* @hmm_device_entry_to_page(%struct.hmm_range* %55, i32 %61)
  store %struct.page* %62, %struct.page** %14, align 8
  %63 = load %struct.page*, %struct.page** %14, align 8
  %64 = icmp eq %struct.page* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %114

66:                                               ; preds = %53
  %67 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %68 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %74 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @HMM_PFN_WRITE, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %72, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %66
  %82 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load %struct.page*, %struct.page** %14, align 8
  %87 = call i32 @set_page_dirty(%struct.page* %86)
  br label %88

88:                                               ; preds = %85, %81
  br label %89

89:                                               ; preds = %88, %66
  %90 = load %struct.device*, %struct.device** %7, align 8
  %91 = load i64*, i64** %8, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @PAGE_SIZE, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @dma_unmap_page(%struct.device* %90, i64 %94, i32 %95, i32 %96)
  %98 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %99 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @HMM_PFN_NONE, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %105 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32 %103, i32* %108, align 4
  %109 = load i64*, i64** %8, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  store i64 0, i64* %111, align 8
  %112 = load i64, i64* %12, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %12, align 8
  br label %114

114:                                              ; preds = %89, %65
  %115 = load i64, i64* %10, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %10, align 8
  br label %49

117:                                              ; preds = %49
  %118 = load i64, i64* %12, align 8
  store i64 %118, i64* %5, align 8
  br label %119

119:                                              ; preds = %117, %36, %28, %22
  %120 = load i64, i64* %5, align 8
  ret i64 %120
}

declare dso_local %struct.page* @hmm_device_entry_to_page(%struct.hmm_range*, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
