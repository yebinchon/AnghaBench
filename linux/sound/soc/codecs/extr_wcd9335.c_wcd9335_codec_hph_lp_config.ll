; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_hph_lp_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_hph_lp_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@WCD9335_HPH_PA_CTL1 = common dso_local global i32 0, align 4
@WCD9335_HPH_PA_GM3_IB_SCALE_MASK = common dso_local global i32 0, align 4
@WCD9335_HPH_CNP_WG_CTL = common dso_local global i32 0, align 4
@WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_MASK = common dso_local global i32 0, align 4
@WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_RATIO_1000 = common dso_local global i32 0, align 4
@WCD9335_HPH_PA_CTL2 = common dso_local global i32 0, align 4
@WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_MASK = common dso_local global i32 0, align 4
@WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_ENABLE = common dso_local global i32 0, align 4
@WCD9335_HPH_PA_CTL2_FORCE_PSRREH_MASK = common dso_local global i32 0, align 4
@WCD9335_HPH_PA_CTL2_FORCE_PSRREH_ENABLE = common dso_local global i32 0, align 4
@WCD9335_HPH_PA_CTL2_HPH_PSRR_ENH_MASK = common dso_local global i32 0, align 4
@WCD9335_HPH_PA_CTL2_HPH_PSRR_ENABLE = common dso_local global i32 0, align 4
@WCD9335_HPH_RDAC_LDO_CTL = common dso_local global i32 0, align 4
@WCD9335_HPH_RDAC_N1P65_LD_OUTCTL_MASK = common dso_local global i32 0, align 4
@WCD9335_HPH_RDAC_N1P65_LD_OUTCTL_V_N1P60 = common dso_local global i32 0, align 4
@WCD9335_HPH_RDAC_1P65_LD_OUTCTL_MASK = common dso_local global i32 0, align 4
@WCD9335_HPH_RDAC_1P65_LD_OUTCTL_V_N1P60 = common dso_local global i32 0, align 4
@WCD9335_RX_BIAS_HPH_RDAC_LDO = common dso_local global i32 0, align 4
@WCD9335_HPH_PA_CTL2_HPH_PSRR_DISABLE = common dso_local global i32 0, align 4
@WCD9335_HPH_PA_CTL2_FORCE_PSRREH_DISABLE = common dso_local global i32 0, align 4
@WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_DISABLE = common dso_local global i32 0, align 4
@WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_RATIO_500 = common dso_local global i32 0, align 4
@WCD9335_HPH_R_EN = common dso_local global i32 0, align 4
@WCD9335_HPH_CONST_SEL_L_MASK = common dso_local global i32 0, align 4
@WCD9335_HPH_CONST_SEL_L_HQ_PATH = common dso_local global i32 0, align 4
@WCD9335_HPH_L_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @wcd9335_codec_hph_lp_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcd9335_codec_hph_lp_config(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %51

8:                                                ; preds = %2
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = load i32, i32* @WCD9335_HPH_PA_CTL1, align 4
  %11 = load i32, i32* @WCD9335_HPH_PA_GM3_IB_SCALE_MASK, align 4
  %12 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %9, i32 %10, i32 %11, i32 12)
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %14 = call i32 @wcd9335_codec_hph_mode_gain_opt(%struct.snd_soc_component* %13, i32 16)
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %16 = load i32, i32* @WCD9335_HPH_CNP_WG_CTL, align 4
  %17 = load i32, i32* @WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_MASK, align 4
  %18 = load i32, i32* @WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_RATIO_1000, align 4
  %19 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %21 = load i32, i32* @WCD9335_HPH_PA_CTL2, align 4
  %22 = load i32, i32* @WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_MASK, align 4
  %23 = load i32, i32* @WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_ENABLE, align 4
  %24 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = load i32, i32* @WCD9335_HPH_PA_CTL2, align 4
  %27 = load i32, i32* @WCD9335_HPH_PA_CTL2_FORCE_PSRREH_MASK, align 4
  %28 = load i32, i32* @WCD9335_HPH_PA_CTL2_FORCE_PSRREH_ENABLE, align 4
  %29 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %31 = load i32, i32* @WCD9335_HPH_PA_CTL2, align 4
  %32 = load i32, i32* @WCD9335_HPH_PA_CTL2_HPH_PSRR_ENH_MASK, align 4
  %33 = load i32, i32* @WCD9335_HPH_PA_CTL2_HPH_PSRR_ENABLE, align 4
  %34 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %36 = load i32, i32* @WCD9335_HPH_RDAC_LDO_CTL, align 4
  %37 = load i32, i32* @WCD9335_HPH_RDAC_N1P65_LD_OUTCTL_MASK, align 4
  %38 = load i32, i32* @WCD9335_HPH_RDAC_N1P65_LD_OUTCTL_V_N1P60, align 4
  %39 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %41 = load i32, i32* @WCD9335_HPH_RDAC_LDO_CTL, align 4
  %42 = load i32, i32* @WCD9335_HPH_RDAC_1P65_LD_OUTCTL_MASK, align 4
  %43 = load i32, i32* @WCD9335_HPH_RDAC_1P65_LD_OUTCTL_V_N1P60, align 4
  %44 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %46 = load i32, i32* @WCD9335_RX_BIAS_HPH_RDAC_LDO, align 4
  %47 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %45, i32 %46, i32 15, i32 1)
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %49 = load i32, i32* @WCD9335_RX_BIAS_HPH_RDAC_LDO, align 4
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %48, i32 %49, i32 240, i32 16)
  br label %51

