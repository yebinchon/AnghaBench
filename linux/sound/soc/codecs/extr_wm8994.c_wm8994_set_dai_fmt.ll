; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8994_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8994_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { %struct.wm8994* }
%struct.wm8994 = type { i32 }

@WM8994_AIF1_MASTER_SLAVE = common dso_local global i32 0, align 4
@WM8994_AIF1_CONTROL_1 = common dso_local global i32 0, align 4
@WM8994_AIF1DAC_LRCLK = common dso_local global i32 0, align 4
@WM8994_AIF1ADC_LRCLK = common dso_local global i32 0, align 4
@WM8994_AIF2_MASTER_SLAVE = common dso_local global i32 0, align 4
@WM8994_AIF2_CONTROL_1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@WM8994_AIF1_MSTR = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@WM8994_AIF1_LRCLK_INV = common dso_local global i32 0, align 4
@WM8958_AIF1_LRCLK_INV = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@WM8994_AIF1_BCLK_INV = common dso_local global i32 0, align 4
@WM8958_AIF3_CONTROL_1 = common dso_local global i32 0, align 4
@WM8958_AIF3_FMT_MASK = common dso_local global i32 0, align 4
@WM8994_AIF1_FMT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8994_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8994_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.wm8994_priv*, align 8
  %8 = alloca %struct.wm8994*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 1
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %6, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %20 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.wm8994_priv* %20, %struct.wm8994_priv** %7, align 8
  %21 = load %struct.wm8994_priv*, %struct.wm8994_priv** %7, align 8
  %22 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %21, i32 0, i32 0
  %23 = load %struct.wm8994*, %struct.wm8994** %22, align 8
  store %struct.wm8994* %23, %struct.wm8994** %8, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %25 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %37 [
    i32 1, label %27
    i32 2, label %32
  ]

27:                                               ; preds = %2
  %28 = load i32, i32* @WM8994_AIF1_MASTER_SLAVE, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @WM8994_AIF1_CONTROL_1, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @WM8994_AIF1DAC_LRCLK, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* @WM8994_AIF1ADC_LRCLK, align 4
  store i32 %31, i32* %12, align 4
  br label %40

32:                                               ; preds = %2
  %33 = load i32, i32* @WM8994_AIF2_MASTER_SLAVE, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @WM8994_AIF2_CONTROL_1, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @WM8994_AIF1DAC_LRCLK, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* @WM8994_AIF1ADC_LRCLK, align 4
  store i32 %36, i32* %12, align 4
  br label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %167

40:                                               ; preds = %32, %27
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %43 = and i32 %41, %42
  switch i32 %43, label %47 [
    i32 139, label %44
    i32 140, label %45
  ]

44:                                               ; preds = %40
  br label %50

45:                                               ; preds = %40
  %46 = load i32, i32* @WM8994_AIF1_MSTR, align 4
  store i32 %46, i32* %13, align 4
  br label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %167

50:                                               ; preds = %45, %44
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %53 = and i32 %51, %52
  switch i32 %53, label %71 [
    i32 137, label %54
    i32 138, label %61
    i32 136, label %64
    i32 130, label %67
    i32 133, label %68
  ]

54:                                               ; preds = %50
  %55 = load i32, i32* @WM8994_AIF1_LRCLK_INV, align 4
  %56 = load i32, i32* %14, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* @WM8958_AIF1_LRCLK_INV, align 4
  %59 = load i32, i32* %15, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %50, %54
  %62 = load i32, i32* %14, align 4
  %63 = or i32 %62, 24
  store i32 %63, i32* %14, align 4
  br label %74

64:                                               ; preds = %50
  %65 = load i32, i32* %14, align 4
  %66 = or i32 %65, 16
  store i32 %66, i32* %14, align 4
  br label %74

67:                                               ; preds = %50
  br label %74

68:                                               ; preds = %50
  %69 = load i32, i32* %14, align 4
  %70 = or i32 %69, 8
  store i32 %70, i32* %14, align 4
  br label %74

71:                                               ; preds = %50
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %167

74:                                               ; preds = %68, %67, %64, %61
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %77 = and i32 %75, %76
  switch i32 %77, label %120 [
    i32 138, label %78
    i32 137, label %78
    i32 136, label %91
    i32 130, label %91
    i32 133, label %91
  ]

78:                                               ; preds = %74, %74
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %81 = and i32 %79, %80
  switch i32 %81, label %87 [
    i32 131, label %82
    i32 134, label %83
  ]

82:                                               ; preds = %78
  br label %90

83:                                               ; preds = %78
  %84 = load i32, i32* @WM8994_AIF1_BCLK_INV, align 4
  %85 = load i32, i32* %14, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %14, align 4
  br label %90

87:                                               ; preds = %78
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %167

90:                                               ; preds = %83, %82
  br label %123

91:                                               ; preds = %74, %74, %74
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %94 = and i32 %92, %93
  switch i32 %94, label %116 [
    i32 131, label %95
    i32 135, label %96
    i32 134, label %105
    i32 132, label %109
  ]

95:                                               ; preds = %91
  br label %119

96:                                               ; preds = %91
  %97 = load i32, i32* @WM8994_AIF1_BCLK_INV, align 4
  %98 = load i32, i32* @WM8994_AIF1_LRCLK_INV, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %14, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* @WM8958_AIF1_LRCLK_INV, align 4
  %103 = load i32, i32* %15, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %15, align 4
  br label %119

105:                                              ; preds = %91
  %106 = load i32, i32* @WM8994_AIF1_BCLK_INV, align 4
  %107 = load i32, i32* %14, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %14, align 4
  br label %119

109:                                              ; preds = %91
  %110 = load i32, i32* @WM8994_AIF1_LRCLK_INV, align 4
  %111 = load i32, i32* %14, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* @WM8958_AIF1_LRCLK_INV, align 4
  %114 = load i32, i32* %15, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %15, align 4
  br label %119

116:                                              ; preds = %91
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %167

119:                                              ; preds = %109, %105, %96, %95
  br label %123

120:                                              ; preds = %74
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %167

123:                                              ; preds = %119, %90
  %124 = load %struct.wm8994*, %struct.wm8994** %8, align 8
  %125 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  switch i32 %126, label %141 [
    i32 129, label %127
    i32 128, label %127
  ]

127:                                              ; preds = %123, %123
  %128 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %129 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 2
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %134 = load i32, i32* @WM8958_AIF3_CONTROL_1, align 4
  %135 = load i32, i32* @WM8994_AIF1_LRCLK_INV, align 4
  %136 = load i32, i32* @WM8958_AIF3_FMT_MASK, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %133, i32 %134, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %132, %127
  br label %142

141:                                              ; preds = %123
  br label %142

142:                                              ; preds = %141, %140
  %143 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @WM8994_AIF1_BCLK_INV, align 4
  %146 = load i32, i32* @WM8994_AIF1_LRCLK_INV, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @WM8994_AIF1_FMT_MASK, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %143, i32 %144, i32 %149, i32 %150)
  %152 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @WM8994_AIF1_MSTR, align 4
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %152, i32 %153, i32 %154, i32 %155)
  %157 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @WM8958_AIF1_LRCLK_INV, align 4
  %160 = load i32, i32* %15, align 4
  %161 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %157, i32 %158, i32 %159, i32 %160)
  %162 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* @WM8958_AIF1_LRCLK_INV, align 4
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %162, i32 %163, i32 %164, i32 %165)
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %142, %120, %116, %87, %71, %47, %37
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
