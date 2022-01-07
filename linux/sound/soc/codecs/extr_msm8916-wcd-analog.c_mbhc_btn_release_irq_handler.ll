; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_mbhc_btn_release_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_mbhc_btn_release_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8916_wcd_analog_priv = type { i32, i32, %struct.snd_soc_component*, i64 }
%struct.snd_soc_component = type { i32 }

@CDC_A_MBHC_RESULT_1 = common dso_local global i32 0, align 4
@CDC_A_MBHC_RESULT_1_BTN_RESULT_MASK = common dso_local global i32 0, align 4
@btn_mask = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mbhc_btn_release_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbhc_btn_release_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pm8916_wcd_analog_priv*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.pm8916_wcd_analog_priv*
  store %struct.pm8916_wcd_analog_priv* %9, %struct.pm8916_wcd_analog_priv** %5, align 8
  %10 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %5, align 8
  %11 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %5, align 8
  %16 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %15, i32 0, i32 2
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %6, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %19 = load i32, i32* @CDC_A_MBHC_RESULT_1, align 4
  %20 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @CDC_A_MBHC_RESULT_1_BTN_RESULT_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %5, align 8
  %30 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %23, %14
  br label %38

32:                                               ; preds = %2
  %33 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %5, align 8
  %34 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @btn_mask, align 4
  %37 = call i32 @snd_soc_jack_report(i32 %35, i32 0, i32 %36)
  br label %38

38:                                               ; preds = %32, %31
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %39
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
