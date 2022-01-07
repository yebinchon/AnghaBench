; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8711.c_wm8711_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8711.c_wm8711_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8711_priv = type { i32 }

@WM8711_IFACE = common dso_local global i32 0, align 4
@coeff_div = common dso_local global %struct.TYPE_2__* null, align 8
@WM8711_SRATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8711_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8711_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.wm8711_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %7, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %16 = call %struct.wm8711_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.wm8711_priv* %16, %struct.wm8711_priv** %8, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %18 = load i32, i32* @WM8711_IFACE, align 4
  %19 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %17, i32 %18)
  %20 = and i32 %19, 65523
  store i32 %20, i32* %9, align 4
  %21 = load %struct.wm8711_priv*, %struct.wm8711_priv** %8, align 8
  %22 = getelementptr inbounds %struct.wm8711_priv, %struct.wm8711_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %25 = call i32 @params_rate(%struct.snd_pcm_hw_params* %24)
  %26 = call i32 @get_coeff(i32 %23, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coeff_div, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coeff_div, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 1
  %41 = or i32 %33, %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coeff_div, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %41, %47
  store i32 %48, i32* %11, align 4
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %50 = load i32, i32* @WM8711_SRATE, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %49, i32 %50, i32 %51)
  %53 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %54 = call i32 @params_width(%struct.snd_pcm_hw_params* %53)
  switch i32 %54, label %62 [
    i32 16, label %55
    i32 20, label %56
    i32 24, label %59
  ]

55:                                               ; preds = %3
  br label %62

56:                                               ; preds = %3
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, 4
  store i32 %58, i32* %9, align 4
  br label %62

59:                                               ; preds = %3
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, 8
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %3, %59, %56, %55
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %64 = load i32, i32* @WM8711_IFACE, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %63, i32 %64, i32 %65)
  ret i32 0
}

declare dso_local %struct.wm8711_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @get_coeff(i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
