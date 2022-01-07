; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_hph_hifi_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_hph_hifi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @wcd9335_codec_hph_hifi_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcd9335_codec_hph_hifi_config(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = load i32, i32* @WCD9335_HPH_CNP_WG_CTL, align 4
  %11 = load i32, i32* @WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_MASK, align 4
  %12 = load i32, i32* @WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_RATIO_1000, align 4
  %13 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %9, i32 %10, i32 %11, i32 %12)
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = load i32, i32* @WCD9335_HPH_PA_CTL2, align 4
  %16 = load i32, i32* @WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_MASK, align 4
  %17 = load i32, i32* @WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_ENABLE, align 4
  %18 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %20 = load i32, i32* @WCD9335_HPH_PA_CTL1, align 4
  %21 = load i32, i32* @WCD9335_HPH_PA_GM3_IB_SCALE_MASK, align 4
  %22 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %19, i32 %20, i32 %21, i32 12)
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %24 = call i32 @wcd9335_codec_hph_mode_gain_opt(%struct.snd_soc_component* %23, i32 17)
  br label %25

25:                                               ; preds = %8, %2
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @SND_SOC_DAPM_EVENT_OFF(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %31 = load i32, i32* @WCD9335_HPH_PA_CTL2, align 4
  %32 = load i32, i32* @WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_MASK, align 4
  %33 = load i32, i32* @WCD9335_HPH_PA_CTL2_FORCE_IQCTRL_DISABLE, align 4
  %34 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %36 = load i32, i32* @WCD9335_HPH_CNP_WG_CTL, align 4
  %37 = load i32, i32* @WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_MASK, align 4
  %38 = load i32, i32* @WCD9335_HPH_CNP_WG_CTL_CURR_LDIV_RATIO_500, align 4
  %39 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %35, i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %29, %25
  ret void
}

declare dso_local i64 @SND_SOC_DAPM_EVENT_ON(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @wcd9335_codec_hph_mode_gain_opt(%struct.snd_soc_component*, i32) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_OFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
