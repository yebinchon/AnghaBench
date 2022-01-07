; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8776.c_wm8776_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8776.c_wm8776_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.TYPE_2__*, %struct.snd_soc_component* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm8776_priv = type { i32* }

@WM8776_DACIFCTRL = common dso_local global i32 0, align 4
@WM8776_ADCIFCTRL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unsupported sample size: %i\0A\00", align 1
@WM8776_MSTRCTRL = common dso_local global i32 0, align 4
@mclk_ratios = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to configure MCLK ratio %d/%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"MCLK is %dfs\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"DAI in slave mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8776_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8776_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm8776_priv*, align 8
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
  %19 = call %struct.wm8776_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.wm8776_priv* %19, %struct.wm8776_priv** %9, align 8
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %29 [
    i32 128, label %25
    i32 129, label %27
  ]

25:                                               ; preds = %3
  %26 = load i32, i32* @WM8776_DACIFCTRL, align 4
  store i32 %26, i32* %10, align 4
  store i32 128, i32* %13, align 4
  store i32 4, i32* %12, align 4
  br label %32

27:                                               ; preds = %3
  %28 = load i32, i32* @WM8776_ADCIFCTRL, align 4
  store i32 %28, i32* %10, align 4
  store i32 256, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %140

32:                                               ; preds = %27, %25
  %33 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %34 = call i32 @params_width(%struct.snd_pcm_hw_params* %33)
  switch i32 %34, label %39 [
    i32 16, label %35
    i32 20, label %36
    i32 24, label %37
    i32 32, label %38
  ]

35:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %48

36:                                               ; preds = %32
  store i32 16, i32* %11, align 4
  br label %48

37:                                               ; preds = %32
  store i32 32, i32* %11, align 4
  br label %48

38:                                               ; preds = %32
  store i32 48, i32* %11, align 4
  br label %48

39:                                               ; preds = %32
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %41 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %44 = call i32 @params_width(%struct.snd_pcm_hw_params* %43)
  %45 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %140

48:                                               ; preds = %38, %37, %36, %35
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %50 = load i32, i32* @WM8776_MSTRCTRL, align 4
  %51 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %49, i32 %50)
  %52 = load i32, i32* %13, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %130

55:                                               ; preds = %48
  store i32 0, i32* %14, align 4
  br label %56

56:                                               ; preds = %84, %55
  %57 = load i32, i32* %14, align 4
  %58 = load i32*, i32** @mclk_ratios, align 8
  %59 = call i32 @ARRAY_SIZE(i32* %58)
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %56
  %62 = load %struct.wm8776_priv*, %struct.wm8776_priv** %9, align 8
  %63 = getelementptr inbounds %struct.wm8776_priv, %struct.wm8776_priv* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %66 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %64, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %74 = call i32 @params_rate(%struct.snd_pcm_hw_params* %73)
  %75 = sdiv i32 %72, %74
  %76 = load i32*, i32** @mclk_ratios, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %75, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %61
  br label %87

83:                                               ; preds = %61
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %56

87:                                               ; preds = %82, %56
  %88 = load i32, i32* %14, align 4
  %89 = load i32*, i32** @mclk_ratios, align 8
  %90 = call i32 @ARRAY_SIZE(i32* %89)
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %112

92:                                               ; preds = %87
  %93 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %94 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.wm8776_priv*, %struct.wm8776_priv** %9, align 8
  %97 = getelementptr inbounds %struct.wm8776_priv, %struct.wm8776_priv* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %100 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %98, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %108 = call i32 @params_rate(%struct.snd_pcm_hw_params* %107)
  %109 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %95, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %140

112:                                              ; preds = %87
  %113 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %114 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** @mclk_ratios, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, i8*, ...) @dev_dbg(i32 %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %123 = load i32, i32* @WM8776_MSTRCTRL, align 4
  %124 = load i32, i32* %12, align 4
  %125 = shl i32 7, %124
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %12, align 4
  %128 = shl i32 %126, %127
  %129 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %122, i32 %123, i32 %125, i32 %128)
  br label %135

130:                                              ; preds = %48
  %131 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %132 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32, i8*, ...) @dev_dbg(i32 %133, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %135

135:                                              ; preds = %130, %112
  %136 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %136, i32 %137, i32 48, i32 %138)
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %135, %92, %39, %29
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local %struct.wm8776_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
