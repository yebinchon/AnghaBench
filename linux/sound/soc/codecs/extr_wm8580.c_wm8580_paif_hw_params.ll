; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8580.c_wm8580_paif_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8580.c_wm8580_paif_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.TYPE_2__*, %struct.snd_soc_component* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_soc_component = type { i32 }
%struct.wm8580_priv = type { i32* }

@WM8580_AIF_LENGTH_20 = common dso_local global i32 0, align 4
@WM8580_AIF_LENGTH_24 = common dso_local global i32 0, align 4
@WM8580_AIF_LENGTH_32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@wm8580_sysclk_ratios = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Invalid clock ratio %d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Running at %dfs with %dHz clock\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@WM8580_DACOSR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Selecting 64x OSR\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Selecting 128x OSR\0A\00", align 1
@WM8580_PAIF3 = common dso_local global i64 0, align 8
@WM8580_PAIF1 = common dso_local global i64 0, align 8
@WM8580_AIF_RATE_MASK = common dso_local global i32 0, align 4
@WM8580_AIF_BCLKSEL_MASK = common dso_local global i32 0, align 4
@WM8580_AIF_LENGTH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8580_paif_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8580_paif_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm8580_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 1
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %8, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = call %struct.wm8580_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.wm8580_priv* %19, %struct.wm8580_priv** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %21 = call i32 @params_width(%struct.snd_pcm_hw_params* %20)
  switch i32 %21, label %40 [
    i32 16, label %22
    i32 20, label %25
    i32 24, label %30
    i32 32, label %35
  ]

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  %24 = or i32 %23, 8
  store i32 %24, i32* %10, align 4
  br label %43

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @WM8580_AIF_LENGTH_20, align 4
  %28 = load i32, i32* %11, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %11, align 4
  br label %43

30:                                               ; preds = %3
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @WM8580_AIF_LENGTH_24, align 4
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  br label %43

35:                                               ; preds = %3
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @WM8580_AIF_LENGTH_32, align 4
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %11, align 4
  br label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %171

43:                                               ; preds = %35, %30, %25, %22
  %44 = load %struct.wm8580_priv*, %struct.wm8580_priv** %9, align 8
  %45 = getelementptr inbounds %struct.wm8580_priv, %struct.wm8580_priv* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %48 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %46, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %55 = call i32 @params_rate(%struct.snd_pcm_hw_params* %54)
  %56 = sdiv i32 %53, %55
  store i32 %56, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %72, %43
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** @wm8580_sysclk_ratios, align 8
  %60 = call i32 @ARRAY_SIZE(i32* %59)
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load i32, i32* %13, align 4
  %64 = load i32*, i32** @wm8580_sysclk_ratios, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %63, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %75

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %57

75:                                               ; preds = %70, %57
  %76 = load i32, i32* %12, align 4
  %77 = load i32*, i32** @wm8580_sysclk_ratios, align 8
  %78 = call i32 @ARRAY_SIZE(i32* %77)
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %75
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %82 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.wm8580_priv*, %struct.wm8580_priv** %9, align 8
  %85 = getelementptr inbounds %struct.wm8580_priv, %struct.wm8580_priv* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %88 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %86, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %95 = call i32 @params_rate(%struct.snd_pcm_hw_params* %94)
  %96 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %171

99:                                               ; preds = %75
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %10, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %10, align 4
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %104 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** @wm8580_sysclk_ratios, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.wm8580_priv*, %struct.wm8580_priv** %9, align 8
  %112 = getelementptr inbounds %struct.wm8580_priv, %struct.wm8580_priv* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %115 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32, i32* %113, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, i8*, ...) @dev_dbg(i32 %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %120)
  %122 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %123 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %146

127:                                              ; preds = %99
  %128 = load i32, i32* %13, align 4
  switch i32 %128, label %135 [
    i32 128, label %129
    i32 192, label %129
  ]

129:                                              ; preds = %127, %127
  %130 = load i32, i32* @WM8580_DACOSR, align 4
  store i32 %130, i32* %14, align 4
  %131 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %132 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32, i8*, ...) @dev_dbg(i32 %133, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %140

135:                                              ; preds = %127
  store i32 0, i32* %14, align 4
  %136 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %137 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i32, i8*, ...) @dev_dbg(i32 %138, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %140

140:                                              ; preds = %135, %129
  %141 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %142 = load i64, i64* @WM8580_PAIF3, align 8
  %143 = load i32, i32* @WM8580_DACOSR, align 4
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %141, i64 %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %140, %99
  %147 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %148 = load i64, i64* @WM8580_PAIF1, align 8
  %149 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %150 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %149, i32 0, i32 0
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %148, %153
  %155 = load i32, i32* @WM8580_AIF_RATE_MASK, align 4
  %156 = load i32, i32* @WM8580_AIF_BCLKSEL_MASK, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %147, i64 %154, i32 %157, i32 %158)
  %160 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %161 = load i64, i64* @WM8580_PAIF3, align 8
  %162 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %163 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %162, i32 0, i32 0
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = add i64 %161, %166
  %168 = load i32, i32* @WM8580_AIF_LENGTH_MASK, align 4
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %160, i64 %167, i32 %168, i32 %169)
  store i32 0, i32* %4, align 4
  br label %171

171:                                              ; preds = %146, %80, %40
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local %struct.wm8580_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
