; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM8996_AIF1_CONTROL = common dso_local global i32 0, align 4
@WM8996_AIF1_BCLK = common dso_local global i32 0, align 4
@WM8996_AIF1_TX_LRCLK_2 = common dso_local global i32 0, align 4
@WM8996_AIF1_RX_LRCLK_2 = common dso_local global i32 0, align 4
@WM8996_AIF2_CONTROL = common dso_local global i32 0, align 4
@WM8996_AIF2_BCLK = common dso_local global i32 0, align 4
@WM8996_AIF2_TX_LRCLK_2 = common dso_local global i32 0, align 4
@WM8996_AIF2_RX_LRCLK_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid dai id %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@WM8996_AIF1_BCLK_INV = common dso_local global i32 0, align 4
@WM8996_AIF1TX_LRCLK_INV = common dso_local global i32 0, align 4
@WM8996_AIF1RX_LRCLK_INV = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@WM8996_AIF1TX_LRCLK_MSTR = common dso_local global i32 0, align 4
@WM8996_AIF1RX_LRCLK_MSTR = common dso_local global i32 0, align 4
@WM8996_AIF1_BCLK_MSTR = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@WM8996_AIF1_FMT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8996_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8996_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 1
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %31 [
    i32 0, label %21
    i32 1, label %26
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* @WM8996_AIF1_CONTROL, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* @WM8996_AIF1_BCLK, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* @WM8996_AIF1_TX_LRCLK_2, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* @WM8996_AIF1_RX_LRCLK_2, align 4
  store i32 %25, i32* %14, align 4
  br label %38

26:                                               ; preds = %2
  %27 = load i32, i32* @WM8996_AIF2_CONTROL, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* @WM8996_AIF2_BCLK, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* @WM8996_AIF2_TX_LRCLK_2, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* @WM8996_AIF2_RX_LRCLK_2, align 4
  store i32 %30, i32* %14, align 4
  br label %38

31:                                               ; preds = %2
  %32 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %33 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %137

38:                                               ; preds = %26, %21
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %41 = and i32 %39, %40
  switch i32 %41, label %64 [
    i32 128, label %42
    i32 131, label %43
    i32 129, label %47
    i32 132, label %54
  ]

42:                                               ; preds = %38
  br label %64

43:                                               ; preds = %38
  %44 = load i32, i32* @WM8996_AIF1_BCLK_INV, align 4
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %64

47:                                               ; preds = %38
  %48 = load i32, i32* @WM8996_AIF1TX_LRCLK_INV, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @WM8996_AIF1RX_LRCLK_INV, align 4
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  br label %64

54:                                               ; preds = %38
  %55 = load i32, i32* @WM8996_AIF1_BCLK_INV, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @WM8996_AIF1TX_LRCLK_INV, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* @WM8996_AIF1RX_LRCLK_INV, align 4
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %38, %54, %47, %43, %42
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %67 = and i32 %65, %66
  switch i32 %67, label %90 [
    i32 136, label %68
    i32 137, label %69
    i32 138, label %76
    i32 139, label %80
  ]

68:                                               ; preds = %64
  br label %93

69:                                               ; preds = %64
  %70 = load i32, i32* @WM8996_AIF1TX_LRCLK_MSTR, align 4
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* @WM8996_AIF1RX_LRCLK_MSTR, align 4
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %93

76:                                               ; preds = %64
  %77 = load i32, i32* @WM8996_AIF1_BCLK_MSTR, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %93

80:                                               ; preds = %64
  %81 = load i32, i32* @WM8996_AIF1_BCLK_MSTR, align 4
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* @WM8996_AIF1TX_LRCLK_MSTR, align 4
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* @WM8996_AIF1RX_LRCLK_MSTR, align 4
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  br label %93

90:                                               ; preds = %64
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %137

93:                                               ; preds = %80, %76, %69, %68
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %96 = and i32 %94, %95
  switch i32 %96, label %107 [
    i32 135, label %97
    i32 134, label %98
    i32 133, label %101
    i32 130, label %104
  ]

97:                                               ; preds = %93
  br label %110

98:                                               ; preds = %93
  %99 = load i32, i32* %7, align 4
  %100 = or i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %110

101:                                              ; preds = %93
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, 2
  store i32 %103, i32* %7, align 4
  br label %110

104:                                              ; preds = %93
  %105 = load i32, i32* %7, align 4
  %106 = or i32 %105, 3
  store i32 %106, i32* %7, align 4
  br label %110

107:                                              ; preds = %93
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %137

110:                                              ; preds = %104, %101, %98, %97
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @WM8996_AIF1_FMT_MASK, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %111, i32 %112, i32 %113, i32 %114)
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @WM8996_AIF1_BCLK_INV, align 4
  %119 = load i32, i32* @WM8996_AIF1_BCLK_MSTR, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %116, i32 %117, i32 %120, i32 %121)
  %123 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @WM8996_AIF1TX_LRCLK_INV, align 4
  %126 = load i32, i32* @WM8996_AIF1TX_LRCLK_MSTR, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %123, i32 %124, i32 %127, i32 %128)
  %130 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* @WM8996_AIF1RX_LRCLK_INV, align 4
  %133 = load i32, i32* @WM8996_AIF1RX_LRCLK_MSTR, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %130, i32 %131, i32 %134, i32 %135)
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %110, %107, %90, %31
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
