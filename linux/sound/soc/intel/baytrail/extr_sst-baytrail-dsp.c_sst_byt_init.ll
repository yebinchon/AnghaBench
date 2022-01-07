; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-dsp.c_sst_byt_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-dsp.c_sst_byt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_adsp_memregion = type { i32, i32, i32, i32 }
%struct.sst_dsp = type { i32, i32, %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.sst_pdata = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@byt_region = common dso_local global %struct.sst_adsp_memregion* null, align 8
@SST_BYT_IRAM_OFFSET = common dso_local global i32 0, align 4
@SST_BYT_DRAM_OFFSET = common dso_local global i32 0, align 4
@SST_BYT_SHIM_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to get mem resources\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to map resources\0A\00", align 1
@SST_IMRX = common dso_local global i32 0, align 4
@SST_IMRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*, %struct.sst_pdata*)* @sst_byt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_byt_init(%struct.sst_dsp* %0, %struct.sst_pdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_dsp*, align 8
  %5 = alloca %struct.sst_pdata*, align 8
  %6 = alloca %struct.sst_adsp_memregion*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %4, align 8
  store %struct.sst_pdata* %1, %struct.sst_pdata** %5, align 8
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %17 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %16, i32 0, i32 3
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %7, align 8
  %19 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %20 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %38 [
    i32 128, label %22
  ]

22:                                               ; preds = %2
  %23 = load %struct.sst_adsp_memregion*, %struct.sst_adsp_memregion** @byt_region, align 8
  store %struct.sst_adsp_memregion* %23, %struct.sst_adsp_memregion** %6, align 8
  %24 = load %struct.sst_adsp_memregion*, %struct.sst_adsp_memregion** @byt_region, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.sst_adsp_memregion* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* @SST_BYT_IRAM_OFFSET, align 4
  %27 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %28 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @SST_BYT_DRAM_OFFSET, align 4
  %31 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %32 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @SST_BYT_SHIM_OFFSET, align 4
  %35 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %36 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  br label %42

38:                                               ; preds = %2
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %133

42:                                               ; preds = %22
  %43 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %44 = load %struct.sst_pdata*, %struct.sst_pdata** %5, align 8
  %45 = call i32 @sst_byt_resource_map(%struct.sst_dsp* %43, %struct.sst_pdata* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %133

52:                                               ; preds = %42
  %53 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %54 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @DMA_BIT_MASK(i32 32)
  %57 = call i32 @dma_coerce_mask_and_coherent(i32 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %133

62:                                               ; preds = %52
  %63 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %64 = load i32, i32* @SST_IMRX, align 4
  %65 = call i32 @sst_dsp_shim_update_bits64(%struct.sst_dsp* %63, i32 %64, i32 3, i32 0)
  %66 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %67 = load i32, i32* @SST_IMRD, align 4
  %68 = call i32 @sst_dsp_shim_update_bits64(%struct.sst_dsp* %66, i32 %67, i32 3, i32 0)
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %129, %62
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %132

73:                                               ; preds = %69
  %74 = load %struct.sst_adsp_memregion*, %struct.sst_adsp_memregion** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %74, i64 %76
  %78 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %12, align 4
  %80 = load %struct.sst_adsp_memregion*, %struct.sst_adsp_memregion** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %80, i64 %82
  %84 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.sst_adsp_memregion*, %struct.sst_adsp_memregion** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %86, i64 %88
  %90 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %85, %91
  %93 = load %struct.sst_adsp_memregion*, %struct.sst_adsp_memregion** %6, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %93, i64 %95
  %97 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = sdiv i32 %92, %98
  store i32 %99, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %125, %73
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.sst_adsp_memregion*, %struct.sst_adsp_memregion** %6, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %102, i64 %104
  %106 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %101, %107
  br i1 %108, label %109, label %128

109:                                              ; preds = %100
  %110 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.sst_adsp_memregion*, %struct.sst_adsp_memregion** %6, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %113, i64 %115
  %117 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %121 = call i32 @sst_mem_block_register(%struct.sst_dsp* %110, i32 %111, i32 %112, i32 %118, i32* null, i32 %119, %struct.sst_dsp* %120)
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %109
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %100

128:                                              ; preds = %100
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %69

132:                                              ; preds = %69
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %60, %48, %38
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @ARRAY_SIZE(%struct.sst_adsp_memregion*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @sst_byt_resource_map(%struct.sst_dsp*, %struct.sst_pdata*) #1

declare dso_local i32 @dma_coerce_mask_and_coherent(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @sst_dsp_shim_update_bits64(%struct.sst_dsp*, i32, i32, i32) #1

declare dso_local i32 @sst_mem_block_register(%struct.sst_dsp*, i32, i32, i32, i32*, i32, %struct.sst_dsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
