; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_mbhc_btn_press_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_mbhc_btn_press_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8916_wcd_analog_priv = type { i32, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@CDC_A_MBHC_RESULT_1 = common dso_local global i32 0, align 4
@CDC_A_MBHC_RESULT_1_BTN_RESULT_MASK = common dso_local global i32 0, align 4
@SND_JACK_BTN_4 = common dso_local global i32 0, align 4
@btn_mask = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unexpected button press result (%x)\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mbhc_btn_press_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbhc_btn_press_irq_handler(i32 %0, i8* %1) #0 {
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
  %11 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %10, i32 0, i32 2
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = load i32, i32* @CDC_A_MBHC_RESULT_1, align 4
  %15 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %13, i32 %14)
  %16 = load i32, i32* @CDC_A_MBHC_RESULT_1_BTN_RESULT_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %60 [
    i32 15, label %19
    i32 7, label %26
    i32 3, label %33
    i32 1, label %40
    i32 0, label %47
  ]

19:                                               ; preds = %2
  %20 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %5, align 8
  %21 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SND_JACK_BTN_4, align 4
  %24 = load i32, i32* @btn_mask, align 4
  %25 = call i32 @snd_soc_jack_report(i32 %22, i32 %23, i32 %24)
  br label %66

26:                                               ; preds = %2
  %27 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %5, align 8
  %28 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SND_JACK_BTN_3, align 4
  %31 = load i32, i32* @btn_mask, align 4
  %32 = call i32 @snd_soc_jack_report(i32 %29, i32 %30, i32 %31)
  br label %66

33:                                               ; preds = %2
  %34 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %5, align 8
  %35 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SND_JACK_BTN_2, align 4
  %38 = load i32, i32* @btn_mask, align 4
  %39 = call i32 @snd_soc_jack_report(i32 %36, i32 %37, i32 %38)
  br label %66

40:                                               ; preds = %2
  %41 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %5, align 8
  %42 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SND_JACK_BTN_1, align 4
  %45 = load i32, i32* @btn_mask, align 4
  %46 = call i32 @snd_soc_jack_report(i32 %43, i32 %44, i32 %45)
  br label %66

47:                                               ; preds = %2
  %48 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %5, align 8
  %49 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %47
  %53 = load %struct.pm8916_wcd_analog_priv*, %struct.pm8916_wcd_analog_priv** %5, align 8
  %54 = getelementptr inbounds %struct.pm8916_wcd_analog_priv, %struct.pm8916_wcd_analog_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SND_JACK_BTN_0, align 4
  %57 = load i32, i32* @btn_mask, align 4
  %58 = call i32 @snd_soc_jack_report(i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %47
  br label %66

60:                                               ; preds = %2
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %62 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %60, %59, %40, %33, %26, %19
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %67
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
