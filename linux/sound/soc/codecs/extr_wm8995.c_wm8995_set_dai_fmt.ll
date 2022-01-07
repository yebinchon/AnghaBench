; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_wm8995_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_wm8995_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@WM8995_AIF1_MSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unknown master/slave configuration\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@WM8995_AIF1_LRCLK_INV = common dso_local global i32 0, align 4
@WM8995_AIF1_FMT_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Unknown dai format\0A\00", align 1
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@WM8995_AIF1_BCLK_INV = common dso_local global i32 0, align 4
@WM8995_AIF1_CONTROL_1 = common dso_local global i32 0, align 4
@WM8995_AIF1_BCLK_INV_MASK = common dso_local global i32 0, align 4
@WM8995_AIF1_LRCLK_INV_MASK = common dso_local global i32 0, align 4
@WM8995_AIF1_FMT_MASK = common dso_local global i32 0, align 4
@WM8995_AIF1_MASTER_SLAVE = common dso_local global i32 0, align 4
@WM8995_AIF1_MSTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8995_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8995_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 1
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %18 [
    i32 137, label %15
    i32 138, label %16
  ]

15:                                               ; preds = %2
  br label %25

16:                                               ; preds = %2
  %17 = load i32, i32* @WM8995_AIF1_MSTR, align 4
  store i32 %17, i32* %7, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %114

25:                                               ; preds = %16, %15
  store i32 0, i32* %8, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %28 = and i32 %26, %27
  switch i32 %28, label %49 [
    i32 135, label %29
    i32 136, label %33
    i32 134, label %38
    i32 128, label %43
    i32 131, label %44
  ]

29:                                               ; preds = %25
  %30 = load i32, i32* @WM8995_AIF1_LRCLK_INV, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %25, %29
  %34 = load i32, i32* @WM8995_AIF1_FMT_SHIFT, align 4
  %35 = shl i32 3, %34
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %56

38:                                               ; preds = %25
  %39 = load i32, i32* @WM8995_AIF1_FMT_SHIFT, align 4
  %40 = shl i32 2, %39
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %56

43:                                               ; preds = %25
  br label %56

44:                                               ; preds = %25
  %45 = load i32, i32* @WM8995_AIF1_FMT_SHIFT, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %56

49:                                               ; preds = %25
  %50 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %51 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %114

56:                                               ; preds = %44, %43, %38, %33
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
  %66 = load i32, i32* @WM8995_AIF1_BCLK_INV, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %72

69:                                               ; preds = %60
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %114

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
  %79 = load i32, i32* @WM8995_AIF1_BCLK_INV, align 4
  %80 = load i32, i32* @WM8995_AIF1_LRCLK_INV, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %95

84:                                               ; preds = %73
  %85 = load i32, i32* @WM8995_AIF1_BCLK_INV, align 4
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %95

88:                                               ; preds = %73
  %89 = load i32, i32* @WM8995_AIF1_LRCLK_INV, align 4
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  br label %95

92:                                               ; preds = %73
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %114

95:                                               ; preds = %88, %84, %78, %77
  br label %99

96:                                               ; preds = %56
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %114

99:                                               ; preds = %95, %72
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %101 = load i32, i32* @WM8995_AIF1_CONTROL_1, align 4
  %102 = load i32, i32* @WM8995_AIF1_BCLK_INV_MASK, align 4
  %103 = load i32, i32* @WM8995_AIF1_LRCLK_INV_MASK, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @WM8995_AIF1_FMT_MASK, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %100, i32 %101, i32 %106, i32 %107)
  %109 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %110 = load i32, i32* @WM8995_AIF1_MASTER_SLAVE, align 4
  %111 = load i32, i32* @WM8995_AIF1_MSTR_MASK, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %109, i32 %110, i32 %111, i32 %112)
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %99, %96, %92, %69, %49, %18
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
