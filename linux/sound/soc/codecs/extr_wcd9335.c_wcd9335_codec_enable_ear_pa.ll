; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_enable_ear_pa.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_enable_ear_pa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@WCD9335_CDC_RX0_RX_PATH_CTL = common dso_local global i32 0, align 4
@WCD9335_CDC_RX_PGA_MUTE_EN_MASK = common dso_local global i32 0, align 4
@WCD9335_CDC_RX_PGA_MUTE_DISABLE = common dso_local global i32 0, align 4
@WCD9335_CDC_RX0_RX_PATH_MIX_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wcd9335_codec_enable_ear_pa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_codec_enable_ear_pa(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %10)
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %7, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %35 [
    i32 128, label %13
    i32 129, label %33
  ]

13:                                               ; preds = %3
  %14 = call i32 @usleep_range(i32 5000, i32 5500)
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %16 = load i32, i32* @WCD9335_CDC_RX0_RX_PATH_CTL, align 4
  %17 = load i32, i32* @WCD9335_CDC_RX_PGA_MUTE_EN_MASK, align 4
  %18 = load i32, i32* @WCD9335_CDC_RX_PGA_MUTE_DISABLE, align 4
  %19 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %21 = load i32, i32* @WCD9335_CDC_RX0_RX_PATH_MIX_CTL, align 4
  %22 = call i32 (%struct.snd_soc_component*, i32, ...) bitcast (i32 (...)* @snd_soc_component_read32 to i32 (%struct.snd_soc_component*, i32, ...)*)(%struct.snd_soc_component* %20, i32 %21)
  %23 = load i32, i32* @WCD9335_CDC_RX_PGA_MUTE_EN_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %13
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %28 = load i32, i32* @WCD9335_CDC_RX0_RX_PATH_MIX_CTL, align 4
  %29 = load i32, i32* @WCD9335_CDC_RX_PGA_MUTE_EN_MASK, align 4
  %30 = load i32, i32* @WCD9335_CDC_RX_PGA_MUTE_DISABLE, align 4
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %27, i32 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %13
  br label %35

33:                                               ; preds = %3
  %34 = call i32 @usleep_range(i32 5000, i32 5500)
  br label %35

35:                                               ; preds = %3, %33, %32
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
