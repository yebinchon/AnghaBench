; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_hph_lohifi_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_hph_lohifi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@WCD9335_RX_BIAS_HPH_PA = common dso_local global i32 0, align 4
@WCD9335_RX_BIAS_HPH_PA_AMP_5_UA_MASK = common dso_local global i32 0, align 4
@WCD9335_RX_BIAS_HPH_RDACBUFF_CNP2 = common dso_local global i32 0, align 4
@WCD9335_HPH_CNP_WG_CTL = common dso_local global i32 0, align 4
@WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_MASK = common dso_local global i32 0, align 4
@WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_RATIO_1000 = common dso_local global i32 0, align 4
@WCD9335_HPH_PA_CTL2 = common dso_local global i32 0, align 4
@WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_MASK = common dso_local global i32 0, align 4
@WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_ENABLE = common dso_local global i32 0, align 4
@WCD9335_HPH_PA_CTL1 = common dso_local global i32 0, align 4
@WCD9335_HPH_PA_GM3_IB_SCALE_MASK = common dso_local global i32 0, align 4
@WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_DISABLE = common dso_local global i32 0, align 4
@WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_RATIO_500 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @wcd9335_codec_hph_lohifi_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcd9335_codec_hph_lohifi_config(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %2
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = load i32, i32* @WCD9335_RX_BIAS_HPH_PA, align 4
  %11 = load i32, i32* @WCD9335_RX_BIAS_HPH_PA_AMP_5_UA_MASK, align 4
  %12 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %9, i32 %10, i32 %11, i32 6)
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %14 = load i32, i32* @WCD9335_RX_BIAS_HPH_RDACBUFF_CNP2, align 4
  %15 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %13, i32 %14, i32 240, i32 64)
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = load i32, i32* @WCD9335_HPH_CNP_WG_CTL, align 4
  %18 = load i32, i32* @WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_MASK, align 4
  %19 = load i32, i32* @WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_RATIO_1000, align 4
  %20 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %22 = load i32, i32* @WCD9335_HPH_PA_CTL2, align 4
  %23 = load i32, i32* @WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_MASK, align 4
  %24 = load i32, i32* @WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_ENABLE, align 4
  %25 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = load i32, i32* @WCD9335_HPH_PA_CTL1, align 4
  %28 = load i32, i32* @WCD9335_HPH_PA_GM3_IB_SCALE_MASK, align 4
  %29 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 %28, i32 12)
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %31 = call i32 @wcd9335_codec_hph_mode_gain_opt(%struct.snd_soc_component* %30, i32 17)
  br label %32

32:                                               ; preds = %8, %2
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @SND_SOC_DAPM_EVENT_OFF(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %38 = load i32, i32* @WCD9335_HPH_PA_CTL2, align 4
  %39 = load i32, i32* @WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_MASK, align 4
  %40 = load i32, i32* @WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_DISABLE, align 4
  %41 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %43 = load i32, i32* @WCD9335_HPH_CNP_WG_CTL, align 4
  %44 = load i32, i32* @WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_MASK, align 4
  %45 = load i32, i32* @WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_RATIO_500, align 4
  %46 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %48 = load i32, i32* @WCD9335_RX_BIAS_HPH_RDACBUFF_CNP2, align 4
  %49 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %47, i32 %48, i32 138)
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %51 = load i32, i32* @WCD9335_RX_BIAS_HPH_PA, align 4
  %52 = load i32, i32* @WCD9335_RX_BIAS_HPH_PA_AMP_5_UA_MASK, align 4
  %53 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %52, i32 10)
  br label %54

54:                                               ; preds = %36, %32
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
