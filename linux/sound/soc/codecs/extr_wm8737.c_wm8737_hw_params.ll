; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8737.c_wm8737_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8737.c_wm8737_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8737_priv = type { i32 }

@coeff_div = common dso_local global %struct.TYPE_3__* null, align 8
@WM8737_CLKDIV2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%dHz MCLK can't support %dHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8737_SR_SHIFT = common dso_local global i32 0, align 4
@WM8737_AUDIO_FORMAT = common dso_local global i32 0, align 4
@WM8737_WL_MASK = common dso_local global i32 0, align 4
@WM8737_CLOCKING = common dso_local global i32 0, align 4
@WM8737_USB_MODE = common dso_local global i32 0, align 4
@WM8737_SR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8737_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8737_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm8737_priv*, align 8
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
  %17 = call %struct.wm8737_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.wm8737_priv* %17, %struct.wm8737_priv** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %63, %3
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coeff_div, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %66

23:                                               ; preds = %18
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coeff_div, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %31 = call i64 @params_rate(%struct.snd_pcm_hw_params* %30)
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %63

34:                                               ; preds = %23
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coeff_div, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.wm8737_priv*, %struct.wm8737_priv** %9, align 8
  %42 = getelementptr inbounds %struct.wm8737_priv, %struct.wm8737_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %66

46:                                               ; preds = %34
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coeff_div, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.wm8737_priv*, %struct.wm8737_priv** %9, align 8
  %54 = getelementptr inbounds %struct.wm8737_priv, %struct.wm8737_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %55, 2
  %57 = icmp eq i32 %52, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load i32, i32* @WM8737_CLKDIV2, align 4
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %66

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62, %33
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %18

66:                                               ; preds = %58, %45, %18
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coeff_div, align 8
  %69 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %68)
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %73 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.wm8737_priv*, %struct.wm8737_priv** %9, align 8
  %76 = getelementptr inbounds %struct.wm8737_priv, %struct.wm8737_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %79 = call i64 @params_rate(%struct.snd_pcm_hw_params* %78)
  %80 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %77, i64 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %131

83:                                               ; preds = %66
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coeff_div, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coeff_div, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @WM8737_SR_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = or i32 %89, %97
  %99 = load i32, i32* %11, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %11, align 4
  %101 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %102 = call i32 @params_width(%struct.snd_pcm_hw_params* %101)
  switch i32 %102, label %113 [
    i32 16, label %103
    i32 20, label %104
    i32 24, label %107
    i32 32, label %110
  ]

103:                                              ; preds = %83
  br label %116

104:                                              ; preds = %83
  %105 = load i32, i32* %12, align 4
  %106 = or i32 %105, 8
  store i32 %106, i32* %12, align 4
  br label %116

107:                                              ; preds = %83
  %108 = load i32, i32* %12, align 4
  %109 = or i32 %108, 16
  store i32 %109, i32* %12, align 4
  br label %116

110:                                              ; preds = %83
  %111 = load i32, i32* %12, align 4
  %112 = or i32 %111, 24
  store i32 %112, i32* %12, align 4
  br label %116

113:                                              ; preds = %83
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %131

116:                                              ; preds = %110, %107, %104, %103
  %117 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %118 = load i32, i32* @WM8737_AUDIO_FORMAT, align 4
  %119 = load i32, i32* @WM8737_WL_MASK, align 4
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %117, i32 %118, i32 %119, i32 %120)
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %123 = load i32, i32* @WM8737_CLOCKING, align 4
  %124 = load i32, i32* @WM8737_USB_MODE, align 4
  %125 = load i32, i32* @WM8737_CLKDIV2, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @WM8737_SR_MASK, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %122, i32 %123, i32 %128, i32 %129)
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %116, %113, %71
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.wm8737_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i64) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
