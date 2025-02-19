; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_enable_hphr_pa.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_enable_hphr_pa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wcd9335_codec = type { i32 }

@WCD9335_CDC_RX2_RX_PATH_CTL = common dso_local global i32 0, align 4
@WCD9335_CDC_RX_PGA_MUTE_EN_MASK = common dso_local global i32 0, align 4
@WCD9335_CDC_RX_PGA_MUTE_DISABLE = common dso_local global i32 0, align 4
@WCD9335_CDC_RX2_RX_PATH_MIX_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wcd9335_codec_enable_hphr_pa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_codec_enable_hphr_pa(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.wcd9335_codec*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %7, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.wcd9335_codec* @dev_get_drvdata(i32 %16)
  store %struct.wcd9335_codec* %17, %struct.wcd9335_codec** %8, align 8
  %18 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %19 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %54 [
    i32 128, label %22
    i32 130, label %23
    i32 129, label %47
    i32 131, label %52
  ]

22:                                               ; preds = %3
  br label %54

23:                                               ; preds = %3
  %24 = call i32 @usleep_range(i32 7000, i32 7100)
  %25 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @wcd9335_codec_hph_post_pa_config(%struct.wcd9335_codec* %25, i32 %26, i32 %27)
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %30 = load i32, i32* @WCD9335_CDC_RX2_RX_PATH_CTL, align 4
  %31 = load i32, i32* @WCD9335_CDC_RX_PGA_MUTE_EN_MASK, align 4
  %32 = load i32, i32* @WCD9335_CDC_RX_PGA_MUTE_DISABLE, align 4
  %33 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %35 = load i32, i32* @WCD9335_CDC_RX2_RX_PATH_MIX_CTL, align 4
  %36 = call i32 (%struct.snd_soc_component*, i32, ...) bitcast (i32 (...)* @snd_soc_component_read32 to i32 (%struct.snd_soc_component*, i32, ...)*)(%struct.snd_soc_component* %34, i32 %35)
  %37 = load i32, i32* @WCD9335_CDC_RX_PGA_MUTE_EN_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %23
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %42 = load i32, i32* @WCD9335_CDC_RX2_RX_PATH_MIX_CTL, align 4
  %43 = load i32, i32* @WCD9335_CDC_RX_PGA_MUTE_EN_MASK, align 4
  %44 = load i32, i32* @WCD9335_CDC_RX_PGA_MUTE_DISABLE, align 4
  %45 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %23
  br label %54

47:                                               ; preds = %3
  %48 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @wcd9335_codec_hph_post_pa_config(%struct.wcd9335_codec* %48, i32 %49, i32 %50)
  br label %54

52:                                               ; preds = %3
  %53 = call i32 @usleep_range(i32 5000, i32 5500)
  br label %54

54:                                               ; preds = %3, %52, %47, %46, %22
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.wcd9335_codec* @dev_get_drvdata(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @wcd9335_codec_hph_post_pa_config(%struct.wcd9335_codec*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
