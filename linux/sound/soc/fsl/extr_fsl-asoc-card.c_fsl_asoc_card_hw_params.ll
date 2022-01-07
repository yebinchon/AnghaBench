; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl-asoc-card.c_fsl_asoc_card_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl-asoc-card.c_fsl_asoc_card_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.fsl_asoc_card_priv = type { i32, %struct.TYPE_3__, i32, i32, %struct.cpu_priv }
%struct.TYPE_3__ = type { i64 }
%struct.cpu_priv = type { i64, i32*, i32*, i32* }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SND_SOC_DAIFMT_CBM_CFM = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to set sysclk for cpu dai\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to set TDM slot for cpu dai\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @fsl_asoc_card_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_asoc_card_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.fsl_asoc_card_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpu_priv*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 1
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %13, align 8
  store %struct.snd_soc_pcm_runtime* %14, %struct.snd_soc_pcm_runtime** %6, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call %struct.fsl_asoc_card_priv* @snd_soc_card_get_drvdata(%struct.TYPE_4__* %17)
  store %struct.fsl_asoc_card_priv* %18, %struct.fsl_asoc_card_priv** %7, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load %struct.fsl_asoc_card_priv*, %struct.fsl_asoc_card_priv** %7, align 8
  %26 = getelementptr inbounds %struct.fsl_asoc_card_priv, %struct.fsl_asoc_card_priv* %25, i32 0, i32 4
  store %struct.cpu_priv* %26, %struct.cpu_priv** %9, align 8
  %27 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %28 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.device*, %struct.device** %30, align 8
  store %struct.device* %31, %struct.device** %10, align 8
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %33 = call i32 @params_rate(%struct.snd_pcm_hw_params* %32)
  %34 = load %struct.fsl_asoc_card_priv*, %struct.fsl_asoc_card_priv** %7, align 8
  %35 = getelementptr inbounds %struct.fsl_asoc_card_priv, %struct.fsl_asoc_card_priv* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %37 = call i32 @params_format(%struct.snd_pcm_hw_params* %36)
  %38 = load %struct.fsl_asoc_card_priv*, %struct.fsl_asoc_card_priv** %7, align 8
  %39 = getelementptr inbounds %struct.fsl_asoc_card_priv, %struct.fsl_asoc_card_priv* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.fsl_asoc_card_priv*, %struct.fsl_asoc_card_priv** %7, align 8
  %41 = getelementptr inbounds %struct.fsl_asoc_card_priv, %struct.fsl_asoc_card_priv* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %2
  %46 = load %struct.fsl_asoc_card_priv*, %struct.fsl_asoc_card_priv** %7, align 8
  %47 = getelementptr inbounds %struct.fsl_asoc_card_priv, %struct.fsl_asoc_card_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SND_SOC_DAIFMT_CBM_CFM, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %45, %2
  %53 = load %struct.fsl_asoc_card_priv*, %struct.fsl_asoc_card_priv** %7, align 8
  %54 = call i64 @fsl_asoc_card_is_ac97(%struct.fsl_asoc_card_priv* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %45
  store i32 0, i32* %3, align 4
  br label %120

57:                                               ; preds = %52
  %58 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %59 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.cpu_priv*, %struct.cpu_priv** %9, align 8
  %62 = getelementptr inbounds %struct.cpu_priv, %struct.cpu_priv* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.cpu_priv*, %struct.cpu_priv** %9, align 8
  %69 = getelementptr inbounds %struct.cpu_priv, %struct.cpu_priv* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.cpu_priv*, %struct.cpu_priv** %9, align 8
  %76 = getelementptr inbounds %struct.cpu_priv, %struct.cpu_priv* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @snd_soc_dai_set_sysclk(i32 %60, i32 %67, i32 %74, i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %57
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @ENOTSUPP, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp ne i32 %86, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.device*, %struct.device** %10, align 8
  %92 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %3, align 4
  br label %120

94:                                               ; preds = %85, %57
  %95 = load %struct.cpu_priv*, %struct.cpu_priv** %9, align 8
  %96 = getelementptr inbounds %struct.cpu_priv, %struct.cpu_priv* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %94
  %100 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %101 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.cpu_priv*, %struct.cpu_priv** %9, align 8
  %104 = getelementptr inbounds %struct.cpu_priv, %struct.cpu_priv* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @snd_soc_dai_set_tdm_slot(i32 %102, i32 3, i32 3, i32 2, i64 %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %99
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @ENOTSUPP, align 4
  %112 = sub nsw i32 0, %111
  %113 = icmp ne i32 %110, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.device*, %struct.device** %10, align 8
  %116 = call i32 @dev_err(%struct.device* %115, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %3, align 4
  br label %120

118:                                              ; preds = %109, %99
  br label %119

119:                                              ; preds = %118, %94
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %114, %90, %56
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.fsl_asoc_card_priv* @snd_soc_card_get_drvdata(%struct.TYPE_4__*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @fsl_asoc_card_is_ac97(%struct.fsl_asoc_card_priv*) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @snd_soc_dai_set_tdm_slot(i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
