; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9081.c_wm9081_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9081.c_wm9081_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm9081_priv = type { i32 }

@WM9081_AUDIO_INTERFACE_2 = common dso_local global i32 0, align 4
@WM9081_AIF_BCLK_INV = common dso_local global i32 0, align 4
@WM9081_AIF_LRCLK_INV = common dso_local global i32 0, align 4
@WM9081_BCLK_DIR = common dso_local global i32 0, align 4
@WM9081_LRCLK_DIR = common dso_local global i32 0, align 4
@WM9081_AIF_FMT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm9081_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9081_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.wm9081_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %6, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %13 = call %struct.wm9081_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.wm9081_priv* %13, %struct.wm9081_priv** %7, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = load i32, i32* @WM9081_AUDIO_INTERFACE_2, align 4
  %16 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @WM9081_AIF_BCLK_INV, align 4
  %18 = load i32, i32* @WM9081_AIF_LRCLK_INV, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @WM9081_BCLK_DIR, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @WM9081_LRCLK_DIR, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @WM9081_AIF_FMT_MASK, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %55 [
    i32 137, label %32
    i32 138, label %35
    i32 139, label %41
    i32 140, label %47
  ]

32:                                               ; preds = %2
  %33 = load %struct.wm9081_priv*, %struct.wm9081_priv** %7, align 8
  %34 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  br label %58

35:                                               ; preds = %2
  %36 = load i32, i32* @WM9081_LRCLK_DIR, align 4
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load %struct.wm9081_priv*, %struct.wm9081_priv** %7, align 8
  %40 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %58

41:                                               ; preds = %2
  %42 = load i32, i32* @WM9081_BCLK_DIR, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load %struct.wm9081_priv*, %struct.wm9081_priv** %7, align 8
  %46 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  br label %58

47:                                               ; preds = %2
  %48 = load i32, i32* @WM9081_LRCLK_DIR, align 4
  %49 = load i32, i32* @WM9081_BCLK_DIR, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load %struct.wm9081_priv*, %struct.wm9081_priv** %7, align 8
  %54 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  br label %58

55:                                               ; preds = %2
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %127

58:                                               ; preds = %47, %41, %35, %32
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %61 = and i32 %59, %60
  switch i32 %61, label %76 [
    i32 135, label %62
    i32 136, label %66
    i32 134, label %69
    i32 128, label %72
    i32 131, label %73
  ]

62:                                               ; preds = %58
  %63 = load i32, i32* @WM9081_AIF_LRCLK_INV, align 4
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %58, %62
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, 3
  store i32 %68, i32* %8, align 4
  br label %79

69:                                               ; preds = %58
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, 2
  store i32 %71, i32* %8, align 4
  br label %79

72:                                               ; preds = %58
  br label %79

73:                                               ; preds = %58
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %79

76:                                               ; preds = %58
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %127

79:                                               ; preds = %73, %72, %69, %66
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %82 = and i32 %80, %81
  switch i32 %82, label %119 [
    i32 136, label %83
    i32 135, label %83
    i32 134, label %96
    i32 128, label %96
    i32 131, label %96
  ]

83:                                               ; preds = %79, %79
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %86 = and i32 %84, %85
  switch i32 %86, label %92 [
    i32 129, label %87
    i32 132, label %88
  ]

87:                                               ; preds = %83
  br label %95

88:                                               ; preds = %83
  %89 = load i32, i32* @WM9081_AIF_BCLK_INV, align 4
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  br label %95

92:                                               ; preds = %83
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %127

95:                                               ; preds = %88, %87
  br label %122

96:                                               ; preds = %79, %79, %79
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %99 = and i32 %97, %98
  switch i32 %99, label %115 [
    i32 129, label %100
    i32 133, label %101
    i32 132, label %107
    i32 130, label %111
  ]

100:                                              ; preds = %96
  br label %118

101:                                              ; preds = %96
  %102 = load i32, i32* @WM9081_AIF_BCLK_INV, align 4
  %103 = load i32, i32* @WM9081_AIF_LRCLK_INV, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %8, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %8, align 4
  br label %118

107:                                              ; preds = %96
  %108 = load i32, i32* @WM9081_AIF_BCLK_INV, align 4
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %118

111:                                              ; preds = %96
  %112 = load i32, i32* @WM9081_AIF_LRCLK_INV, align 4
  %113 = load i32, i32* %8, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %8, align 4
  br label %118

115:                                              ; preds = %96
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %127

118:                                              ; preds = %111, %107, %101, %100
  br label %122

119:                                              ; preds = %79
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %127

122:                                              ; preds = %118, %95
  %123 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %124 = load i32, i32* @WM9081_AUDIO_INTERFACE_2, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %123, i32 %124, i32 %125)
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %122, %119, %115, %92, %76, %55
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.wm9081_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
