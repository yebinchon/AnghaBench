; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt298.c_rt298_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt298.c_rt298_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt298_priv = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Unsupported sample rate %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Sys_clk is not matched (%d %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Unsupported channels %d\0A\00", align 1
@RT298_I2S_CTRL1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"format val = 0x%x\0A\00", align 1
@RT298_DAC_FORMAT = common dso_local global i32 0, align 4
@RT298_ADC_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @rt298_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt298_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt298_priv*, align 8
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
  %16 = call %struct.rt298_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.rt298_priv* %16, %struct.rt298_priv** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i32 @params_rate(%struct.snd_pcm_hw_params* %17)
  switch i32 %18, label %20 [
    i32 44100, label %19
    i32 48000, label %19
  ]

19:                                               ; preds = %3, %3
  br label %29

20:                                               ; preds = %3
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %22 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %25 = call i32 @params_rate(%struct.snd_pcm_hw_params* %24)
  %26 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %124

29:                                               ; preds = %19
  %30 = load %struct.rt298_priv*, %struct.rt298_priv** %9, align 8
  %31 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %67 [
    i32 12288000, label %33
    i32 24576000, label %33
    i32 11289600, label %50
    i32 22579200, label %50
  ]

33:                                               ; preds = %29, %29
  %34 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %35 = call i32 @params_rate(%struct.snd_pcm_hw_params* %34)
  %36 = icmp ne i32 %35, 48000
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %39 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %42 = call i32 @params_rate(%struct.snd_pcm_hw_params* %41)
  %43 = load %struct.rt298_priv*, %struct.rt298_priv** %9, align 8
  %44 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %124

49:                                               ; preds = %33
  br label %67

50:                                               ; preds = %29, %29
  %51 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %52 = call i32 @params_rate(%struct.snd_pcm_hw_params* %51)
  %53 = icmp ne i32 %52, 44100
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %56 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %59 = call i32 @params_rate(%struct.snd_pcm_hw_params* %58)
  %60 = load %struct.rt298_priv*, %struct.rt298_priv** %9, align 8
  %61 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %124

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %29, %66, %49
  %68 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %69 = call i32 @params_channels(%struct.snd_pcm_hw_params* %68)
  %70 = icmp sle i32 %69, 16
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %73 = call i32 @params_channels(%struct.snd_pcm_hw_params* %72)
  %74 = sub nsw i32 %73, 1
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %10, align 4
  br label %86

77:                                               ; preds = %67
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %79 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %82 = call i32 @params_channels(%struct.snd_pcm_hw_params* %81)
  %83 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %124

86:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  %87 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %88 = call i32 @params_width(%struct.snd_pcm_hw_params* %87)
  switch i32 %88, label %102 [
    i32 16, label %89
    i32 32, label %92
    i32 20, label %95
    i32 24, label %98
    i32 8, label %101
  ]

89:                                               ; preds = %86
  store i32 0, i32* %11, align 4
  %90 = load i32, i32* %10, align 4
  %91 = or i32 %90, 16
  store i32 %91, i32* %10, align 4
  br label %105

92:                                               ; preds = %86
  store i32 2, i32* %11, align 4
  %93 = load i32, i32* %10, align 4
  %94 = or i32 %93, 64
  store i32 %94, i32* %10, align 4
  br label %105

95:                                               ; preds = %86
  store i32 1, i32* %11, align 4
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, 32
  store i32 %97, i32* %10, align 4
  br label %105

98:                                               ; preds = %86
  store i32 2, i32* %11, align 4
  %99 = load i32, i32* %10, align 4
  %100 = or i32 %99, 48
  store i32 %100, i32* %10, align 4
  br label %105

101:                                              ; preds = %86
  store i32 3, i32* %11, align 4
  br label %105

102:                                              ; preds = %86
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %124

105:                                              ; preds = %101, %98, %95, %92, %89
  %106 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %107 = load i32, i32* @RT298_I2S_CTRL1, align 4
  %108 = load i32, i32* %11, align 4
  %109 = shl i32 %108, 3
  %110 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %106, i32 %107, i32 24, i32 %109)
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %112 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @dev_dbg(i32 %113, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %117 = load i32, i32* @RT298_DAC_FORMAT, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %116, i32 %117, i32 16511, i32 %118)
  %120 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %121 = load i32, i32* @RT298_ADC_FORMAT, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %120, i32 %121, i32 16511, i32 %122)
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %105, %102, %77, %54, %37, %20
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.rt298_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

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
