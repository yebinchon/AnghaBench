; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_in_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_in_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.arizona_priv = type { i32 }

@ARIZONA_ADC_DIGITAL_VOLUME_1L = common dso_local global i32 0, align 4
@ARIZONA_ADC_DIGITAL_VOLUME_1R = common dso_local global i32 0, align 4
@ARIZONA_IN1L_MUTE = common dso_local global i32 0, align 4
@ARIZONA_IN_VU = common dso_local global i32 0, align 4
@ARIZONA_INPUT_ENABLES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arizona_in_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.arizona_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %7, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = call %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.arizona_priv* %15, %struct.arizona_priv** %8, align 8
  %16 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = srem i32 %18, 2
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load i32, i32* @ARIZONA_ADC_DIGITAL_VOLUME_1L, align 4
  %23 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 2
  %27 = mul nsw i32 %26, 8
  %28 = add nsw i32 %22, %27
  store i32 %28, i32* %9, align 4
  br label %37

29:                                               ; preds = %3
  %30 = load i32, i32* @ARIZONA_ADC_DIGITAL_VOLUME_1R, align 4
  %31 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 2
  %35 = mul nsw i32 %34, 8
  %36 = add nsw i32 %30, %35
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %29, %21
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %82 [
    i32 128, label %39
    i32 130, label %44
    i32 129, label %62
    i32 131, label %72
  ]

39:                                               ; preds = %37
  %40 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %41 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %83

44:                                               ; preds = %37
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @ARIZONA_IN1L_MUTE, align 4
  %48 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %45, i32 %46, i32 %47, i32 0)
  %49 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %50 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %54 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %44
  %58 = call i32 @msleep(i32 1)
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %60 = call i32 @arizona_in_set_vu(%struct.snd_soc_component* %59, i32 1)
  br label %61

61:                                               ; preds = %57, %44
  br label %83

62:                                               ; preds = %37
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @ARIZONA_IN1L_MUTE, align 4
  %66 = load i32, i32* @ARIZONA_IN_VU, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @ARIZONA_IN1L_MUTE, align 4
  %69 = load i32, i32* @ARIZONA_IN_VU, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %63, i32 %64, i32 %67, i32 %70)
  br label %83

72:                                               ; preds = %37
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %74 = load i32, i32* @ARIZONA_INPUT_ENABLES, align 4
  %75 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %73, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %80 = call i32 @arizona_in_set_vu(%struct.snd_soc_component* %79, i32 0)
  br label %81

81:                                               ; preds = %78, %72
  br label %83

82:                                               ; preds = %37
  br label %83

83:                                               ; preds = %82, %81, %62, %61, %39
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @arizona_in_set_vu(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
