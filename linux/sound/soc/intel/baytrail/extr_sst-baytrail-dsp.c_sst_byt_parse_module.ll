; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-dsp.c_sst_byt_parse_module.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-dsp.c_sst_byt_parse_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.sst_fw = type { i32 }
%struct.sst_byt_fw_module_header = type { i32, i32, i32 }
%struct.dma_block_info = type { i64, i32, i64 }
%struct.sst_module = type { i64, i8*, i32, i64 }
%struct.sst_module_template = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"block %d size invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SST_MEM_IRAM = common dso_local global i32 0, align 4
@SST_MEM_DRAM = common dso_local global i32 0, align 4
@SST_MEM_CACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"wrong ram type 0x%x in block0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*, %struct.sst_fw*, %struct.sst_byt_fw_module_header*)* @sst_byt_parse_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_byt_parse_module(%struct.sst_dsp* %0, %struct.sst_fw* %1, %struct.sst_byt_fw_module_header* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sst_dsp*, align 8
  %6 = alloca %struct.sst_fw*, align 8
  %7 = alloca %struct.sst_byt_fw_module_header*, align 8
  %8 = alloca %struct.dma_block_info*, align 8
  %9 = alloca %struct.sst_module*, align 8
  %10 = alloca %struct.sst_module_template, align 4
  %11 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %5, align 8
  store %struct.sst_fw* %1, %struct.sst_fw** %6, align 8
  store %struct.sst_byt_fw_module_header* %2, %struct.sst_byt_fw_module_header** %7, align 8
  %12 = call i32 @memset(%struct.sst_module_template* %10, i32 0, i32 8)
  %13 = load %struct.sst_byt_fw_module_header*, %struct.sst_byt_fw_module_header** %7, align 8
  %14 = getelementptr inbounds %struct.sst_byt_fw_module_header, %struct.sst_byt_fw_module_header* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.sst_module_template, %struct.sst_module_template* %10, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load %struct.sst_byt_fw_module_header*, %struct.sst_byt_fw_module_header** %7, align 8
  %18 = getelementptr inbounds %struct.sst_byt_fw_module_header, %struct.sst_byt_fw_module_header* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.sst_module_template, %struct.sst_module_template* %10, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.sst_fw*, %struct.sst_fw** %6, align 8
  %22 = call %struct.sst_module* @sst_module_new(%struct.sst_fw* %21, %struct.sst_module_template* %10, i32* null)
  store %struct.sst_module* %22, %struct.sst_module** %9, align 8
  %23 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %24 = icmp eq %struct.sst_module* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %139

28:                                               ; preds = %3
  %29 = load %struct.sst_byt_fw_module_header*, %struct.sst_byt_fw_module_header** %7, align 8
  %30 = bitcast %struct.sst_byt_fw_module_header* %29 to i8*
  %31 = getelementptr i8, i8* %30, i64 12
  %32 = bitcast i8* %31 to %struct.dma_block_info*
  store %struct.dma_block_info* %32, %struct.dma_block_info** %8, align 8
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %135, %28
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.sst_byt_fw_module_header*, %struct.sst_byt_fw_module_header** %7, align 8
  %36 = getelementptr inbounds %struct.sst_byt_fw_module_header, %struct.sst_byt_fw_module_header* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %138

39:                                               ; preds = %33
  %40 = load %struct.dma_block_info*, %struct.dma_block_info** %8, align 8
  %41 = getelementptr inbounds %struct.dma_block_info, %struct.dma_block_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %46 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %139

52:                                               ; preds = %39
  %53 = load %struct.dma_block_info*, %struct.dma_block_info** %8, align 8
  %54 = getelementptr inbounds %struct.dma_block_info, %struct.dma_block_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %103 [
    i32 128, label %56
    i32 129, label %70
    i32 130, label %84
  ]

56:                                               ; preds = %52
  %57 = load %struct.dma_block_info*, %struct.dma_block_info** %8, align 8
  %58 = getelementptr inbounds %struct.dma_block_info, %struct.dma_block_info* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %61 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %59, %63
  %65 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %66 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %65, i32 0, i32 3
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* @SST_MEM_IRAM, align 4
  %68 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %69 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  br label %114

70:                                               ; preds = %52
  %71 = load %struct.dma_block_info*, %struct.dma_block_info** %8, align 8
  %72 = getelementptr inbounds %struct.dma_block_info, %struct.dma_block_info* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %75 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %73, %77
  %79 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %80 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %79, i32 0, i32 3
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* @SST_MEM_DRAM, align 4
  %82 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %83 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  br label %114

84:                                               ; preds = %52
  %85 = load %struct.dma_block_info*, %struct.dma_block_info** %8, align 8
  %86 = getelementptr inbounds %struct.dma_block_info, %struct.dma_block_info* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %89 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %93 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %91, %95
  %97 = add nsw i64 %87, %96
  %98 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %99 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  %100 = load i32, i32* @SST_MEM_CACHE, align 4
  %101 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %102 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  br label %114

103:                                              ; preds = %52
  %104 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %105 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.dma_block_info*, %struct.dma_block_info** %8, align 8
  %108 = getelementptr inbounds %struct.dma_block_info, %struct.dma_block_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %139

114:                                              ; preds = %84, %70, %56
  %115 = load %struct.dma_block_info*, %struct.dma_block_info** %8, align 8
  %116 = getelementptr inbounds %struct.dma_block_info, %struct.dma_block_info* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %119 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load %struct.dma_block_info*, %struct.dma_block_info** %8, align 8
  %121 = bitcast %struct.dma_block_info* %120 to i8*
  %122 = getelementptr i8, i8* %121, i64 24
  %123 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %124 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load %struct.sst_module*, %struct.sst_module** %9, align 8
  %126 = call i32 @sst_module_alloc_blocks(%struct.sst_module* %125)
  %127 = load %struct.dma_block_info*, %struct.dma_block_info** %8, align 8
  %128 = bitcast %struct.dma_block_info* %127 to i8*
  %129 = getelementptr i8, i8* %128, i64 24
  %130 = load %struct.dma_block_info*, %struct.dma_block_info** %8, align 8
  %131 = getelementptr inbounds %struct.dma_block_info, %struct.dma_block_info* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr i8, i8* %129, i64 %132
  %134 = bitcast i8* %133 to %struct.dma_block_info*
  store %struct.dma_block_info* %134, %struct.dma_block_info** %8, align 8
  br label %135

135:                                              ; preds = %114
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  br label %33

138:                                              ; preds = %33
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %103, %44, %25
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @memset(%struct.sst_module_template*, i32, i32) #1

declare dso_local %struct.sst_module* @sst_module_new(%struct.sst_fw*, %struct.sst_module_template*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @sst_module_alloc_blocks(%struct.sst_module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
