; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l15.c_cs47l15_in1_adc_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l15.c_cs47l15_in1_adc_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.cs47l15 = type { i32 }

@MADERA_DMIC1L_CONTROL = common dso_local global i32 0, align 4
@MADERA_IN1_OSR_MASK = common dso_local global i32 0, align 4
@MADERA_IN1_OSR_SHIFT = common dso_local global i32 0, align 4
@CS47L15_ADC_INT_BIAS = common dso_local global i32 0, align 4
@CS47L15_ADC_INT_BIAS_MASK = common dso_local global i32 0, align 4
@CS47L15_ADC_INT_BIAS_SHIFT = common dso_local global i32 0, align 4
@CS47L15_PGA_BIAS_SEL = common dso_local global i32 0, align 4
@CS47L15_PGA_BIAS_SEL_MASK = common dso_local global i32 0, align 4
@CS47L15_PGA_BIAS_SEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @cs47l15_in1_adc_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs47l15_in1_adc_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.cs47l15*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %7)
  store %struct.snd_soc_component* %8, %struct.snd_soc_component** %5, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %10 = call %struct.cs47l15* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.cs47l15* %10, %struct.cs47l15** %6, align 8
  %11 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %37 [
    i32 0, label %18
  ]

18:                                               ; preds = %2
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %20 = load i32, i32* @MADERA_DMIC1L_CONTROL, align 4
  %21 = load i32, i32* @MADERA_IN1_OSR_MASK, align 4
  %22 = load i32, i32* @MADERA_IN1_OSR_SHIFT, align 4
  %23 = shl i32 5, %22
  %24 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %19, i32 %20, i32 %21, i32 %23)
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %26 = load i32, i32* @CS47L15_ADC_INT_BIAS, align 4
  %27 = load i32, i32* @CS47L15_ADC_INT_BIAS_MASK, align 4
  %28 = load i32, i32* @CS47L15_ADC_INT_BIAS_SHIFT, align 4
  %29 = shl i32 4, %28
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %25, i32 %26, i32 %27, i32 %29)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %32 = load i32, i32* @CS47L15_PGA_BIAS_SEL, align 4
  %33 = load i32, i32* @CS47L15_PGA_BIAS_SEL_MASK, align 4
  %34 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %31, i32 %32, i32 %33, i32 0)
  %35 = load %struct.cs47l15*, %struct.cs47l15** %6, align 8
  %36 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  br label %58

37:                                               ; preds = %2
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %39 = load i32, i32* @MADERA_DMIC1L_CONTROL, align 4
  %40 = load i32, i32* @MADERA_IN1_OSR_MASK, align 4
  %41 = load i32, i32* @MADERA_IN1_OSR_SHIFT, align 4
  %42 = shl i32 4, %41
  %43 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %38, i32 %39, i32 %40, i32 %42)
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %45 = load i32, i32* @CS47L15_ADC_INT_BIAS, align 4
  %46 = load i32, i32* @CS47L15_ADC_INT_BIAS_MASK, align 4
  %47 = load i32, i32* @CS47L15_ADC_INT_BIAS_SHIFT, align 4
  %48 = shl i32 1, %47
  %49 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i32 %45, i32 %46, i32 %48)
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %51 = load i32, i32* @CS47L15_PGA_BIAS_SEL, align 4
  %52 = load i32, i32* @CS47L15_PGA_BIAS_SEL_MASK, align 4
  %53 = load i32, i32* @CS47L15_PGA_BIAS_SEL_SHIFT, align 4
  %54 = shl i32 3, %53
  %55 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %52, i32 %54)
  %56 = load %struct.cs47l15*, %struct.cs47l15** %6, align 8
  %57 = getelementptr inbounds %struct.cs47l15, %struct.cs47l15* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %37, %18
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.cs47l15* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
