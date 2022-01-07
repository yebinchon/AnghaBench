; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8974.c_wm8974_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8974.c_wm8974_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8974_priv = type { i32 }

@WM8974_IFACE = common dso_local global i32 0, align 4
@WM8974_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8974_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8974_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm8974_priv*, align 8
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
  %17 = call %struct.wm8974_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.wm8974_priv* %17, %struct.wm8974_priv** %9, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = load i32, i32* @WM8974_IFACE, align 4
  %20 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %18, i32 %19)
  %21 = and i32 %20, 415
  store i32 %21, i32* %10, align 4
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %23 = load i32, i32* @WM8974_ADD, align 4
  %24 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %22, i32 %23)
  %25 = and i32 %24, 497
  store i32 %25, i32* %11, align 4
  %26 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %27 = call i32 @params_rate(%struct.snd_pcm_hw_params* %26)
  %28 = load %struct.wm8974_priv*, %struct.wm8974_priv** %9, align 8
  %29 = getelementptr inbounds %struct.wm8974_priv, %struct.wm8974_priv* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %31 = call i32 @wm8974_update_clocks(%struct.snd_soc_dai* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %4, align 4
  br label %77

36:                                               ; preds = %3
  %37 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %38 = call i32 @params_width(%struct.snd_pcm_hw_params* %37)
  switch i32 %38, label %49 [
    i32 16, label %39
    i32 20, label %40
    i32 24, label %43
    i32 32, label %46
  ]

39:                                               ; preds = %36
  br label %49

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, 32
  store i32 %42, i32* %10, align 4
  br label %49

43:                                               ; preds = %36
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, 64
  store i32 %45, i32* %10, align 4
  br label %49

46:                                               ; preds = %36
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, 96
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %36, %46, %43, %40, %39
  %50 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %51 = call i32 @params_rate(%struct.snd_pcm_hw_params* %50)
  switch i32 %51, label %68 [
    i32 8000, label %52
    i32 11025, label %55
    i32 16000, label %58
    i32 22050, label %61
    i32 32000, label %64
    i32 44100, label %67
    i32 48000, label %67
  ]

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, 10
  store i32 %54, i32* %11, align 4
  br label %68

55:                                               ; preds = %49
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, 8
  store i32 %57, i32* %11, align 4
  br label %68

58:                                               ; preds = %49
  %59 = load i32, i32* %11, align 4
  %60 = or i32 %59, 6
  store i32 %60, i32* %11, align 4
  br label %68

61:                                               ; preds = %49
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, 4
  store i32 %63, i32* %11, align 4
  br label %68

64:                                               ; preds = %49
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, 2
  store i32 %66, i32* %11, align 4
  br label %68

67:                                               ; preds = %49, %49
  br label %68

68:                                               ; preds = %49, %67, %64, %61, %58, %55, %52
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %70 = load i32, i32* @WM8974_IFACE, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %69, i32 %70, i32 %71)
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %74 = load i32, i32* @WM8974_ADD, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %73, i32 %74, i32 %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %68, %34
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.wm8974_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @wm8974_update_clocks(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
