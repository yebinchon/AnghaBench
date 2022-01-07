; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-platform.c_lpass_platform_pcmops_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-platform.c_lpass_platform_pcmops_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, %struct.lpass_pcm_data* }
%struct.lpass_pcm_data = type { i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.lpass_data = type { i32, %struct.lpass_variant* }
%struct.lpass_variant = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"error writing to rdmabase reg: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"error writing to rdmabuff reg: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"error writing to rdmaper reg: %d\0A\00", align 1
@LPAIF_DMACTL_ENABLE_MASK = common dso_local global i32 0, align 4
@LPAIF_DMACTL_ENABLE_ON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"error writing to rdmactl reg: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @lpass_platform_pcmops_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpass_platform_pcmops_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.lpass_data*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca %struct.lpass_pcm_data*, align 8
  %10 = alloca %struct.lpass_variant*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 1
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  store %struct.snd_pcm_runtime* %16, %struct.snd_pcm_runtime** %4, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 2
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %18, align 8
  store %struct.snd_soc_pcm_runtime* %19, %struct.snd_soc_pcm_runtime** %5, align 8
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %21 = load i32, i32* @DRV_NAME, align 4
  %22 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %20, i32 %21)
  store %struct.snd_soc_component* %22, %struct.snd_soc_component** %6, align 8
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %24 = call %struct.lpass_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %23)
  store %struct.lpass_data* %24, %struct.lpass_data** %7, align 8
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 1
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %26, align 8
  store %struct.snd_pcm_runtime* %27, %struct.snd_pcm_runtime** %8, align 8
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 1
  %30 = load %struct.lpass_pcm_data*, %struct.lpass_pcm_data** %29, align 8
  store %struct.lpass_pcm_data* %30, %struct.lpass_pcm_data** %9, align 8
  %31 = load %struct.lpass_data*, %struct.lpass_data** %7, align 8
  %32 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %31, i32 0, i32 1
  %33 = load %struct.lpass_variant*, %struct.lpass_variant** %32, align 8
  store %struct.lpass_variant* %33, %struct.lpass_variant** %10, align 8
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %13, align 4
  %37 = load %struct.lpass_pcm_data*, %struct.lpass_pcm_data** %9, align 8
  %38 = getelementptr inbounds %struct.lpass_pcm_data, %struct.lpass_pcm_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load %struct.lpass_data*, %struct.lpass_data** %7, align 8
  %41 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.lpass_variant*, %struct.lpass_variant** %10, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @LPAIF_DMABASE_REG(%struct.lpass_variant* %43, i32 %44, i32 %45)
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @regmap_write(i32 %42, i32 %46, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %1
  %54 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %55 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %2, align 4
  br label %125

60:                                               ; preds = %1
  %61 = load %struct.lpass_data*, %struct.lpass_data** %7, align 8
  %62 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.lpass_variant*, %struct.lpass_variant** %10, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @LPAIF_DMABUFF_REG(%struct.lpass_variant* %64, i32 %65, i32 %66)
  %68 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %69 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %68)
  %70 = ashr i32 %69, 2
  %71 = sub nsw i32 %70, 1
  %72 = call i32 @regmap_write(i32 %63, i32 %67, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %60
  %76 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %77 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %2, align 4
  br label %125

82:                                               ; preds = %60
  %83 = load %struct.lpass_data*, %struct.lpass_data** %7, align 8
  %84 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.lpass_variant*, %struct.lpass_variant** %10, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @LPAIF_DMAPER_REG(%struct.lpass_variant* %86, i32 %87, i32 %88)
  %90 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %91 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %90)
  %92 = ashr i32 %91, 2
  %93 = sub nsw i32 %92, 1
  %94 = call i32 @regmap_write(i32 %85, i32 %89, i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %82
  %98 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %99 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @dev_err(i32 %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %2, align 4
  br label %125

104:                                              ; preds = %82
  %105 = load %struct.lpass_data*, %struct.lpass_data** %7, align 8
  %106 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.lpass_variant*, %struct.lpass_variant** %10, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @LPAIF_DMACTL_REG(%struct.lpass_variant* %108, i32 %109, i32 %110)
  %112 = load i32, i32* @LPAIF_DMACTL_ENABLE_MASK, align 4
  %113 = load i32, i32* @LPAIF_DMACTL_ENABLE_ON, align 4
  %114 = call i32 @regmap_update_bits(i32 %107, i32 %111, i32 %112, i32 %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %104
  %118 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %119 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @dev_err(i32 %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* %2, align 4
  br label %125

124:                                              ; preds = %104
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %124, %117, %97, %75, %53
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.lpass_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @LPAIF_DMABASE_REG(%struct.lpass_variant*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @LPAIF_DMABUFF_REG(%struct.lpass_variant*, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @LPAIF_DMAPER_REG(%struct.lpass_variant*, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @LPAIF_DMACTL_REG(%struct.lpass_variant*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
