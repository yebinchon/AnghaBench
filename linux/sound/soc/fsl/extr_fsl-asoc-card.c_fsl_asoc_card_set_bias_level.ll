; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl-asoc-card.c_fsl_asoc_card_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl-asoc-card.c_fsl_asoc_card_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.snd_soc_dapm_context = type { i64, i32 }
%struct.fsl_asoc_card_priv = type { i32, i32, %struct.codec_priv }
%struct.codec_priv = type { i32, i32, i32, i32 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i64 }

@SNDRV_PCM_FORMAT_S24_LE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to start FLL: %d\0A\00", align 1
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to set SYSCLK: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to switch away from FLL: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to stop FLL: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*, %struct.snd_soc_dapm_context*, i32)* @fsl_asoc_card_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_asoc_card_set_bias_level(%struct.snd_soc_card* %0, %struct.snd_soc_dapm_context* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fsl_asoc_card_priv*, align 8
  %9 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %10 = alloca %struct.snd_soc_dai*, align 8
  %11 = alloca %struct.codec_priv*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %5, align 8
  store %struct.snd_soc_dapm_context* %1, %struct.snd_soc_dapm_context** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %16 = call %struct.fsl_asoc_card_priv* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %15)
  store %struct.fsl_asoc_card_priv* %16, %struct.fsl_asoc_card_priv** %8, align 8
  %17 = load %struct.fsl_asoc_card_priv*, %struct.fsl_asoc_card_priv** %8, align 8
  %18 = getelementptr inbounds %struct.fsl_asoc_card_priv, %struct.fsl_asoc_card_priv* %17, i32 0, i32 2
  store %struct.codec_priv* %18, %struct.codec_priv** %11, align 8
  %19 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %20 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %19, i32 0, i32 1
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %12, align 8
  %22 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %23 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %24 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.snd_soc_pcm_runtime* @snd_soc_get_pcm_runtime(%struct.snd_soc_card* %22, i32 %28)
  store %struct.snd_soc_pcm_runtime* %29, %struct.snd_soc_pcm_runtime** %9, align 8
  %30 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  %31 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %30, i32 0, i32 0
  %32 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %31, align 8
  store %struct.snd_soc_dai* %32, %struct.snd_soc_dai** %10, align 8
  %33 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %37 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %150

41:                                               ; preds = %3
  %42 = load i32, i32* %7, align 4
  switch i32 %42, label %148 [
    i32 129, label %43
    i32 128, label %106
  ]

43:                                               ; preds = %41
  %44 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %45 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 128
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %149

49:                                               ; preds = %43
  %50 = load %struct.fsl_asoc_card_priv*, %struct.fsl_asoc_card_priv** %8, align 8
  %51 = getelementptr inbounds %struct.fsl_asoc_card_priv, %struct.fsl_asoc_card_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SNDRV_PCM_FORMAT_S24_LE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.fsl_asoc_card_priv*, %struct.fsl_asoc_card_priv** %8, align 8
  %57 = getelementptr inbounds %struct.fsl_asoc_card_priv, %struct.fsl_asoc_card_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 384
  store i32 %59, i32* %13, align 4
  br label %65

60:                                               ; preds = %49
  %61 = load %struct.fsl_asoc_card_priv*, %struct.fsl_asoc_card_priv** %8, align 8
  %62 = getelementptr inbounds %struct.fsl_asoc_card_priv, %struct.fsl_asoc_card_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 256
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %67 = load %struct.codec_priv*, %struct.codec_priv** %11, align 8
  %68 = getelementptr inbounds %struct.codec_priv, %struct.codec_priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.codec_priv*, %struct.codec_priv** %11, align 8
  %71 = getelementptr inbounds %struct.codec_priv, %struct.codec_priv* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.codec_priv*, %struct.codec_priv** %11, align 8
  %74 = getelementptr inbounds %struct.codec_priv, %struct.codec_priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %66, i32 %69, i32 %72, i32 %75, i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %65
  %81 = load %struct.device*, %struct.device** %12, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %4, align 4
  br label %150

85:                                               ; preds = %65
  %86 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %87 = load %struct.codec_priv*, %struct.codec_priv** %11, align 8
  %88 = getelementptr inbounds %struct.codec_priv, %struct.codec_priv* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %92 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %86, i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %85
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* @ENOTSUPP, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.device*, %struct.device** %12, align 8
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @dev_err(%struct.device* %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %4, align 4
  br label %150

105:                                              ; preds = %95, %85
  br label %149

106:                                              ; preds = %41
  %107 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %108 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 129
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %149

112:                                              ; preds = %106
  %113 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %114 = load %struct.codec_priv*, %struct.codec_priv** %11, align 8
  %115 = getelementptr inbounds %struct.codec_priv, %struct.codec_priv* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.codec_priv*, %struct.codec_priv** %11, align 8
  %118 = getelementptr inbounds %struct.codec_priv, %struct.codec_priv* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %121 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %113, i32 %116, i32 %119, i32 %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %112
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* @ENOTSUPP, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp ne i32 %125, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load %struct.device*, %struct.device** %12, align 8
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @dev_err(%struct.device* %130, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* %4, align 4
  br label %150

134:                                              ; preds = %124, %112
  %135 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %136 = load %struct.codec_priv*, %struct.codec_priv** %11, align 8
  %137 = getelementptr inbounds %struct.codec_priv, %struct.codec_priv* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %135, i32 %138, i32 0, i32 0, i32 0)
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %134
  %143 = load %struct.device*, %struct.device** %12, align 8
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @dev_err(%struct.device* %143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %14, align 4
  store i32 %146, i32* %4, align 4
  br label %150

147:                                              ; preds = %134
  br label %149

148:                                              ; preds = %41
  br label %149

149:                                              ; preds = %148, %147, %111, %105, %48
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %149, %142, %129, %100, %80, %40
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local %struct.fsl_asoc_card_priv* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local %struct.snd_soc_pcm_runtime* @snd_soc_get_pcm_runtime(%struct.snd_soc_card*, i32) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
