; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_put_dec_enum.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_put_dec_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_dapm_context = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.soc_enum = type { i32 }

@WCD9335_CDC_TX0_TX_PATH_CFG0 = common dso_local global i32 0, align 4
@WCD9335_CDC_TX1_TX_PATH_CFG0 = common dso_local global i32 0, align 4
@WCD9335_CDC_TX2_TX_PATH_CFG0 = common dso_local global i32 0, align 4
@WCD9335_CDC_TX3_TX_PATH_CFG0 = common dso_local global i32 0, align 4
@WCD9335_CDC_TX4_TX_PATH_CFG0 = common dso_local global i32 0, align 4
@WCD9335_CDC_TX5_TX_PATH_CFG0 = common dso_local global i32 0, align 4
@WCD9335_CDC_TX6_TX_PATH_CFG0 = common dso_local global i32 0, align 4
@WCD9335_CDC_TX7_TX_PATH_CFG0 = common dso_local global i32 0, align 4
@WCD9335_CDC_TX8_TX_PATH_CFG0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WCD9335_CDC_TX_ADC_AMIC_SEL = common dso_local global i32 0, align 4
@WCD9335_CDC_TX_ADC_DMIC_SEL = common dso_local global i32 0, align 4
@WCD9335_CDC_TX_ADC_AMIC_DMIC_SEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wcd9335_put_dec_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_put_dec_enum(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.soc_enum*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = call %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol* %12)
  store %struct.snd_soc_dapm_context* %13, %struct.snd_soc_dapm_context** %6, align 8
  %14 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %15 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(%struct.snd_soc_dapm_context* %14)
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %7, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.soc_enum*
  store %struct.soc_enum* %19, %struct.soc_enum** %8, align 8
  %20 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %28 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %48 [
    i32 136, label %30
    i32 135, label %32
    i32 134, label %34
    i32 133, label %36
    i32 132, label %38
    i32 131, label %40
    i32 130, label %42
    i32 129, label %44
    i32 128, label %46
  ]

30:                                               ; preds = %2
  %31 = load i32, i32* @WCD9335_CDC_TX0_TX_PATH_CFG0, align 4
  store i32 %31, i32* %10, align 4
  br label %51

32:                                               ; preds = %2
  %33 = load i32, i32* @WCD9335_CDC_TX1_TX_PATH_CFG0, align 4
  store i32 %33, i32* %10, align 4
  br label %51

34:                                               ; preds = %2
  %35 = load i32, i32* @WCD9335_CDC_TX2_TX_PATH_CFG0, align 4
  store i32 %35, i32* %10, align 4
  br label %51

36:                                               ; preds = %2
  %37 = load i32, i32* @WCD9335_CDC_TX3_TX_PATH_CFG0, align 4
  store i32 %37, i32* %10, align 4
  br label %51

38:                                               ; preds = %2
  %39 = load i32, i32* @WCD9335_CDC_TX4_TX_PATH_CFG0, align 4
  store i32 %39, i32* %10, align 4
  br label %51

40:                                               ; preds = %2
  %41 = load i32, i32* @WCD9335_CDC_TX5_TX_PATH_CFG0, align 4
  store i32 %41, i32* %10, align 4
  br label %51

42:                                               ; preds = %2
  %43 = load i32, i32* @WCD9335_CDC_TX6_TX_PATH_CFG0, align 4
  store i32 %43, i32* %10, align 4
  br label %51

44:                                               ; preds = %2
  %45 = load i32, i32* @WCD9335_CDC_TX7_TX_PATH_CFG0, align 4
  store i32 %45, i32* %10, align 4
  br label %51

46:                                               ; preds = %2
  %47 = load i32, i32* @WCD9335_CDC_TX8_TX_PATH_CFG0, align 4
  store i32 %47, i32* %10, align 4
  br label %51

48:                                               ; preds = %2
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %68

51:                                               ; preds = %46, %44, %42, %40, %38, %36, %34, %32, %30
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @WCD9335_CDC_TX_ADC_AMIC_SEL, align 4
  br label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @WCD9335_CDC_TX_ADC_DMIC_SEL, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %11, align 4
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @WCD9335_CDC_TX_ADC_AMIC_DMIC_SEL_MASK, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %60, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %66 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %67 = call i32 @snd_soc_dapm_put_enum_double(%struct.snd_kcontrol* %65, %struct.snd_ctl_elem_value* %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %58, %48
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_dapm_kcontrol_dapm(%struct.snd_kcontrol*) #1

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_put_enum_double(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
