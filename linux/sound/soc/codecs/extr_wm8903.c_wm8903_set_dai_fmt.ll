; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8903.c_wm8903_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8903.c_wm8903_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM8903_AUDIO_INTERFACE_1 = common dso_local global i32 0, align 4
@WM8903_LRCLK_DIR = common dso_local global i32 0, align 4
@WM8903_BCLK_DIR = common dso_local global i32 0, align 4
@WM8903_AIF_FMT_MASK = common dso_local global i32 0, align 4
@WM8903_AIF_LRCLK_INV = common dso_local global i32 0, align 4
@WM8903_AIF_BCLK_INV = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8903_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8903_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %6, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %12 = load i32, i32* @WM8903_AUDIO_INTERFACE_1, align 4
  %13 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @WM8903_LRCLK_DIR, align 4
  %15 = load i32, i32* @WM8903_BCLK_DIR, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @WM8903_AIF_FMT_MASK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @WM8903_AIF_LRCLK_INV, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @WM8903_AIF_BCLK_INV, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %28 = and i32 %26, %27
  switch i32 %28, label %44 [
    i32 137, label %29
    i32 138, label %30
    i32 140, label %34
    i32 139, label %40
  ]

29:                                               ; preds = %2
  br label %47

30:                                               ; preds = %2
  %31 = load i32, i32* @WM8903_LRCLK_DIR, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %47

34:                                               ; preds = %2
  %35 = load i32, i32* @WM8903_LRCLK_DIR, align 4
  %36 = load i32, i32* @WM8903_BCLK_DIR, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %47

40:                                               ; preds = %2
  %41 = load i32, i32* @WM8903_BCLK_DIR, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %47

44:                                               ; preds = %2
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %117

47:                                               ; preds = %40, %34, %30, %29
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %50 = and i32 %48, %49
  switch i32 %50, label %66 [
    i32 136, label %51
    i32 135, label %54
    i32 134, label %59
    i32 128, label %62
    i32 131, label %65
  ]

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, 3
  store i32 %53, i32* %7, align 4
  br label %69

54:                                               ; preds = %47
  %55 = load i32, i32* @WM8903_AIF_LRCLK_INV, align 4
  %56 = or i32 3, %55
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %69

59:                                               ; preds = %47
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, 2
  store i32 %61, i32* %7, align 4
  br label %69

62:                                               ; preds = %47
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %69

65:                                               ; preds = %47
  br label %69

66:                                               ; preds = %47
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %117

69:                                               ; preds = %65, %62, %59, %54, %51
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %72 = and i32 %70, %71
  switch i32 %72, label %109 [
    i32 136, label %73
    i32 135, label %73
    i32 134, label %86
    i32 128, label %86
    i32 131, label %86
  ]

73:                                               ; preds = %69, %69
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %76 = and i32 %74, %75
  switch i32 %76, label %82 [
    i32 129, label %77
    i32 132, label %78
  ]

77:                                               ; preds = %73
  br label %85

78:                                               ; preds = %73
  %79 = load i32, i32* @WM8903_AIF_BCLK_INV, align 4
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  br label %85

82:                                               ; preds = %73
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %117

85:                                               ; preds = %78, %77
  br label %112

86:                                               ; preds = %69, %69, %69
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %89 = and i32 %87, %88
  switch i32 %89, label %105 [
    i32 129, label %90
    i32 133, label %91
    i32 132, label %97
    i32 130, label %101
  ]

90:                                               ; preds = %86
  br label %108

91:                                               ; preds = %86
  %92 = load i32, i32* @WM8903_AIF_BCLK_INV, align 4
  %93 = load i32, i32* @WM8903_AIF_LRCLK_INV, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  br label %108

97:                                               ; preds = %86
  %98 = load i32, i32* @WM8903_AIF_BCLK_INV, align 4
  %99 = load i32, i32* %7, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %7, align 4
  br label %108

101:                                              ; preds = %86
  %102 = load i32, i32* @WM8903_AIF_LRCLK_INV, align 4
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %7, align 4
  br label %108

105:                                              ; preds = %86
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %117

108:                                              ; preds = %101, %97, %91, %90
  br label %112

109:                                              ; preds = %69
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %117

112:                                              ; preds = %108, %85
  %113 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %114 = load i32, i32* @WM8903_AUDIO_INTERFACE_1, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %113, i32 %114, i32 %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %112, %109, %105, %82, %66, %44
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
