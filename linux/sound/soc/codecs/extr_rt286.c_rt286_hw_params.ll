; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt286.c_rt286_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt286.c_rt286_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt286_priv = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Unsupported sample rate %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Sys_clk is not matched (%d %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Unsupported channels %d\0A\00", align 1
@RT286_I2S_CTRL1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"format val = 0x%x\0A\00", align 1
@RT286_DAC_FORMAT = common dso_local global i32 0, align 4
@RT286_ADC_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @rt286_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt286_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt286_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call %struct.rt286_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.rt286_priv* %16, %struct.rt286_priv** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i32 @params_rate(%struct.snd_pcm_hw_params* %17)
  switch i32 %18, label %23 [
    i32 44100, label %19
    i32 48000, label %22
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  %21 = or i32 %20, 16384
  store i32 %21, i32* %10, align 4
  br label %32

22:                                               ; preds = %3
  br label %32

23:                                               ; preds = %3
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %25 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %28 = call i32 @params_rate(%struct.snd_pcm_hw_params* %27)
  %29 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %127

32:                                               ; preds = %22, %19
  %33 = load %struct.rt286_priv*, %struct.rt286_priv** %9, align 8
  %34 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %70 [
    i32 12288000, label %36
    i32 24576000, label %36
    i32 11289600, label %53
    i32 22579200, label %53
  ]

36:                                               ; preds = %32, %32
  %37 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %38 = call i32 @params_rate(%struct.snd_pcm_hw_params* %37)
  %39 = icmp ne i32 %38, 48000
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %42 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %45 = call i32 @params_rate(%struct.snd_pcm_hw_params* %44)
  %46 = load %struct.rt286_priv*, %struct.rt286_priv** %9, align 8
  %47 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %127

52:                                               ; preds = %36
  br label %70

53:                                               ; preds = %32, %32
  %54 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %55 = call i32 @params_rate(%struct.snd_pcm_hw_params* %54)
  %56 = icmp ne i32 %55, 44100
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %59 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %62 = call i32 @params_rate(%struct.snd_pcm_hw_params* %61)
  %63 = load %struct.rt286_priv*, %struct.rt286_priv** %9, align 8
  %64 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %127

69:                                               ; preds = %53
  br label %70

70:                                               ; preds = %32, %69, %52
  %71 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %72 = call i32 @params_channels(%struct.snd_pcm_hw_params* %71)
  %73 = icmp sle i32 %72, 16
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %76 = call i32 @params_channels(%struct.snd_pcm_hw_params* %75)
  %77 = sub nsw i32 %76, 1
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  br label %89

80:                                               ; preds = %70
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %82 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %85 = call i32 @params_channels(%struct.snd_pcm_hw_params* %84)
  %86 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %127

89:                                               ; preds = %74
  store i32 0, i32* %11, align 4
  %90 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %91 = call i32 @params_width(%struct.snd_pcm_hw_params* %90)
  switch i32 %91, label %105 [
    i32 16, label %92
    i32 32, label %95
    i32 20, label %98
    i32 24, label %101
    i32 8, label %104
  ]

92:                                               ; preds = %89
  store i32 0, i32* %11, align 4
  %93 = load i32, i32* %10, align 4
  %94 = or i32 %93, 16
  store i32 %94, i32* %10, align 4
  br label %108

95:                                               ; preds = %89
  store i32 2, i32* %11, align 4
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, 64
  store i32 %97, i32* %10, align 4
  br label %108

98:                                               ; preds = %89
  store i32 1, i32* %11, align 4
  %99 = load i32, i32* %10, align 4
  %100 = or i32 %99, 32
  store i32 %100, i32* %10, align 4
  br label %108

101:                                              ; preds = %89
  store i32 2, i32* %11, align 4
  %102 = load i32, i32* %10, align 4
  %103 = or i32 %102, 48
  store i32 %103, i32* %10, align 4
  br label %108

104:                                              ; preds = %89
  store i32 3, i32* %11, align 4
  br label %108

105:                                              ; preds = %89
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %127

108:                                              ; preds = %104, %101, %98, %95, %92
  %109 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %110 = load i32, i32* @RT286_I2S_CTRL1, align 4
  %111 = load i32, i32* %11, align 4
  %112 = shl i32 %111, 3
  %113 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %109, i32 %110, i32 24, i32 %112)
  %114 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %115 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @dev_dbg(i32 %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  %119 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %120 = load i32, i32* @RT286_DAC_FORMAT, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %119, i32 %120, i32 16511, i32 %121)
  %123 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %124 = load i32, i32* @RT286_ADC_FORMAT, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %123, i32 %124, i32 16511, i32 %125)
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %108, %105, %80, %57, %40, %23
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.rt286_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
