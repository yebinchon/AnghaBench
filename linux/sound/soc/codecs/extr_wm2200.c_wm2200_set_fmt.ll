; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2200.c_wm2200_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2200.c_wm2200_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unsupported DAI format %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@WM2200_AIF1TX_LRCLK_MSTR = common dso_local global i32 0, align 4
@WM2200_AIF1_BCLK_MSTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported master mode %d\0A\00", align 1
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@WM2200_AIF1_BCLK_INV = common dso_local global i32 0, align 4
@WM2200_AIF1TX_LRCLK_INV = common dso_local global i32 0, align 4
@WM2200_AUDIO_IF_1_1 = common dso_local global i32 0, align 4
@WM2200_AUDIO_IF_1_2 = common dso_local global i32 0, align 4
@WM2200_AUDIO_IF_1_3 = common dso_local global i32 0, align 4
@WM2200_AUDIO_IF_1_5 = common dso_local global i32 0, align 4
@WM2200_AIF1_FMT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm2200_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm2200_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
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
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %18 [
    i32 133, label %16
    i32 132, label %17
  ]

16:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %28

17:                                               ; preds = %2
  store i32 2, i32* %9, align 4
  br label %28

18:                                               ; preds = %2
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %20 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %108

28:                                               ; preds = %17, %16
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %48 [
    i32 134, label %32
    i32 135, label %33
    i32 136, label %37
    i32 137, label %41
  ]

32:                                               ; preds = %28
  br label %58

33:                                               ; preds = %28
  %34 = load i32, i32* @WM2200_AIF1TX_LRCLK_MSTR, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %58

37:                                               ; preds = %28
  %38 = load i32, i32* @WM2200_AIF1_BCLK_MSTR, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %58

41:                                               ; preds = %28
  %42 = load i32, i32* @WM2200_AIF1TX_LRCLK_MSTR, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @WM2200_AIF1_BCLK_MSTR, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %58

48:                                               ; preds = %28
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %50 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %54 = and i32 %52, %53
  %55 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %108

58:                                               ; preds = %41, %37, %33, %32
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %61 = and i32 %59, %60
  switch i32 %61, label %78 [
    i32 128, label %62
    i32 131, label %63
    i32 130, label %70
    i32 129, label %74
  ]

62:                                               ; preds = %58
  br label %81

63:                                               ; preds = %58
  %64 = load i32, i32* @WM2200_AIF1_BCLK_INV, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* @WM2200_AIF1TX_LRCLK_INV, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %81

70:                                               ; preds = %58
  %71 = load i32, i32* @WM2200_AIF1_BCLK_INV, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %81

74:                                               ; preds = %58
  %75 = load i32, i32* @WM2200_AIF1TX_LRCLK_INV, align 4
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  br label %81

78:                                               ; preds = %58
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %108

81:                                               ; preds = %74, %70, %63, %62
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %83 = load i32, i32* @WM2200_AUDIO_IF_1_1, align 4
  %84 = load i32, i32* @WM2200_AIF1_BCLK_MSTR, align 4
  %85 = load i32, i32* @WM2200_AIF1_BCLK_INV, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %82, i32 %83, i32 %86, i32 %87)
  %89 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %90 = load i32, i32* @WM2200_AUDIO_IF_1_2, align 4
  %91 = load i32, i32* @WM2200_AIF1TX_LRCLK_MSTR, align 4
  %92 = load i32, i32* @WM2200_AIF1TX_LRCLK_INV, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %89, i32 %90, i32 %93, i32 %94)
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %97 = load i32, i32* @WM2200_AUDIO_IF_1_3, align 4
  %98 = load i32, i32* @WM2200_AIF1TX_LRCLK_MSTR, align 4
  %99 = load i32, i32* @WM2200_AIF1TX_LRCLK_INV, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %96, i32 %97, i32 %100, i32 %101)
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %104 = load i32, i32* @WM2200_AUDIO_IF_1_5, align 4
  %105 = load i32, i32* @WM2200_AIF1_FMT_MASK, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %103, i32 %104, i32 %105, i32 %106)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %81, %78, %48, %18
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