51:                                               ; preds = %8, %2
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @SND_SOC_DAPM_EVENT_OFF(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %92

55:                                               ; preds = %51
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %57 = load i32, i32* @WCD9335_RX_BIAS_HPH_RDAC_LDO, align 4
  %58 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %56, i32 %57, i32 136)
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %60 = load i32, i32* @WCD9335_HPH_RDAC_LDO_CTL, align 4
  %61 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %59, i32 %60, i32 51)
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %63 = load i32, i32* @WCD9335_HPH_PA_CTL2, align 4
  %64 = load i32, i32* @WCD9335_HPH_PA_CTL2_HPH_PSRR_ENH_MASK, align 4
  %65 = load i32, i32* @WCD9335_HPH_PA_CTL2_HPH_PSRR_DISABLE, align 4
  %66 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %68 = load i32, i32* @WCD9335_HPH_PA_CTL2, align 4
  %69 = load i32, i32* @WCD9335_HPH_PA_CTL2_FORCE_PSRREH_MASK, align 4
  %70 = load i32, i32* @WCD9335_HPH_PA_CTL2_FORCE_PSRREH_DISABLE, align 4
  %71 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %67, i32 %68, i32 %69, i32 %70)
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %73 = load i32, i32* @WCD9335_HPH_PA_CTL2, align 4
  %74 = load i32, i32* @WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_MASK, align 4
  %75 = load i32, i32* @WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_DISABLE, align 4
  %76 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %78 = load i32, i32* @WCD9335_HPH_CNP_WG_CTL, align 4
  %79 = load i32, i32* @WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_MASK, align 4
  %80 = load i32, i32* @WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_RATIO_500, align 4
  %81 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %77, i32 %78, i32 %79, i32 %80)
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %83 = load i32, i32* @WCD9335_HPH_R_EN, align 4
  %84 = load i32, i32* @WCD9335_HPH_CONST_SEL_L_MASK, align 4
  %85 = load i32, i32* @WCD9335_HPH_CONST_SEL_L_HQ_PATH, align 4
  %86 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %82, i32 %83, i32 %84, i32 %85)
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %88 = load i32, i32* @WCD9335_HPH_L_EN, align 4
  %89 = load i32, i32* @WCD9335_HPH_CONST_SEL_L_MASK, align 4
  %90 = load i32, i32* @WCD9335_HPH_CONST_SEL_L_HQ_PATH, align 4
  %91 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %87, i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %55, %51
  ret void
}

declare dso_local i64 @SND_SOC_DAPM_EVENT_ON(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @wcd9335_codec_hph_mode_gain_opt(%struct.snd_soc_component*, i32) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_OFF(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
