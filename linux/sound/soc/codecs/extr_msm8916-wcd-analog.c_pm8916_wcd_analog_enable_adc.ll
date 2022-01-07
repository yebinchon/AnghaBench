; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_pm8916_wcd_analog_enable_adc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-analog.c_pm8916_wcd_analog_enable_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i64, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@CDC_A_TX_1_2_TEST_CTL_2 = common dso_local global i32 0, align 4
@CDC_A_MICB_1_CTL = common dso_local global i32 0, align 4
@MICB_1_CTL_CFILT_REF_SEL_MASK = common dso_local global i32 0, align 4
@MICB_1_CTL_CFILT_REF_SEL_HPF_REF = common dso_local global i32 0, align 4
@CDC_D_CDC_CONN_TX1_CTL = common dso_local global i32 0, align 4
@CONN_TX1_SERIAL_TX1_MUX = common dso_local global i32 0, align 4
@CONN_TX1_SERIAL_TX1_ADC_1 = common dso_local global i32 0, align 4
@CDC_D_CDC_CONN_TX2_CTL = common dso_local global i32 0, align 4
@CONN_TX2_SERIAL_TX2_MUX = common dso_local global i32 0, align 4
@CONN_TX2_SERIAL_TX2_ADC_2 = common dso_local global i32 0, align 4
@CONN_TX1_SERIAL_TX1_ZERO = common dso_local global i32 0, align 4
@CONN_TX2_SERIAL_TX2_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @pm8916_wcd_analog_enable_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8916_wcd_analog_enable_adc(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %7, align 8
  %14 = load i32, i32* @CDC_A_TX_1_2_TEST_CTL_2, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 133
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 5, i32* %9, align 4
  br label %21

20:                                               ; preds = %3
  store i32 4, i32* %9, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %88 [
    i32 128, label %23
    i32 129, label %59
    i32 130, label %66
  ]

23:                                               ; preds = %21
  %24 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %25 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 132
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %30 = load i32, i32* @CDC_A_MICB_1_CTL, align 4
  %31 = load i32, i32* @MICB_1_CTL_CFILT_REF_SEL_MASK, align 4
  %32 = load i32, i32* @MICB_1_CTL_CFILT_REF_SEL_HPF_REF, align 4
  %33 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %29, i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %23
  %35 = call i32 @usleep_range(i32 10000, i32 10010)
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = shl i32 1, %38
  %40 = load i32, i32* %9, align 4
  %41 = shl i32 1, %40
  %42 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %36, i32 %37, i32 %39, i32 %41)
  %43 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %44 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  switch i64 %45, label %58 [
    i64 133, label %46
    i64 132, label %52
    i64 131, label %52
  ]

46:                                               ; preds = %34
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %48 = load i32, i32* @CDC_D_CDC_CONN_TX1_CTL, align 4
  %49 = load i32, i32* @CONN_TX1_SERIAL_TX1_MUX, align 4
  %50 = load i32, i32* @CONN_TX1_SERIAL_TX1_ADC_1, align 4
  %51 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %47, i32 %48, i32 %49, i32 %50)
  br label %58

52:                                               ; preds = %34, %34
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %54 = load i32, i32* @CDC_D_CDC_CONN_TX2_CTL, align 4
  %55 = load i32, i32* @CONN_TX2_SERIAL_TX2_MUX, align 4
  %56 = load i32, i32* @CONN_TX2_SERIAL_TX2_ADC_2, align 4
  %57 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %53, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %34, %52, %46
  br label %88

59:                                               ; preds = %21
  %60 = call i32 @usleep_range(i32 12000, i32 12010)
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = shl i32 1, %63
  %65 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %61, i32 %62, i32 %64, i32 0)
  br label %88

66:                                               ; preds = %21
  %67 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %68 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  switch i64 %69, label %87 [
    i64 133, label %70
    i64 132, label %76
    i64 131, label %81
  ]

70:                                               ; preds = %66
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %72 = load i32, i32* @CDC_D_CDC_CONN_TX1_CTL, align 4
  %73 = load i32, i32* @CONN_TX1_SERIAL_TX1_MUX, align 4
  %74 = load i32, i32* @CONN_TX1_SERIAL_TX1_ZERO, align 4
  %75 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 %73, i32 %74)
  br label %87

76:                                               ; preds = %66
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %78 = load i32, i32* @CDC_A_MICB_1_CTL, align 4
  %79 = load i32, i32* @MICB_1_CTL_CFILT_REF_SEL_MASK, align 4
  %80 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %77, i32 %78, i32 %79, i32 0)
  br label %81

81:                                               ; preds = %66, %76
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %83 = load i32, i32* @CDC_D_CDC_CONN_TX2_CTL, align 4
  %84 = load i32, i32* @CONN_TX2_SERIAL_TX2_MUX, align 4
  %85 = load i32, i32* @CONN_TX2_SERIAL_TX2_ZERO, align 4
  %86 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %82, i32 %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %66, %81, %70
  br label %88

88:                                               ; preds = %21, %87, %59, %58
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
