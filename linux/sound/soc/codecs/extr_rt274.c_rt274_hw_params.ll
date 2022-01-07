; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt274.c_rt274_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt274.c_rt274_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt274_priv = type { i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"Unsupported sample rate %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Sys_clk is not matched (%d %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Unsupported channels %d\0A\00", align 1
@RT274_I2S_CTRL1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"format val = 0x%x\0A\00", align 1
@RT274_DAC_FORMAT = common dso_local global i32 0, align 4
@RT274_ADC_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @rt274_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt274_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt274_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %8, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %17 = call %struct.rt274_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.rt274_priv* %17, %struct.rt274_priv** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %19 = call i32 @params_rate(%struct.snd_pcm_hw_params* %18)
  switch i32 %19, label %21 [
    i32 44100, label %20
    i32 48000, label %20
  ]

20:                                               ; preds = %3, %3
  br label %30

21:                                               ; preds = %3
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %23 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %26 = call i32 @params_rate(%struct.snd_pcm_hw_params* %25)
  %27 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %134

30:                                               ; preds = %20
  %31 = load %struct.rt274_priv*, %struct.rt274_priv** %9, align 8
  %32 = getelementptr inbounds %struct.rt274_priv, %struct.rt274_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %68 [
    i32 12288000, label %34
    i32 24576000, label %34
    i32 11289600, label %51
    i32 22579200, label %51
  ]

34:                                               ; preds = %30, %30
  %35 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %36 = call i32 @params_rate(%struct.snd_pcm_hw_params* %35)
  %37 = icmp ne i32 %36, 48000
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %40 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %43 = call i32 @params_rate(%struct.snd_pcm_hw_params* %42)
  %44 = load %struct.rt274_priv*, %struct.rt274_priv** %9, align 8
  %45 = getelementptr inbounds %struct.rt274_priv, %struct.rt274_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %134

50:                                               ; preds = %34
  br label %68

51:                                               ; preds = %30, %30
  %52 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %53 = call i32 @params_rate(%struct.snd_pcm_hw_params* %52)
  %54 = icmp ne i32 %53, 44100
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %57 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %60 = call i32 @params_rate(%struct.snd_pcm_hw_params* %59)
  %61 = load %struct.rt274_priv*, %struct.rt274_priv** %9, align 8
  %62 = getelementptr inbounds %struct.rt274_priv, %struct.rt274_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %134

67:                                               ; preds = %51
  br label %68

68:                                               ; preds = %30, %67, %50
  %69 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %70 = call i32 @params_channels(%struct.snd_pcm_hw_params* %69)
  %71 = icmp sle i32 %70, 16
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %74 = call i32 @params_channels(%struct.snd_pcm_hw_params* %73)
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %10, align 4
  br label %87

78:                                               ; preds = %68
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %80 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %83 = call i32 @params_channels(%struct.snd_pcm_hw_params* %82)
  %84 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %134

87:                                               ; preds = %72
  %88 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %89 = call i32 @params_width(%struct.snd_pcm_hw_params* %88)
  switch i32 %89, label %103 [
    i32 16, label %90
    i32 32, label %93
    i32 20, label %96
    i32 24, label %99
    i32 8, label %102
  ]

90:                                               ; preds = %87
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %91 = load i32, i32* %10, align 4
  %92 = or i32 %91, 16
  store i32 %92, i32* %10, align 4
  br label %106

93:                                               ; preds = %87
  store i32 2, i32* %11, align 4
  store i32 3, i32* %12, align 4
  %94 = load i32, i32* %10, align 4
  %95 = or i32 %94, 64
  store i32 %95, i32* %10, align 4
  br label %106

96:                                               ; preds = %87
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %97 = load i32, i32* %10, align 4
  %98 = or i32 %97, 32
  store i32 %98, i32* %10, align 4
  br label %106

99:                                               ; preds = %87
  store i32 2, i32* %11, align 4
  store i32 2, i32* %12, align 4
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %100, 48
  store i32 %101, i32* %10, align 4
  br label %106

102:                                              ; preds = %87
  store i32 3, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %106

103:                                              ; preds = %87
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %134

106:                                              ; preds = %102, %99, %96, %93, %90
  %107 = load %struct.rt274_priv*, %struct.rt274_priv** %9, align 8
  %108 = getelementptr inbounds %struct.rt274_priv, %struct.rt274_priv* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 3, i32* %12, align 4
  br label %112

112:                                              ; preds = %111, %106
  %113 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %114 = load i32, i32* @RT274_I2S_CTRL1, align 4
  %115 = load i32, i32* %11, align 4
  %116 = shl i32 %115, 3
  %117 = load i32, i32* %12, align 4
  %118 = shl i32 %117, 14
  %119 = or i32 %116, %118
  %120 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %113, i32 %114, i32 49176, i32 %119)
  %121 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %122 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @dev_dbg(i32 %123, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %127 = load i32, i32* @RT274_DAC_FORMAT, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %126, i32 %127, i32 16511, i32 %128)
  %130 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %131 = load i32, i32* @RT274_ADC_FORMAT, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %130, i32 %131, i32 16511, i32 %132)
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %112, %103, %78, %55, %38, %21
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.rt274_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

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
