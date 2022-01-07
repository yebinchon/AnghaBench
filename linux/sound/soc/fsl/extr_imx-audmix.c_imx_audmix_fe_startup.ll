; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-audmix.c_imx_audmix_fe_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-audmix.c_imx_audmix_fe_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.imx_audmix = type { i32 }

@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@imx_audmix_rate_constraints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"mclk may be not supported %lu\0A\00", align 1
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@FSL_AUDMIX_FORMATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @imx_audmix_fe_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_audmix_fe_startup(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.imx_audmix*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  store %struct.snd_soc_pcm_runtime* %12, %struct.snd_soc_pcm_runtime** %4, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = call %struct.imx_audmix* @snd_soc_card_get_drvdata(%struct.TYPE_2__* %15)
  store %struct.imx_audmix* %16, %struct.imx_audmix** %5, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %18, align 8
  store %struct.snd_pcm_runtime* %19, %struct.snd_pcm_runtime** %6, align 8
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %21 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %7, align 8
  %25 = load %struct.imx_audmix*, %struct.imx_audmix** %5, align 8
  %26 = getelementptr inbounds %struct.imx_audmix, %struct.imx_audmix* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @clk_get_rate(i32 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = urem i64 %29, 24576000
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %1
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %34 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %35 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %33, i32 0, i32 %34, i32* @imx_audmix_rate_constraints)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %2, align 4
  br label %58

40:                                               ; preds = %32
  br label %45

41:                                               ; preds = %1
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @dev_warn(%struct.device* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %43)
  br label %45

45:                                               ; preds = %41, %40
  %46 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %47 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %48 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %46, i32 %47, i32 1, i32 8)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %2, align 4
  br label %58

53:                                               ; preds = %45
  %54 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %55 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %56 = load i32, i32* @FSL_AUDMIX_FORMATS, align 4
  %57 = call i32 @snd_pcm_hw_constraint_mask64(%struct.snd_pcm_runtime* %54, i32 %55, i32 %56)
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %51, %38
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.imx_audmix* @snd_soc_card_get_drvdata(%struct.TYPE_2__*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime*, i32, i32, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_mask64(%struct.snd_pcm_runtime*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
