; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514.c_rt5514_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514.c_rt5514_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5514_priv = type { i32 }

@RT5514_TDM_MODE = common dso_local global i32 0, align 4
@RT5514_TDM_DOCKING_MODE = common dso_local global i32 0, align 4
@RT5514_TDM_DOCKING_VALID_CH2 = common dso_local global i32 0, align 4
@RT5514_TDM_DOCKING_START_SLOT0 = common dso_local global i32 0, align 4
@RT5514_TDM_DOCKING_START_SLOT4 = common dso_local global i32 0, align 4
@RT5514_TDM_DOCKING_VALID_CH4 = common dso_local global i32 0, align 4
@RT5514_TDMSLOT_SEL_RX_4CH = common dso_local global i32 0, align 4
@RT5514_TDMSLOT_SEL_TX_4CH = common dso_local global i32 0, align 4
@RT5514_TDMSLOT_SEL_RX_6CH = common dso_local global i32 0, align 4
@RT5514_TDMSLOT_SEL_TX_6CH = common dso_local global i32 0, align 4
@RT5514_TDMSLOT_SEL_RX_8CH = common dso_local global i32 0, align 4
@RT5514_TDMSLOT_SEL_TX_8CH = common dso_local global i32 0, align 4
@RT5514_CH_LEN_RX_20 = common dso_local global i32 0, align 4
@RT5514_CH_LEN_TX_20 = common dso_local global i32 0, align 4
@RT5514_CH_LEN_RX_24 = common dso_local global i32 0, align 4
@RT5514_CH_LEN_TX_24 = common dso_local global i32 0, align 4
@RT5514_TDM_MODE2 = common dso_local global i32 0, align 4
@RT5514_CH_LEN_RX_32 = common dso_local global i32 0, align 4
@RT5514_CH_LEN_TX_32 = common dso_local global i32 0, align 4
@RT5514_I2S_CTRL1 = common dso_local global i32 0, align 4
@RT5514_TDMSLOT_SEL_RX_MASK = common dso_local global i32 0, align 4
@RT5514_TDMSLOT_SEL_TX_MASK = common dso_local global i32 0, align 4
@RT5514_CH_LEN_RX_MASK = common dso_local global i32 0, align 4
@RT5514_CH_LEN_TX_MASK = common dso_local global i32 0, align 4
@RT5514_I2S_CTRL2 = common dso_local global i32 0, align 4
@RT5514_TDM_DOCKING_VALID_CH_MASK = common dso_local global i32 0, align 4
@RT5514_TDM_DOCKING_START_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @rt5514_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5514_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_soc_component*, align 8
  %12 = alloca %struct.rt5514_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %11, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %19 = call %struct.rt5514_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.rt5514_priv* %19, %struct.rt5514_priv** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22, %5
  %26 = load i32, i32* @RT5514_TDM_MODE, align 4
  %27 = load i32, i32* %13, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %63 [
    i32 3, label %31
    i32 48, label %39
    i32 15, label %47
    i32 240, label %55
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @RT5514_TDM_DOCKING_MODE, align 4
  %33 = load i32, i32* @RT5514_TDM_DOCKING_VALID_CH2, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @RT5514_TDM_DOCKING_START_SLOT0, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %14, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %14, align 4
  br label %64

39:                                               ; preds = %29
  %40 = load i32, i32* @RT5514_TDM_DOCKING_MODE, align 4
  %41 = load i32, i32* @RT5514_TDM_DOCKING_VALID_CH2, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @RT5514_TDM_DOCKING_START_SLOT4, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %14, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %14, align 4
  br label %64

47:                                               ; preds = %29
  %48 = load i32, i32* @RT5514_TDM_DOCKING_MODE, align 4
  %49 = load i32, i32* @RT5514_TDM_DOCKING_VALID_CH4, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @RT5514_TDM_DOCKING_START_SLOT0, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %14, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %14, align 4
  br label %64

55:                                               ; preds = %29
  %56 = load i32, i32* @RT5514_TDM_DOCKING_MODE, align 4
  %57 = load i32, i32* @RT5514_TDM_DOCKING_VALID_CH4, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @RT5514_TDM_DOCKING_START_SLOT4, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %14, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %14, align 4
  br label %64

63:                                               ; preds = %29
  br label %64

64:                                               ; preds = %63, %55, %47, %39, %31
  %65 = load i32, i32* %9, align 4
  switch i32 %65, label %85 [
    i32 4, label %66
    i32 6, label %72
    i32 8, label %78
    i32 2, label %84
  ]

66:                                               ; preds = %64
  %67 = load i32, i32* @RT5514_TDMSLOT_SEL_RX_4CH, align 4
  %68 = load i32, i32* @RT5514_TDMSLOT_SEL_TX_4CH, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %13, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %13, align 4
  br label %86

72:                                               ; preds = %64
  %73 = load i32, i32* @RT5514_TDMSLOT_SEL_RX_6CH, align 4
  %74 = load i32, i32* @RT5514_TDMSLOT_SEL_TX_6CH, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* %13, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %13, align 4
  br label %86

78:                                               ; preds = %64
  %79 = load i32, i32* @RT5514_TDMSLOT_SEL_RX_8CH, align 4
  %80 = load i32, i32* @RT5514_TDMSLOT_SEL_TX_8CH, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %13, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %13, align 4
  br label %86

84:                                               ; preds = %64
  br label %85

85:                                               ; preds = %64, %84
  br label %86

86:                                               ; preds = %85, %78, %72, %66
  %87 = load i32, i32* %10, align 4
  switch i32 %87, label %111 [
    i32 20, label %88
    i32 24, label %94
    i32 25, label %100
    i32 32, label %104
    i32 16, label %110
  ]

88:                                               ; preds = %86
  %89 = load i32, i32* @RT5514_CH_LEN_RX_20, align 4
  %90 = load i32, i32* @RT5514_CH_LEN_TX_20, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %13, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %13, align 4
  br label %112

94:                                               ; preds = %86
  %95 = load i32, i32* @RT5514_CH_LEN_RX_24, align 4
  %96 = load i32, i32* @RT5514_CH_LEN_TX_24, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %13, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %13, align 4
  br label %112

100:                                              ; preds = %86
  %101 = load i32, i32* @RT5514_TDM_MODE2, align 4
  %102 = load i32, i32* %13, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %13, align 4
  br label %112

104:                                              ; preds = %86
  %105 = load i32, i32* @RT5514_CH_LEN_RX_32, align 4
  %106 = load i32, i32* @RT5514_CH_LEN_TX_32, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* %13, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %13, align 4
  br label %112

110:                                              ; preds = %86
  br label %111

111:                                              ; preds = %86, %110
  br label %112

112:                                              ; preds = %111, %104, %100, %94, %88
  %113 = load %struct.rt5514_priv*, %struct.rt5514_priv** %12, align 8
  %114 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @RT5514_I2S_CTRL1, align 4
  %117 = load i32, i32* @RT5514_TDM_MODE, align 4
  %118 = load i32, i32* @RT5514_TDMSLOT_SEL_RX_MASK, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @RT5514_TDMSLOT_SEL_TX_MASK, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @RT5514_CH_LEN_RX_MASK, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @RT5514_CH_LEN_TX_MASK, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @RT5514_TDM_MODE2, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @regmap_update_bits(i32 %115, i32 %116, i32 %127, i32 %128)
  %130 = load %struct.rt5514_priv*, %struct.rt5514_priv** %12, align 8
  %131 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @RT5514_I2S_CTRL2, align 4
  %134 = load i32, i32* @RT5514_TDM_DOCKING_MODE, align 4
  %135 = load i32, i32* @RT5514_TDM_DOCKING_VALID_CH_MASK, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @RT5514_TDM_DOCKING_START_MASK, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @regmap_update_bits(i32 %132, i32 %133, i32 %138, i32 %139)
  ret i32 0
}

declare dso_local %struct.rt5514_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
