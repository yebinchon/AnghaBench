; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm1250-ev1.c_wm1250_ev1_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm1250-ev1.c_wm1250_ev1_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.wm1250_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WM1250_EV1_GPIO_CLK_SEL0 = common dso_local global i64 0, align 8
@WM1250_EV1_GPIO_CLK_SEL1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm1250_ev1_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm1250_ev1_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.wm1250_priv*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.wm1250_priv* @snd_soc_component_get_drvdata(i32 %11)
  store %struct.wm1250_priv* %12, %struct.wm1250_priv** %8, align 8
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %14 = call i32 @params_rate(%struct.snd_pcm_hw_params* %13)
  switch i32 %14, label %83 [
    i32 8000, label %15
    i32 16000, label %32
    i32 32000, label %49
    i32 64000, label %66
  ]

15:                                               ; preds = %3
  %16 = load %struct.wm1250_priv*, %struct.wm1250_priv** %8, align 8
  %17 = getelementptr inbounds %struct.wm1250_priv, %struct.wm1250_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* @WM1250_EV1_GPIO_CLK_SEL0, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @gpio_set_value(i32 %22, i32 1)
  %24 = load %struct.wm1250_priv*, %struct.wm1250_priv** %8, align 8
  %25 = getelementptr inbounds %struct.wm1250_priv, %struct.wm1250_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* @WM1250_EV1_GPIO_CLK_SEL1, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @gpio_set_value(i32 %30, i32 1)
  br label %86

32:                                               ; preds = %3
  %33 = load %struct.wm1250_priv*, %struct.wm1250_priv** %8, align 8
  %34 = getelementptr inbounds %struct.wm1250_priv, %struct.wm1250_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* @WM1250_EV1_GPIO_CLK_SEL0, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @gpio_set_value(i32 %39, i32 0)
  %41 = load %struct.wm1250_priv*, %struct.wm1250_priv** %8, align 8
  %42 = getelementptr inbounds %struct.wm1250_priv, %struct.wm1250_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* @WM1250_EV1_GPIO_CLK_SEL1, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @gpio_set_value(i32 %47, i32 1)
  br label %86

49:                                               ; preds = %3
  %50 = load %struct.wm1250_priv*, %struct.wm1250_priv** %8, align 8
  %51 = getelementptr inbounds %struct.wm1250_priv, %struct.wm1250_priv* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* @WM1250_EV1_GPIO_CLK_SEL0, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @gpio_set_value(i32 %56, i32 1)
  %58 = load %struct.wm1250_priv*, %struct.wm1250_priv** %8, align 8
  %59 = getelementptr inbounds %struct.wm1250_priv, %struct.wm1250_priv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* @WM1250_EV1_GPIO_CLK_SEL1, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @gpio_set_value(i32 %64, i32 0)
  br label %86

66:                                               ; preds = %3
  %67 = load %struct.wm1250_priv*, %struct.wm1250_priv** %8, align 8
  %68 = getelementptr inbounds %struct.wm1250_priv, %struct.wm1250_priv* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i64, i64* @WM1250_EV1_GPIO_CLK_SEL0, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @gpio_set_value(i32 %73, i32 0)
  %75 = load %struct.wm1250_priv*, %struct.wm1250_priv** %8, align 8
  %76 = getelementptr inbounds %struct.wm1250_priv, %struct.wm1250_priv* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i64, i64* @WM1250_EV1_GPIO_CLK_SEL1, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @gpio_set_value(i32 %81, i32 0)
  br label %86

83:                                               ; preds = %3
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %87

86:                                               ; preds = %66, %49, %32, %15
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %83
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.wm1250_priv* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
