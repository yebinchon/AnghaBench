; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_i2s_pin_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_i2s_pin_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }

@RT5665_GP2_PIN_MASK = common dso_local global i32 0, align 4
@RT5665_GP3_PIN_MASK = common dso_local global i32 0, align 4
@RT5665_GP4_PIN_MASK = common dso_local global i32 0, align 4
@RT5665_GP5_PIN_MASK = common dso_local global i32 0, align 4
@RT5665_GP2_PIN_BCLK2 = common dso_local global i32 0, align 4
@RT5665_GP3_PIN_LRCK2 = common dso_local global i32 0, align 4
@RT5665_GP4_PIN_DACDAT2_1 = common dso_local global i32 0, align 4
@RT5665_GP5_PIN_ADCDAT2_1 = common dso_local global i32 0, align 4
@RT5665_GP8_PIN_MASK = common dso_local global i32 0, align 4
@RT5665_GP8_PIN_DACDAT2_2 = common dso_local global i32 0, align 4
@RT5665_GP9_PIN_MASK = common dso_local global i32 0, align 4
@RT5665_GP9_PIN_ADCDAT2_2 = common dso_local global i32 0, align 4
@RT5665_GP6_PIN_MASK = common dso_local global i32 0, align 4
@RT5665_GP7_PIN_MASK = common dso_local global i32 0, align 4
@RT5665_GP6_PIN_BCLK3 = common dso_local global i32 0, align 4
@RT5665_GP7_PIN_LRCK3 = common dso_local global i32 0, align 4
@RT5665_GP8_PIN_DACDAT3 = common dso_local global i32 0, align 4
@RT5665_GP9_PIN_ADCDAT3 = common dso_local global i32 0, align 4
@RT5665_GPIO_CTRL_1 = common dso_local global i32 0, align 4
@RT5665_GPIO_CTRL_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @rt5665_i2s_pin_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5665_i2s_pin_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %15)
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %61 [
    i32 132, label %20
    i32 131, label %35
    i32 130, label %48
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @RT5665_GP2_PIN_MASK, align 4
  %22 = load i32, i32* @RT5665_GP3_PIN_MASK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @RT5665_GP4_PIN_MASK, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @RT5665_GP5_PIN_MASK, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* @RT5665_GP2_PIN_BCLK2, align 4
  %29 = load i32, i32* @RT5665_GP3_PIN_LRCK2, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @RT5665_GP4_PIN_DACDAT2_1, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @RT5665_GP5_PIN_ADCDAT2_1, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %9, align 4
  br label %61

35:                                               ; preds = %3
  %36 = load i32, i32* @RT5665_GP2_PIN_MASK, align 4
  %37 = load i32, i32* @RT5665_GP3_PIN_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @RT5665_GP8_PIN_MASK, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* @RT5665_GP2_PIN_BCLK2, align 4
  %42 = load i32, i32* @RT5665_GP3_PIN_LRCK2, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @RT5665_GP8_PIN_DACDAT2_2, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* @RT5665_GP9_PIN_MASK, align 4
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* @RT5665_GP9_PIN_ADCDAT2_2, align 4
  store i32 %47, i32* %10, align 4
  br label %61

48:                                               ; preds = %3
  %49 = load i32, i32* @RT5665_GP6_PIN_MASK, align 4
  %50 = load i32, i32* @RT5665_GP7_PIN_MASK, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @RT5665_GP8_PIN_MASK, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* @RT5665_GP6_PIN_BCLK3, align 4
  %55 = load i32, i32* @RT5665_GP7_PIN_LRCK3, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @RT5665_GP8_PIN_DACDAT3, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @RT5665_GP9_PIN_MASK, align 4
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* @RT5665_GP9_PIN_ADCDAT3, align 4
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %3, %48, %35, %20
  %62 = load i32, i32* %7, align 4
  switch i32 %62, label %99 [
    i32 128, label %63
    i32 129, label %82
  ]

63:                                               ; preds = %61
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %68 = load i32, i32* @RT5665_GPIO_CTRL_1, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %67, i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %63
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %77 = load i32, i32* @RT5665_GPIO_CTRL_2, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %76, i32 %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %72
  br label %100

82:                                               ; preds = %61
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %87 = load i32, i32* @RT5665_GPIO_CTRL_1, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %86, i32 %87, i32 %88, i32 0)
  br label %90

90:                                               ; preds = %85, %82
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %95 = load i32, i32* @RT5665_GPIO_CTRL_2, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %94, i32 %95, i32 %96, i32 0)
  br label %98

98:                                               ; preds = %93, %90
  br label %100

99:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %101

100:                                              ; preds = %98, %81
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %99
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
