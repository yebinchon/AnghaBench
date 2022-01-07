; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5682.c_rt5682_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5682.c_rt5682_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@RT5682_TDM_ADDA_CTRL_2 = common dso_local global i32 0, align 4
@RT5682_TDM_EN = common dso_local global i32 0, align 4
@RT5682_TDM_TX_CH_4 = common dso_local global i32 0, align 4
@RT5682_TDM_RX_CH_4 = common dso_local global i32 0, align 4
@RT5682_TDM_TX_CH_6 = common dso_local global i32 0, align 4
@RT5682_TDM_RX_CH_6 = common dso_local global i32 0, align 4
@RT5682_TDM_TX_CH_8 = common dso_local global i32 0, align 4
@RT5682_TDM_RX_CH_8 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RT5682_TDM_CTRL = common dso_local global i32 0, align 4
@RT5682_TDM_TX_CH_MASK = common dso_local global i32 0, align 4
@RT5682_TDM_RX_CH_MASK = common dso_local global i32 0, align 4
@RT5682_I2S1_TX_CHL_8 = common dso_local global i32 0, align 4
@RT5682_I2S1_RX_CHL_8 = common dso_local global i32 0, align 4
@RT5682_TDM_CL_16 = common dso_local global i32 0, align 4
@RT5682_I2S1_TX_CHL_16 = common dso_local global i32 0, align 4
@RT5682_I2S1_RX_CHL_16 = common dso_local global i32 0, align 4
@RT5682_TDM_CL_20 = common dso_local global i32 0, align 4
@RT5682_I2S1_TX_CHL_20 = common dso_local global i32 0, align 4
@RT5682_I2S1_RX_CHL_20 = common dso_local global i32 0, align 4
@RT5682_TDM_CL_24 = common dso_local global i32 0, align 4
@RT5682_I2S1_TX_CHL_24 = common dso_local global i32 0, align 4
@RT5682_I2S1_RX_CHL_24 = common dso_local global i32 0, align 4
@RT5682_TDM_CL_32 = common dso_local global i32 0, align 4
@RT5682_I2S1_TX_CHL_32 = common dso_local global i32 0, align 4
@RT5682_I2S1_RX_CHL_32 = common dso_local global i32 0, align 4
@RT5682_TDM_TCON_CTRL = common dso_local global i32 0, align 4
@RT5682_TDM_CL_MASK = common dso_local global i32 0, align 4
@RT5682_I2S1_SDP = common dso_local global i32 0, align 4
@RT5682_I2S1_TX_CHL_MASK = common dso_local global i32 0, align 4
@RT5682_I2S1_RX_CHL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @rt5682_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5682_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %12, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20, %5
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %25 = load i32, i32* @RT5682_TDM_ADDA_CTRL_2, align 4
  %26 = load i32, i32* @RT5682_TDM_EN, align 4
  %27 = load i32, i32* @RT5682_TDM_EN, align 4
  %28 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %24, i32 %25, i32 %26, i32 %27)
  br label %34

29:                                               ; preds = %20
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %31 = load i32, i32* @RT5682_TDM_ADDA_CTRL_2, align 4
  %32 = load i32, i32* @RT5682_TDM_EN, align 4
  %33 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %30, i32 %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %29, %23
  %35 = load i32, i32* %10, align 4
  switch i32 %35, label %58 [
    i32 4, label %36
    i32 6, label %43
    i32 8, label %50
    i32 2, label %57
  ]

36:                                               ; preds = %34
  %37 = load i32, i32* @RT5682_TDM_TX_CH_4, align 4
  %38 = load i32, i32* %14, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* @RT5682_TDM_RX_CH_4, align 4
  %41 = load i32, i32* %14, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %14, align 4
  br label %61

43:                                               ; preds = %34
  %44 = load i32, i32* @RT5682_TDM_TX_CH_6, align 4
  %45 = load i32, i32* %14, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* @RT5682_TDM_RX_CH_6, align 4
  %48 = load i32, i32* %14, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %14, align 4
  br label %61

50:                                               ; preds = %34
  %51 = load i32, i32* @RT5682_TDM_TX_CH_8, align 4
  %52 = load i32, i32* %14, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* @RT5682_TDM_RX_CH_8, align 4
  %55 = load i32, i32* %14, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %14, align 4
  br label %61

57:                                               ; preds = %34
  br label %61

58:                                               ; preds = %34
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %119

61:                                               ; preds = %57, %50, %43, %36
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %63 = load i32, i32* @RT5682_TDM_CTRL, align 4
  %64 = load i32, i32* @RT5682_TDM_TX_CH_MASK, align 4
  %65 = load i32, i32* @RT5682_TDM_RX_CH_MASK, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %62, i32 %63, i32 %66, i32 %67)
  %69 = load i32, i32* %11, align 4
  switch i32 %69, label %103 [
    i32 8, label %70
    i32 16, label %83
    i32 20, label %88
    i32 24, label %93
    i32 32, label %98
  ]

70:                                               ; preds = %61
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73, %70
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %119

79:                                               ; preds = %73
  %80 = load i32, i32* @RT5682_I2S1_TX_CHL_8, align 4
  %81 = load i32, i32* @RT5682_I2S1_RX_CHL_8, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %13, align 4
  br label %106

83:                                               ; preds = %61
  %84 = load i32, i32* @RT5682_TDM_CL_16, align 4
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* @RT5682_I2S1_TX_CHL_16, align 4
  %86 = load i32, i32* @RT5682_I2S1_RX_CHL_16, align 4
  %87 = or i32 %85, %86
  store i32 %87, i32* %13, align 4
  br label %106

88:                                               ; preds = %61
  %89 = load i32, i32* @RT5682_TDM_CL_20, align 4
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* @RT5682_I2S1_TX_CHL_20, align 4
  %91 = load i32, i32* @RT5682_I2S1_RX_CHL_20, align 4
  %92 = or i32 %90, %91
  store i32 %92, i32* %13, align 4
  br label %106

93:                                               ; preds = %61
  %94 = load i32, i32* @RT5682_TDM_CL_24, align 4
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* @RT5682_I2S1_TX_CHL_24, align 4
  %96 = load i32, i32* @RT5682_I2S1_RX_CHL_24, align 4
  %97 = or i32 %95, %96
  store i32 %97, i32* %13, align 4
  br label %106

98:                                               ; preds = %61
  %99 = load i32, i32* @RT5682_TDM_CL_32, align 4
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* @RT5682_I2S1_TX_CHL_32, align 4
  %101 = load i32, i32* @RT5682_I2S1_RX_CHL_32, align 4
  %102 = or i32 %100, %101
  store i32 %102, i32* %13, align 4
  br label %106

103:                                              ; preds = %61
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %6, align 4
  br label %119

106:                                              ; preds = %98, %93, %88, %83, %79
  %107 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %108 = load i32, i32* @RT5682_TDM_TCON_CTRL, align 4
  %109 = load i32, i32* @RT5682_TDM_CL_MASK, align 4
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %107, i32 %108, i32 %109, i32 %110)
  %112 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %113 = load i32, i32* @RT5682_I2S1_SDP, align 4
  %114 = load i32, i32* @RT5682_I2S1_TX_CHL_MASK, align 4
  %115 = load i32, i32* @RT5682_I2S1_RX_CHL_MASK, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %112, i32 %113, i32 %116, i32 %117)
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %106, %103, %76, %58
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
