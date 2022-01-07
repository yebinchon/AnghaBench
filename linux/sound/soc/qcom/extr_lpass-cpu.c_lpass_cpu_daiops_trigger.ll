; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-cpu.c_lpass_cpu_daiops_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-cpu.c_lpass_cpu_daiops_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lpass_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@LPAIF_I2SCTL_SPKEN_ENABLE = common dso_local global i32 0, align 4
@LPAIF_I2SCTL_SPKEN_MASK = common dso_local global i32 0, align 4
@LPAIF_I2SCTL_MICEN_ENABLE = common dso_local global i32 0, align 4
@LPAIF_I2SCTL_MICEN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"error writing to i2sctl reg: %d\0A\00", align 1
@LPAIF_I2SCTL_SPKEN_DISABLE = common dso_local global i32 0, align 4
@LPAIF_I2SCTL_MICEN_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @lpass_cpu_daiops_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpass_cpu_daiops_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.lpass_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %12 = call %struct.lpass_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.lpass_data* %12, %struct.lpass_data** %7, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %90 [
    i32 130, label %16
    i32 131, label %16
    i32 132, label %16
    i32 129, label %53
    i32 128, label %53
    i32 133, label %53
  ]

16:                                               ; preds = %3, %3, %3
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @LPAIF_I2SCTL_SPKEN_ENABLE, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @LPAIF_I2SCTL_SPKEN_MASK, align 4
  store i32 %24, i32* %10, align 4
  br label %28

25:                                               ; preds = %16
  %26 = load i32, i32* @LPAIF_I2SCTL_MICEN_ENABLE, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @LPAIF_I2SCTL_MICEN_MASK, align 4
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.lpass_data*, %struct.lpass_data** %7, align 8
  %30 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.lpass_data*, %struct.lpass_data** %7, align 8
  %33 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %36 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @LPAIF_I2SCTL_REG(i32 %34, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @regmap_update_bits(i32 %31, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %28
  %47 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %48 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %28
  br label %90

53:                                               ; preds = %3, %3, %3
  %54 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @LPAIF_I2SCTL_SPKEN_DISABLE, align 4
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* @LPAIF_I2SCTL_SPKEN_MASK, align 4
  store i32 %61, i32* %10, align 4
  br label %65

62:                                               ; preds = %53
  %63 = load i32, i32* @LPAIF_I2SCTL_MICEN_DISABLE, align 4
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* @LPAIF_I2SCTL_MICEN_MASK, align 4
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.lpass_data*, %struct.lpass_data** %7, align 8
  %67 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.lpass_data*, %struct.lpass_data** %7, align 8
  %70 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %73 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @LPAIF_I2SCTL_REG(i32 %71, i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @regmap_update_bits(i32 %68, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %65
  %84 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %85 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %83, %65
  br label %90

90:                                               ; preds = %3, %89, %52
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

declare dso_local %struct.lpass_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @LPAIF_I2SCTL_REG(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
