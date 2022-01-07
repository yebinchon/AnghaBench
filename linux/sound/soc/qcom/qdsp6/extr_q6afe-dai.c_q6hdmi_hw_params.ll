; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe-dai.c_q6hdmi_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe-dai.c_q6hdmi_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i64, i32 }
%struct.q6afe_dai_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.q6afe_hdmi_cfg }
%struct.q6afe_hdmi_cfg = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"invalid Channels = %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @q6hdmi_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6hdmi_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.q6afe_dai_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.q6afe_hdmi_cfg*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.q6afe_dai_data* @dev_get_drvdata(i32 %13)
  store %struct.q6afe_dai_data* %14, %struct.q6afe_dai_data** %8, align 8
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %16 = call i32 @params_channels(%struct.snd_pcm_hw_params* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.q6afe_dai_data*, %struct.q6afe_dai_data** %8, align 8
  %18 = getelementptr inbounds %struct.q6afe_dai_data, %struct.q6afe_dai_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.q6afe_hdmi_cfg* %24, %struct.q6afe_hdmi_cfg** %10, align 8
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %26 = call i32 @params_rate(%struct.snd_pcm_hw_params* %25)
  %27 = load %struct.q6afe_hdmi_cfg*, %struct.q6afe_hdmi_cfg** %10, align 8
  %28 = getelementptr inbounds %struct.q6afe_hdmi_cfg, %struct.q6afe_hdmi_cfg* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %30 = call i32 @params_format(%struct.snd_pcm_hw_params* %29)
  switch i32 %30, label %37 [
    i32 129, label %31
    i32 128, label %34
  ]

31:                                               ; preds = %3
  %32 = load %struct.q6afe_hdmi_cfg*, %struct.q6afe_hdmi_cfg** %10, align 8
  %33 = getelementptr inbounds %struct.q6afe_hdmi_cfg, %struct.q6afe_hdmi_cfg* %32, i32 0, i32 0
  store i32 16, i32* %33, align 4
  br label %37

34:                                               ; preds = %3
  %35 = load %struct.q6afe_hdmi_cfg*, %struct.q6afe_hdmi_cfg** %10, align 8
  %36 = getelementptr inbounds %struct.q6afe_hdmi_cfg, %struct.q6afe_hdmi_cfg* %35, i32 0, i32 0
  store i32 24, i32* %36, align 4
  br label %37

37:                                               ; preds = %3, %34, %31
  %38 = load i32, i32* %9, align 4
  switch i32 %38, label %60 [
    i32 2, label %39
    i32 3, label %42
    i32 4, label %45
    i32 5, label %48
    i32 6, label %51
    i32 7, label %54
    i32 8, label %57
  ]

39:                                               ; preds = %37
  %40 = load %struct.q6afe_hdmi_cfg*, %struct.q6afe_hdmi_cfg** %10, align 8
  %41 = getelementptr inbounds %struct.q6afe_hdmi_cfg, %struct.q6afe_hdmi_cfg* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  br label %68

42:                                               ; preds = %37
  %43 = load %struct.q6afe_hdmi_cfg*, %struct.q6afe_hdmi_cfg** %10, align 8
  %44 = getelementptr inbounds %struct.q6afe_hdmi_cfg, %struct.q6afe_hdmi_cfg* %43, i32 0, i32 1
  store i32 2, i32* %44, align 4
  br label %68

45:                                               ; preds = %37
  %46 = load %struct.q6afe_hdmi_cfg*, %struct.q6afe_hdmi_cfg** %10, align 8
  %47 = getelementptr inbounds %struct.q6afe_hdmi_cfg, %struct.q6afe_hdmi_cfg* %46, i32 0, i32 1
  store i32 6, i32* %47, align 4
  br label %68

48:                                               ; preds = %37
  %49 = load %struct.q6afe_hdmi_cfg*, %struct.q6afe_hdmi_cfg** %10, align 8
  %50 = getelementptr inbounds %struct.q6afe_hdmi_cfg, %struct.q6afe_hdmi_cfg* %49, i32 0, i32 1
  store i32 10, i32* %50, align 4
  br label %68

51:                                               ; preds = %37
  %52 = load %struct.q6afe_hdmi_cfg*, %struct.q6afe_hdmi_cfg** %10, align 8
  %53 = getelementptr inbounds %struct.q6afe_hdmi_cfg, %struct.q6afe_hdmi_cfg* %52, i32 0, i32 1
  store i32 11, i32* %53, align 4
  br label %68

54:                                               ; preds = %37
  %55 = load %struct.q6afe_hdmi_cfg*, %struct.q6afe_hdmi_cfg** %10, align 8
  %56 = getelementptr inbounds %struct.q6afe_hdmi_cfg, %struct.q6afe_hdmi_cfg* %55, i32 0, i32 1
  store i32 18, i32* %56, align 4
  br label %68

57:                                               ; preds = %37
  %58 = load %struct.q6afe_hdmi_cfg*, %struct.q6afe_hdmi_cfg** %10, align 8
  %59 = getelementptr inbounds %struct.q6afe_hdmi_cfg, %struct.q6afe_hdmi_cfg* %58, i32 0, i32 1
  store i32 19, i32* %59, align 4
  br label %68

60:                                               ; preds = %37
  %61 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %62 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %69

68:                                               ; preds = %57, %54, %51, %48, %45, %42, %39
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %60
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.q6afe_dai_data* @dev_get_drvdata(i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
