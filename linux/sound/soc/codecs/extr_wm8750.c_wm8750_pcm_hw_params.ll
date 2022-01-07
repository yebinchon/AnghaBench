; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8750.c_wm8750_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8750.c_wm8750_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8750_priv = type { i32 }

@WM8750_IFACE = common dso_local global i32 0, align 4
@WM8750_SRATE = common dso_local global i32 0, align 4
@coeff_div = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8750_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8750_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.wm8750_priv*, align 8
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
  %16 = call %struct.wm8750_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.wm8750_priv* %16, %struct.wm8750_priv** %8, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %18 = load i32, i32* @WM8750_IFACE, align 4
  %19 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %17, i32 %18)
  %20 = and i32 %19, 499
  store i32 %20, i32* %9, align 4
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %22 = load i32, i32* @WM8750_SRATE, align 4
  %23 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %21, i32 %22)
  %24 = and i32 %23, 448
  store i32 %24, i32* %10, align 4
  %25 = load %struct.wm8750_priv*, %struct.wm8750_priv** %8, align 8
  %26 = getelementptr inbounds %struct.wm8750_priv, %struct.wm8750_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %29 = call i32 @params_rate(%struct.snd_pcm_hw_params* %28)
  %30 = call i32 @get_coeff(i32 %27, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %32 = call i32 @params_width(%struct.snd_pcm_hw_params* %31)
  switch i32 %32, label %43 [
    i32 16, label %33
    i32 20, label %34
    i32 24, label %37
    i32 32, label %40
  ]

33:                                               ; preds = %3
  br label %43

34:                                               ; preds = %3
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, 4
  store i32 %36, i32* %9, align 4
  br label %43

37:                                               ; preds = %3
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, 8
  store i32 %39, i32* %9, align 4
  br label %43

40:                                               ; preds = %3
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, 12
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %3, %40, %37, %34, %33
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %45 = load i32, i32* @WM8750_IFACE, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %44, i32 %45, i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %43
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %52 = load i32, i32* @WM8750_SRATE, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coeff_div, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 1
  %61 = or i32 %53, %60
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coeff_div, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %61, %67
  %69 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %51, i32 %52, i32 %68)
  br label %70

70:                                               ; preds = %50, %43
  ret i32 0
}

declare dso_local %struct.wm8750_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @get_coeff(i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
