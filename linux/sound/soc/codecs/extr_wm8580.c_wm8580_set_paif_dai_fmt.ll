; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8580.c_wm8580_set_paif_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8580.c_wm8580_set_paif_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.TYPE_2__*, %struct.snd_soc_component* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_soc_component = type { i32 }

@WM8580_PAIF1 = common dso_local global i64 0, align 8
@WM8580_PAIF3 = common dso_local global i64 0, align 8
@WM8580_AIF_FMT_MASK = common dso_local global i32 0, align 4
@WM8580_AIF_LRP = common dso_local global i32 0, align 4
@WM8580_AIF_BCP = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@WM8580_AIF_MS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@WM8580_AIF_FMT_I2S = common dso_local global i32 0, align 4
@WM8580_AIF_FMT_RIGHTJ = common dso_local global i32 0, align 4
@WM8580_AIF_FMT_LEFTJ = common dso_local global i32 0, align 4
@WM8580_AIF_FMT_DSP = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8580_set_paif_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8580_set_paif_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = load i64, i64* @WM8580_PAIF1, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %14, %19
  %21 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %13, i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %23 = load i64, i64* @WM8580_PAIF3, align 8
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %25 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %23, %28
  %30 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %22, i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @WM8580_AIF_FMT_MASK, align 4
  %32 = load i32, i32* @WM8580_AIF_LRP, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @WM8580_AIF_BCP, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %41 = and i32 %39, %40
  switch i32 %41, label %51 [
    i32 137, label %42
    i32 138, label %47
  ]

42:                                               ; preds = %2
  %43 = load i32, i32* @WM8580_AIF_MS, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %54

47:                                               ; preds = %2
  %48 = load i32, i32* @WM8580_AIF_MS, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %54

51:                                               ; preds = %2
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %140

54:                                               ; preds = %47, %42
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %57 = and i32 %55, %56
  switch i32 %57, label %81 [
    i32 134, label %58
    i32 128, label %62
    i32 131, label %66
    i32 136, label %70
    i32 135, label %74
  ]

58:                                               ; preds = %54
  store i32 1, i32* %9, align 4
  %59 = load i32, i32* @WM8580_AIF_FMT_I2S, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %84

62:                                               ; preds = %54
  store i32 1, i32* %9, align 4
  %63 = load i32, i32* @WM8580_AIF_FMT_RIGHTJ, align 4
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  br label %84

66:                                               ; preds = %54
  store i32 1, i32* %9, align 4
  %67 = load i32, i32* @WM8580_AIF_FMT_LEFTJ, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %84

70:                                               ; preds = %54
  store i32 0, i32* %9, align 4
  %71 = load i32, i32* @WM8580_AIF_FMT_DSP, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %84

74:                                               ; preds = %54
  store i32 0, i32* %9, align 4
  %75 = load i32, i32* @WM8580_AIF_FMT_DSP, align 4
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* @WM8580_AIF_LRP, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %84

81:                                               ; preds = %54
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %140

84:                                               ; preds = %74, %70, %66, %62, %58
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %87 = and i32 %85, %86
  switch i32 %87, label %116 [
    i32 129, label %88
    i32 133, label %89
    i32 132, label %102
    i32 130, label %106
  ]

88:                                               ; preds = %84
  br label %119

89:                                               ; preds = %84
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %140

95:                                               ; preds = %89
  %96 = load i32, i32* @WM8580_AIF_BCP, align 4
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* @WM8580_AIF_LRP, align 4
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  br label %119

102:                                              ; preds = %84
  %103 = load i32, i32* @WM8580_AIF_BCP, align 4
  %104 = load i32, i32* %8, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %8, align 4
  br label %119

106:                                              ; preds = %84
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %140

112:                                              ; preds = %106
  %113 = load i32, i32* @WM8580_AIF_LRP, align 4
  %114 = load i32, i32* %8, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %8, align 4
  br label %119

116:                                              ; preds = %84
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %140

119:                                              ; preds = %112, %102, %95, %88
  %120 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %121 = load i64, i64* @WM8580_PAIF1, align 8
  %122 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %123 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %121, %126
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %120, i64 %127, i32 %128)
  %130 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %131 = load i64, i64* @WM8580_PAIF3, align 8
  %132 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %133 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %131, %136
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %130, i64 %137, i32 %138)
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %119, %116, %109, %92, %81, %51
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i64) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
