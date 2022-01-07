; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8940.c_wm8940_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8940.c_wm8940_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM8940_IFACE = common dso_local global i32 0, align 4
@WM8940_ADDCNTRL = common dso_local global i32 0, align 4
@WM8940_COMPANDINGCTL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8940_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8940_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
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
  %16 = load i32, i32* @WM8940_IFACE, align 4
  %17 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %15, i32 %16)
  %18 = and i32 %17, 64927
  store i32 %18, i32* %8, align 4
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %20 = load i32, i32* @WM8940_ADDCNTRL, align 4
  %21 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %19, i32 %20)
  %22 = and i32 %21, 65521
  store i32 %22, i32* %9, align 4
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %24 = load i32, i32* @WM8940_COMPANDINGCTL, align 4
  %25 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %23, i32 %24)
  %26 = and i32 %25, 65503
  store i32 %26, i32* %10, align 4
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %3
  %33 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %34 = call i32 @params_channels(%struct.snd_pcm_hw_params* %33)
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, 512
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %32, %3
  %40 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %41 = call i32 @params_rate(%struct.snd_pcm_hw_params* %40)
  switch i32 %41, label %58 [
    i32 8000, label %42
    i32 11025, label %45
    i32 16000, label %48
    i32 22050, label %51
    i32 32000, label %54
    i32 44100, label %57
    i32 48000, label %57
  ]

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, 10
  store i32 %44, i32* %9, align 4
  br label %58

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, 8
  store i32 %47, i32* %9, align 4
  br label %58

48:                                               ; preds = %39
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, 6
  store i32 %50, i32* %9, align 4
  br label %58

51:                                               ; preds = %39
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, 4
  store i32 %53, i32* %9, align 4
  br label %58

54:                                               ; preds = %39
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, 2
  store i32 %56, i32* %9, align 4
  br label %58

57:                                               ; preds = %39, %39
  br label %58

58:                                               ; preds = %39, %57, %54, %51, %48, %45, %42
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %60 = load i32, i32* @WM8940_ADDCNTRL, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %59, i32 %60, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %95

66:                                               ; preds = %58
  %67 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %68 = call i32 @params_width(%struct.snd_pcm_hw_params* %67)
  switch i32 %68, label %82 [
    i32 8, label %69
    i32 16, label %72
    i32 20, label %73
    i32 24, label %76
    i32 32, label %79
  ]

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, 32
  store i32 %71, i32* %10, align 4
  br label %82

72:                                               ; preds = %66
  br label %82

73:                                               ; preds = %66
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, 32
  store i32 %75, i32* %8, align 4
  br label %82

76:                                               ; preds = %66
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, 64
  store i32 %78, i32* %8, align 4
  br label %82

79:                                               ; preds = %66
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, 96
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %66, %79, %76, %73, %72, %69
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %84 = load i32, i32* @WM8940_COMPANDINGCTL, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %83, i32 %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %95

90:                                               ; preds = %82
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %92 = load i32, i32* @WM8940_IFACE, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %91, i32 %92, i32 %93)
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %90, %89, %65
  %96 = load i32, i32* %11, align 4
  ret i32 %96
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
