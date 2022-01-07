; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_range_dma_map.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_range_dma_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmm_range = type { i64, i64, i32*, i32*, i32 }
%struct.device = type { i32 }
%struct.page = type { i32 }

@EBUSY = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@HMM_PFN_WRITE = common dso_local global i64 0, align 8
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hmm_range_dma_map(%struct.hmm_range* %0, %struct.device* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.hmm_range*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.page*, align 8
  store %struct.hmm_range* %0, %struct.hmm_range** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @hmm_range_fault(%struct.hmm_range* %18, i32 %19)
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %13, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %4
  %24 = load i64, i64* %13, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i64, i64* %13, align 8
  br label %31

28:                                               ; preds = %23
  %29 = load i64, i64* @EBUSY, align 8
  %30 = sub nsw i64 0, %29
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi i64 [ %27, %26 ], [ %30, %28 ]
  store i64 %32, i64* %5, align 8
  br label %181

33:                                               ; preds = %4
  %34 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %35 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %38 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %36, %39
  %41 = load i64, i64* @PAGE_SHIFT, align 8
  %42 = lshr i64 %40, %41
  store i64 %42, i64* %11, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  br label %43

43:                                               ; preds = %110, %33
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %113

47:                                               ; preds = %43
  %48 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %48, i32* %14, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 0, i32* %51, align 4
  %52 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %53 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %54 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.page* @hmm_device_entry_to_page(%struct.hmm_range* %52, i32 %58)
  store %struct.page* %59, %struct.page** %15, align 8
  %60 = load %struct.page*, %struct.page** %15, align 8
  %61 = icmp eq %struct.page* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  br label %110

63:                                               ; preds = %47
  %64 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %65 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i64, i64* @EBUSY, align 8
  %70 = sub nsw i64 0, %69
  store i64 %70, i64* %13, align 8
  br label %115

71:                                               ; preds = %63
  %72 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %73 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %79 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @HMM_PFN_WRITE, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %77, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %71
  %87 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %86, %71
  %89 = load %struct.device*, %struct.device** %7, align 8
  %90 = load %struct.page*, %struct.page** %15, align 8
  %91 = load i32, i32* @PAGE_SIZE, align 4
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @dma_map_page(%struct.device* %89, %struct.page* %90, i32 0, i32 %91, i32 %92)
  %94 = load i32*, i32** %8, align 8
  %95 = load i64, i64* %10, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32 %93, i32* %96, align 4
  %97 = load %struct.device*, %struct.device** %7, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = load i64, i64* %10, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @dma_mapping_error(%struct.device* %97, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %88
  %105 = load i64, i64* @EFAULT, align 8
  %106 = sub nsw i64 0, %105
  store i64 %106, i64* %13, align 8
  br label %115

107:                                              ; preds = %88
  %108 = load i64, i64* %12, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %12, align 8
  br label %110

110:                                              ; preds = %107, %62
  %111 = load i64, i64* %10, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %10, align 8
  br label %43

113:                                              ; preds = %43
  %114 = load i64, i64* %12, align 8
  store i64 %114, i64* %5, align 8
  br label %181

115:                                              ; preds = %104, %68
  %116 = load i64, i64* %10, align 8
  store i64 %116, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %117

117:                                              ; preds = %176, %115
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* %11, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load i64, i64* %12, align 8
  %123 = icmp ne i64 %122, 0
  br label %124

124:                                              ; preds = %121, %117
  %125 = phi i1 [ false, %117 ], [ %123, %121 ]
  br i1 %125, label %126, label %179

126:                                              ; preds = %124
  %127 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %127, i32* %16, align 4
  %128 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %129 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %130 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* %10, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call %struct.page* @hmm_device_entry_to_page(%struct.hmm_range* %128, i32 %134)
  store %struct.page* %135, %struct.page** %17, align 8
  %136 = load %struct.page*, %struct.page** %17, align 8
  %137 = icmp eq %struct.page* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %126
  br label %176

139:                                              ; preds = %126
  %140 = load %struct.device*, %struct.device** %7, align 8
  %141 = load i32*, i32** %8, align 8
  %142 = load i64, i64* %10, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @dma_mapping_error(%struct.device* %140, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  br label %176

148:                                              ; preds = %139
  %149 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %150 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* %10, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.hmm_range*, %struct.hmm_range** %6, align 8
  %156 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* @HMM_PFN_WRITE, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %154, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %148
  %164 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  store i32 %164, i32* %16, align 4
  br label %165

165:                                              ; preds = %163, %148
  %166 = load %struct.device*, %struct.device** %7, align 8
  %167 = load i32*, i32** %8, align 8
  %168 = load i64, i64* %10, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @PAGE_SIZE, align 4
  %172 = load i32, i32* %16, align 4
  %173 = call i32 @dma_unmap_page(%struct.device* %166, i32 %170, i32 %171, i32 %172)
  %174 = load i64, i64* %12, align 8
  %175 = add i64 %174, -1
  store i64 %175, i64* %12, align 8
  br label %176

176:                                              ; preds = %165, %147, %138
  %177 = load i64, i64* %10, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %10, align 8
  br label %117

179:                                              ; preds = %124
  %180 = load i64, i64* %13, align 8
  store i64 %180, i64* %5, align 8
  br label %181

181:                                              ; preds = %179, %113, %31
  %182 = load i64, i64* %5, align 8
  ret i64 %182
}

declare dso_local i64 @hmm_range_fault(%struct.hmm_range*, i32) #1

declare dso_local %struct.page* @hmm_device_entry_to_page(%struct.hmm_range*, i32) #1

declare dso_local i32 @dma_map_page(%struct.device*, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
