; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-digital.c_msm8916_wcd_digital_enable_dec.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-digital.c_msm8916_wcd_digital_enable_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@LPASS_CDC_CLK_TX_RESET_B1_CTL = common dso_local global i64 0, align 8
@LPASS_CDC_TX1_VOL_CTL_CFG = common dso_local global i64 0, align 8
@LPASS_CDC_TX1_MUX_CTL = common dso_local global i64 0, align 8
@TX_VOL_CTL_CFG_MUTE_EN_MASK = common dso_local global i32 0, align 4
@TX_VOL_CTL_CFG_MUTE_EN_ENABLE = common dso_local global i32 0, align 4
@TX_MUX_CTL_CUT_OFF_FREQ_MASK = common dso_local global i32 0, align 4
@TX_MUX_CTL_CUT_OFF_FREQ_SHIFT = common dso_local global i32 0, align 4
@TX_MUX_CTL_CF_NEG_3DB_150HZ = common dso_local global i32 0, align 4
@TX_MUX_CTL_HPF_BP_SEL_MASK = common dso_local global i32 0, align 4
@TX_MUX_CTL_HPF_BP_SEL_NO_BYPASS = common dso_local global i32 0, align 4
@tx_gain_reg = common dso_local global i64* null, align 8
@TX_MUX_CTL_HPF_BP_SEL_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @msm8916_wcd_digital_enable_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm8916_wcd_digital_enable_dec(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %15)
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %7, align 8
  %17 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  %21 = load i64, i64* @LPASS_CDC_CLK_TX_RESET_B1_CTL, align 8
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* @LPASS_CDC_TX1_VOL_CTL_CFG, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sub i32 %23, 1
  %25 = mul i32 32, %24
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %22, %26
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* @LPASS_CDC_TX1_MUX_CTL, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sub i32 %29, 1
  %31 = mul i32 32, %30
  %32 = zext i32 %31 to i64
  %33 = add nsw i64 %28, %32
  store i64 %33, i64* %11, align 8
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %126 [
    i32 128, label %35
    i32 130, label %59
    i32 129, label %87
    i32 131, label %98
  ]

35:                                               ; preds = %3
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i32, i32* @TX_VOL_CTL_CFG_MUTE_EN_MASK, align 4
  %39 = load i32, i32* @TX_VOL_CTL_CFG_MUTE_EN_ENABLE, align 4
  %40 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %36, i64 %37, i32 %38, i32 %39)
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %41, i64 %42)
  %44 = load i32, i32* @TX_MUX_CTL_CUT_OFF_FREQ_MASK, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* @TX_MUX_CTL_CUT_OFF_FREQ_SHIFT, align 4
  %47 = load i32, i32* %12, align 4
  %48 = ashr i32 %47, %46
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @TX_MUX_CTL_CF_NEG_3DB_150HZ, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %35
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i32, i32* @TX_MUX_CTL_CUT_OFF_FREQ_MASK, align 4
  %56 = load i32, i32* @TX_MUX_CTL_CF_NEG_3DB_150HZ, align 4
  %57 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %53, i64 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %35
  br label %126

59:                                               ; preds = %3
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i32, i32* @TX_MUX_CTL_HPF_BP_SEL_MASK, align 4
  %63 = load i32, i32* @TX_MUX_CTL_HPF_BP_SEL_NO_BYPASS, align 4
  %64 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %60, i64 %61, i32 %62, i32 %63)
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %66 = load i64*, i64** @tx_gain_reg, align 8
  %67 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %68 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %66, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %74 = load i64*, i64** @tx_gain_reg, align 8
  %75 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %76 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %74, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %73, i64 %80)
  %82 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %65, i64 %72, i32 %81)
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i32, i32* @TX_VOL_CTL_CFG_MUTE_EN_MASK, align 4
  %86 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %83, i64 %84, i32 %85, i32 0)
  br label %126

87:                                               ; preds = %3
  %88 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i32, i32* @TX_VOL_CTL_CFG_MUTE_EN_MASK, align 4
  %91 = load i32, i32* @TX_VOL_CTL_CFG_MUTE_EN_ENABLE, align 4
  %92 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %88, i64 %89, i32 %90, i32 %91)
  %93 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i32, i32* @TX_MUX_CTL_HPF_BP_SEL_MASK, align 4
  %96 = load i32, i32* @TX_MUX_CTL_HPF_BP_SEL_BYPASS, align 4
  %97 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %93, i64 %94, i32 %95, i32 %96)
  br label %126

98:                                               ; preds = %3
  %99 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %100 = load i64, i64* %9, align 8
  %101 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %102 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 1, %103
  %105 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %106 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 1, %107
  %109 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %99, i64 %100, i32 %104, i32 %108)
  %110 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %113 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 1, %114
  %116 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %110, i64 %111, i32 %115, i32 0)
  %117 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load i32, i32* @TX_MUX_CTL_HPF_BP_SEL_MASK, align 4
  %120 = load i32, i32* @TX_MUX_CTL_HPF_BP_SEL_BYPASS, align 4
  %121 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %117, i64 %118, i32 %119, i32 %120)
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i32, i32* @TX_VOL_CTL_CFG_MUTE_EN_MASK, align 4
  %125 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %122, i64 %123, i32 %124, i32 0)
  br label %126

126:                                              ; preds = %3, %98, %87, %59, %58
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i64, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i64) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
