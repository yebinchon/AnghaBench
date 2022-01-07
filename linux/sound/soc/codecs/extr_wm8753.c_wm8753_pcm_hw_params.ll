; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8753.c_wm8753_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8753.c_wm8753_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8753_priv = type { i32 }

@WM8753_PCM = common dso_local global i32 0, align 4
@WM8753_SRATE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8753_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8753_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.wm8753_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %7, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = call %struct.wm8753_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.wm8753_priv* %15, %struct.wm8753_priv** %8, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %17 = load i32, i32* @WM8753_PCM, align 4
  %18 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %16, i32 %17)
  %19 = and i32 %18, 499
  store i32 %19, i32* %9, align 4
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %21 = load i32, i32* @WM8753_SRATE1, align 4
  %22 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %20, i32 %21)
  %23 = and i32 %22, 383
  store i32 %23, i32* %10, align 4
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %25 = call i32 @params_width(%struct.snd_pcm_hw_params* %24)
  switch i32 %25, label %36 [
    i32 16, label %26
    i32 20, label %27
    i32 24, label %30
    i32 32, label %33
  ]

26:                                               ; preds = %3
  br label %36

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, 4
  store i32 %29, i32* %9, align 4
  br label %36

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, 8
  store i32 %32, i32* %9, align 4
  br label %36

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, 12
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %3, %33, %30, %27, %26
  %37 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %38 = call i32 @params_rate(%struct.snd_pcm_hw_params* %37)
  %39 = mul nsw i32 %38, 384
  %40 = load %struct.wm8753_priv*, %struct.wm8753_priv** %8, align 8
  %41 = getelementptr inbounds %struct.wm8753_priv, %struct.wm8753_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, 128
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %44, %36
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %49 = load i32, i32* @WM8753_SRATE1, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %48, i32 %49, i32 %50)
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %53 = load i32, i32* @WM8753_PCM, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %52, i32 %53, i32 %54)
  ret i32 0
}

declare dso_local %struct.wm8753_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
