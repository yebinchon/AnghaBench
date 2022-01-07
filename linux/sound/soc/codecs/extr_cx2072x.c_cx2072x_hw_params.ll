; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx2072x.c_cx2072x_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx2072x.c_cx2072x_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { %struct.device* }
%struct.device = type { i32 }
%struct.cx2072x_priv = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Master clock rate is not configured\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported sample rate %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Sample size %d bits, frame = %d bits, rate = %d Hz\0A\00", align 1
@CX2072X_DAI_DSP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"enables aec reference\0A\00", align 1
@CX2072X_ADC1_CONNECTION_SELECT_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @cx2072x_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx2072x_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.cx2072x_priv*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %8, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %18 = call %struct.cx2072x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.cx2072x_priv* %18, %struct.cx2072x_priv** %9, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %20 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %10, align 8
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %23 = call i32 @params_rate(%struct.snd_pcm_hw_params* %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %25 = call i32 @params_width(%struct.snd_pcm_hw_params* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %4, align 4
  br label %119

30:                                               ; preds = %3
  %31 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %32 = call i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %4, align 4
  br label %119

37:                                               ; preds = %30
  %38 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %9, align 8
  %39 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.device*, %struct.device** %10, align 8
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %119

47:                                               ; preds = %37
  %48 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %9, align 8
  %49 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %9, align 8
  %54 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %11, align 4
  switch i32 %57, label %59 [
    i32 48000, label %58
    i32 32000, label %58
    i32 24000, label %58
    i32 16000, label %58
    i32 96000, label %58
    i32 192000, label %58
  ]

58:                                               ; preds = %56, %56, %56, %56, %56, %56
  br label %65

59:                                               ; preds = %56
  %60 = load %struct.device*, %struct.device** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %119

65:                                               ; preds = %58
  %66 = load %struct.device*, %struct.device** %10, align 8
  %67 = ptrtoint %struct.device* %66 to i32
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 (i32, i8*, ...) @dev_dbg(i32 %67, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %9, align 8
  %74 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %9, align 8
  %77 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %9, align 8
  %80 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %82 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CX2072X_DAI_DSP, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %65
  %87 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %9, align 8
  %88 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %87, i32 0, i32 5
  store i32 1, i32* %88, align 8
  %89 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %9, align 8
  %90 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i32, i8*, ...) @dev_dbg(i32 %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %93 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %9, align 8
  %94 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @CX2072X_ADC1_CONNECTION_SELECT_CONTROL, align 4
  %97 = call i32 @regmap_write(i32 %95, i32 %96, i32 3)
  br label %98

98:                                               ; preds = %86, %65
  %99 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %9, align 8
  %100 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %9, align 8
  %105 = call i32 @cx2072x_config_pll(%struct.cx2072x_priv* %104)
  %106 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %9, align 8
  %107 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %106, i32 0, i32 6
  store i32 0, i32* %107, align 4
  br label %108

108:                                              ; preds = %103, %98
  %109 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %9, align 8
  %110 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %9, align 8
  %115 = call i32 @cx2072x_config_i2spcm(%struct.cx2072x_priv* %114)
  %116 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %9, align 8
  %117 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %116, i32 0, i32 7
  store i32 0, i32* %117, align 8
  br label %118

118:                                              ; preds = %113, %108
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %59, %42, %35, %28
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.cx2072x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @cx2072x_config_pll(%struct.cx2072x_priv*) #1

declare dso_local i32 @cx2072x_config_i2spcm(%struct.cx2072x_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
