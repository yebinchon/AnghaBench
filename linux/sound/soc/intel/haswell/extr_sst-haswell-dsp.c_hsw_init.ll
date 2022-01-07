; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-dsp.c_hsw_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-dsp.c_hsw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_adsp_memregion = type { i32, i32, i32, i32 }
%struct.sst_dsp = type { i32, %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.sst_pdata = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@lp_region = common dso_local global %struct.sst_adsp_memregion* null, align 8
@SST_LP_IRAM_OFFSET = common dso_local global i32 0, align 4
@SST_LPT_DSP_IRAM_OFFSET = common dso_local global i32 0, align 4
@SST_LPT_DSP_DRAM_OFFSET = common dso_local global i32 0, align 4
@SST_LP_SHIM_OFFSET = common dso_local global i32 0, align 4
@wpt_region = common dso_local global %struct.sst_adsp_memregion* null, align 8
@SST_WPT_IRAM_OFFSET = common dso_local global i32 0, align 4
@SST_WPT_DSP_IRAM_OFFSET = common dso_local global i32 0, align 4
@SST_WPT_DSP_DRAM_OFFSET = common dso_local global i32 0, align 4
@SST_WPT_SHIM_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"error: failed to get mem resources\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"error: failed to map resources\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"error: failed to set DSP D0 and reset SHIM\0A\00", align 1
@sst_hsw_ops = common dso_local global i32 0, align 4
@SST_VDRTCL0_DSRAMPGE_SHIFT = common dso_local global i32 0, align 4
@SST_VDRTCTL0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*, %struct.sst_pdata*)* @hsw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_init(%struct.sst_dsp* %0, %struct.sst_pdata* %1) #0 {
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
  %14 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %4, align 8
  store %struct.sst_pdata* %1, %struct.sst_pdata** %5, align 8
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %18 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %17, i32 0, i32 2
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %7, align 8
  %20 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %21 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %63 [
    i32 129, label %23
    i32 128, label %43
  ]

23:                                               ; preds = %2
  %24 = load %struct.sst_adsp_memregion*, %struct.sst_adsp_memregion** @lp_region, align 8
  store %struct.sst_adsp_memregion* %24, %struct.sst_adsp_memregion** %6, align 8
  %25 = load %struct.sst_adsp_memregion*, %struct.sst_adsp_memregion** @lp_region, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.sst_adsp_memregion* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* @SST_LP_IRAM_OFFSET, align 4
  %28 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %29 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @SST_LPT_DSP_IRAM_OFFSET, align 4
  %32 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %33 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* @SST_LPT_DSP_DRAM_OFFSET, align 4
  %36 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %37 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @SST_LP_SHIM_OFFSET, align 4
  %40 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %41 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 8
  br label %67

43:                                               ; preds = %2
  %44 = load %struct.sst_adsp_memregion*, %struct.sst_adsp_memregion** @wpt_region, align 8
  store %struct.sst_adsp_memregion* %44, %struct.sst_adsp_memregion** %6, align 8
  %45 = load %struct.sst_adsp_memregion*, %struct.sst_adsp_memregion** @wpt_region, align 8
  %46 = call i32 @ARRAY_SIZE(%struct.sst_adsp_memregion* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* @SST_WPT_IRAM_OFFSET, align 4
  %48 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %49 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @SST_WPT_DSP_IRAM_OFFSET, align 4
  %52 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %53 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* @SST_WPT_DSP_DRAM_OFFSET, align 4
  %56 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %57 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @SST_WPT_SHIM_OFFSET, align 4
  %60 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %61 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 8
  br label %67

63:                                               ; preds = %2
  %64 = load %struct.device*, %struct.device** %7, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %171

67:                                               ; preds = %43, %23
  %68 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %69 = load %struct.sst_pdata*, %struct.sst_pdata** %5, align 8
  %70 = call i32 @hsw_acpi_resource_map(%struct.sst_dsp* %68, %struct.sst_pdata* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.device*, %struct.device** %7, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %171

77:                                               ; preds = %67
  %78 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %79 = call i32 @hsw_set_dsp_D0(%struct.sst_dsp* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.device*, %struct.device** %7, align 8
  %84 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %171

86:                                               ; preds = %77
  %87 = load %struct.device*, %struct.device** %7, align 8
  %88 = call i32 @DMA_BIT_MASK(i32 31)
  %89 = call i32 @dma_coerce_mask_and_coherent(%struct.device* %87, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %171

94:                                               ; preds = %86
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %155, %94
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %158

99:                                               ; preds = %95
  %100 = load %struct.sst_adsp_memregion*, %struct.sst_adsp_memregion** %6, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %100, i64 %102
  %104 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %12, align 4
  %106 = load %struct.sst_adsp_memregion*, %struct.sst_adsp_memregion** %6, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %106, i64 %108
  %110 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.sst_adsp_memregion*, %struct.sst_adsp_memregion** %6, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %112, i64 %114
  %116 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %111, %117
  %119 = load %struct.sst_adsp_memregion*, %struct.sst_adsp_memregion** %6, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %119, i64 %121
  %123 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = sdiv i32 %118, %124
  store i32 %125, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %126

126:                                              ; preds = %151, %99
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.sst_adsp_memregion*, %struct.sst_adsp_memregion** %6, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %128, i64 %130
  %132 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %127, %133
  br i1 %134, label %135, label %154

135:                                              ; preds = %126
  %136 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.sst_adsp_memregion*, %struct.sst_adsp_memregion** %6, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %139, i64 %141
  %143 = getelementptr inbounds %struct.sst_adsp_memregion, %struct.sst_adsp_memregion* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %147 = call i32 @sst_mem_block_register(%struct.sst_dsp* %136, i32 %137, i32 %138, i32 %144, i32* @sst_hsw_ops, i32 %145, %struct.sst_dsp* %146)
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %12, align 4
  br label %151

151:                                              ; preds = %135
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %10, align 4
  br label %126

154:                                              ; preds = %126
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %9, align 4
  br label %95

158:                                              ; preds = %95
  %159 = load i32, i32* @SST_VDRTCL0_DSRAMPGE_SHIFT, align 4
  %160 = shl i32 1, %159
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = xor i32 %161, -1
  %163 = and i32 -1, %162
  %164 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %165 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @SST_VDRTCTL0, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @writel(i32 %163, i64 %169)
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %158, %92, %82, %73, %63
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @ARRAY_SIZE(%struct.sst_adsp_memregion*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @hsw_acpi_resource_map(%struct.sst_dsp*, %struct.sst_pdata*) #1

declare dso_local i32 @hsw_set_dsp_D0(%struct.sst_dsp*) #1

declare dso_local i32 @dma_coerce_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @sst_mem_block_register(%struct.sst_dsp*, i32, i32, i32, i32*, i32, %struct.sst_dsp*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
