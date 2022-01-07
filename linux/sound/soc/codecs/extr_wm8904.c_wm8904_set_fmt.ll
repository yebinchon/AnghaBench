; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@WM8904_LRCLK_DIR = common dso_local global i32 0, align 4
@WM8904_BCLK_DIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@WM8904_AIF_LRCLK_INV = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@WM8904_AIF_BCLK_INV = common dso_local global i32 0, align 4
@WM8904_AUDIO_INTERFACE_1 = common dso_local global i32 0, align 4
@WM8904_AIF_FMT_MASK = common dso_local global i32 0, align 4
@WM8904_AUDIO_INTERFACE_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8904_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8904_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
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
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %31 [
    i32 137, label %15
    i32 138, label %16
    i32 139, label %20
    i32 140, label %24
  ]

15:                                               ; preds = %2
  br label %34

16:                                               ; preds = %2
  %17 = load i32, i32* @WM8904_LRCLK_DIR, align 4
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %8, align 4
  br label %34

20:                                               ; preds = %2
  %21 = load i32, i32* @WM8904_BCLK_DIR, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %34

24:                                               ; preds = %2
  %25 = load i32, i32* @WM8904_BCLK_DIR, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @WM8904_LRCLK_DIR, align 4
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  br label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %116

34:                                               ; preds = %24, %20, %16, %15
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %37 = and i32 %35, %36
  switch i32 %37, label %53 [
    i32 135, label %38
    i32 136, label %43
    i32 134, label %46
    i32 128, label %49
    i32 131, label %50
  ]

38:                                               ; preds = %34
  %39 = load i32, i32* @WM8904_AIF_LRCLK_INV, align 4
  %40 = or i32 3, %39
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %34, %38
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, 3
  store i32 %45, i32* %7, align 4
  br label %56

46:                                               ; preds = %34
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, 2
  store i32 %48, i32* %7, align 4
  br label %56

49:                                               ; preds = %34
  br label %56

50:                                               ; preds = %34
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %56

53:                                               ; preds = %34
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %116

56:                                               ; preds = %50, %49, %46, %43
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %59 = and i32 %57, %58
  switch i32 %59, label %96 [
    i32 136, label %60
    i32 135, label %60
    i32 134, label %73
    i32 128, label %73
    i32 131, label %73
  ]

60:                                               ; preds = %56, %56
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %63 = and i32 %61, %62
  switch i32 %63, label %69 [
    i32 129, label %64
    i32 132, label %65
  ]

64:                                               ; preds = %60
  br label %72

65:                                               ; preds = %60
  %66 = load i32, i32* @WM8904_AIF_BCLK_INV, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %72

69:                                               ; preds = %60
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %116

72:                                               ; preds = %65, %64
  br label %99

73:                                               ; preds = %56, %56, %56
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %76 = and i32 %74, %75
  switch i32 %76, label %92 [
    i32 129, label %77
    i32 133, label %78
    i32 132, label %84
    i32 130, label %88
  ]

77:                                               ; preds = %73
  br label %95

78:                                               ; preds = %73
  %79 = load i32, i32* @WM8904_AIF_BCLK_INV, align 4
  %80 = load i32, i32* @WM8904_AIF_LRCLK_INV, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %95

84:                                               ; preds = %73
  %85 = load i32, i32* @WM8904_AIF_BCLK_INV, align 4
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %95

88:                                               ; preds = %73
  %89 = load i32, i32* @WM8904_AIF_LRCLK_INV, align 4
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %95

92:                                               ; preds = %73
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %116

95:                                               ; preds = %88, %84, %78, %77
  br label %99

96:                                               ; preds = %56
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %116

99:                                               ; preds = %95, %72
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %101 = load i32, i32* @WM8904_AUDIO_INTERFACE_1, align 4
  %102 = load i32, i32* @WM8904_AIF_BCLK_INV, align 4
  %103 = load i32, i32* @WM8904_AIF_LRCLK_INV, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @WM8904_AIF_FMT_MASK, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @WM8904_BCLK_DIR, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %100, i32 %101, i32 %108, i32 %109)
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %112 = load i32, i32* @WM8904_AUDIO_INTERFACE_3, align 4
  %113 = load i32, i32* @WM8904_LRCLK_DIR, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %111, i32 %112, i32 %113, i32 %114)
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %99, %96, %92, %69, %53, %31
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
