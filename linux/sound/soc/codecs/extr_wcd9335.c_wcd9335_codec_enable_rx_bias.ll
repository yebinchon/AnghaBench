; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_enable_rx_bias.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_enable_rx_bias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wcd9335_codec = type { i32 }

@WCD9335_ANA_RX_SUPPLIES = common dso_local global i32 0, align 4
@WCD9335_ANA_RX_BIAS_ENABLE_MASK = common dso_local global i32 0, align 4
@WCD9335_ANA_RX_BIAS_ENABLE = common dso_local global i32 0, align 4
@WCD9335_ANA_RX_BIAS_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wcd9335_codec_enable_rx_bias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_codec_enable_rx_bias(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.wcd9335_codec*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %7, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %14 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.wcd9335_codec* @dev_get_drvdata(i32 %15)
  store %struct.wcd9335_codec* %16, %struct.wcd9335_codec** %8, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %52 [
    i32 128, label %18
    i32 129, label %36
  ]

18:                                               ; preds = %3
  %19 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %20 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %24 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %29 = call i32 @wcd9335_codec_init_flyback(%struct.snd_soc_component* %28)
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %31 = load i32, i32* @WCD9335_ANA_RX_SUPPLIES, align 4
  %32 = load i32, i32* @WCD9335_ANA_RX_BIAS_ENABLE_MASK, align 4
  %33 = load i32, i32* @WCD9335_ANA_RX_BIAS_ENABLE, align 4
  %34 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %30, i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %27, %18
  br label %52

36:                                               ; preds = %3
  %37 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %38 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %42 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %36
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %47 = load i32, i32* @WCD9335_ANA_RX_SUPPLIES, align 4
  %48 = load i32, i32* @WCD9335_ANA_RX_BIAS_ENABLE_MASK, align 4
  %49 = load i32, i32* @WCD9335_ANA_RX_BIAS_DISABLE, align 4
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %46, i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %36
  br label %52

52:                                               ; preds = %3, %51, %35
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.wcd9335_codec* @dev_get_drvdata(i32) #1

declare dso_local i32 @wcd9335_codec_init_flyback(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
