; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8991.c_wm8991_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8991.c_wm8991_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM8991_AUDIO_INTERFACE_1 = common dso_local global i32 0, align 4
@WM8991_AUDIO_INTERFACE_3 = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@WM8991_AIF_MSTR1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8991_AIF_FMT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@WM8991_AIF_TMF_I2S = common dso_local global i32 0, align 4
@WM8991_AIF_LRCLK_INV = common dso_local global i32 0, align 4
@WM8991_AIF_TMF_RIGHTJ = common dso_local global i32 0, align 4
@WM8991_AIF_TMF_LEFTJ = common dso_local global i32 0, align 4
@WM8991_AIF_TMF_DSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8991_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8991_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %6, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %13 = load i32, i32* @WM8991_AUDIO_INTERFACE_1, align 4
  %14 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %16 = load i32, i32* @WM8991_AUDIO_INTERFACE_3, align 4
  %17 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %30 [
    i32 133, label %21
    i32 134, label %26
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* @WM8991_AIF_MSTR1, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %33

26:                                               ; preds = %2
  %27 = load i32, i32* @WM8991_AIF_MSTR1, align 4
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %91

33:                                               ; preds = %26, %21
  %34 = load i32, i32* @WM8991_AIF_FMT_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %40 = and i32 %38, %39
  switch i32 %40, label %79 [
    i32 130, label %41
    i32 128, label %49
    i32 129, label %57
    i32 132, label %65
    i32 131, label %73
  ]

41:                                               ; preds = %33
  %42 = load i32, i32* @WM8991_AIF_TMF_I2S, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @WM8991_AIF_LRCLK_INV, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %82

49:                                               ; preds = %33
  %50 = load i32, i32* @WM8991_AIF_TMF_RIGHTJ, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @WM8991_AIF_LRCLK_INV, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %82

57:                                               ; preds = %33
  %58 = load i32, i32* @WM8991_AIF_TMF_LEFTJ, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @WM8991_AIF_LRCLK_INV, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %82

65:                                               ; preds = %33
  %66 = load i32, i32* @WM8991_AIF_TMF_DSP, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* @WM8991_AIF_LRCLK_INV, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %82

73:                                               ; preds = %33
  %74 = load i32, i32* @WM8991_AIF_TMF_DSP, align 4
  %75 = load i32, i32* @WM8991_AIF_LRCLK_INV, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %82

79:                                               ; preds = %33
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %91

82:                                               ; preds = %73, %65, %57, %49, %41
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %84 = load i32, i32* @WM8991_AUDIO_INTERFACE_1, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %83, i32 %84, i32 %85)
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %88 = load i32, i32* @WM8991_AUDIO_INTERFACE_3, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %87, i32 %88, i32 %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %82, %79, %30
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
