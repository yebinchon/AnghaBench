; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_in_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_in_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.madera_priv = type { i32 }

@MADERA_ADC_DIGITAL_VOLUME_1L = common dso_local global i32 0, align 4
@MADERA_ADC_DIGITAL_VOLUME_1R = common dso_local global i32 0, align 4
@MADERA_IN1L_MUTE = common dso_local global i32 0, align 4
@MADERA_IN_VU = common dso_local global i32 0, align 4
@MADERA_INPUT_ENABLES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @madera_in_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.madera_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %14)
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %7, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %17 = call %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.madera_priv* %17, %struct.madera_priv** %8, align 8
  %18 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = srem i32 %20, 2
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load i32, i32* @MADERA_ADC_DIGITAL_VOLUME_1L, align 4
  %25 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 2
  %29 = mul nsw i32 %28, 8
  %30 = add nsw i32 %24, %29
  store i32 %30, i32* %9, align 4
  br label %39

31:                                               ; preds = %3
  %32 = load i32, i32* @MADERA_ADC_DIGITAL_VOLUME_1R, align 4
  %33 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %35, 2
  %37 = mul nsw i32 %36, 8
  %38 = add nsw i32 %32, %37
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %31, %23
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %87 [
    i32 128, label %41
    i32 130, label %46
    i32 129, label %64
    i32 131, label %74
  ]

41:                                               ; preds = %39
  %42 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %43 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %88

46:                                               ; preds = %39
  %47 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %48 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @MADERA_IN1L_MUTE, align 4
  %54 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %51, i32 %52, i32 %53, i32 0)
  %55 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %56 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %46
  %60 = call i32 @usleep_range(i32 1000, i32 3000)
  %61 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %62 = call i32 @madera_in_set_vu(%struct.madera_priv* %61, i32 1)
  br label %63

63:                                               ; preds = %59, %46
  br label %88

64:                                               ; preds = %39
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @MADERA_IN1L_MUTE, align 4
  %68 = load i32, i32* @MADERA_IN_VU, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @MADERA_IN1L_MUTE, align 4
  %71 = load i32, i32* @MADERA_IN_VU, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %65, i32 %66, i32 %69, i32 %72)
  br label %88

74:                                               ; preds = %39
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %76 = load i32, i32* @MADERA_INPUT_ENABLES, align 4
  %77 = call i32 @snd_soc_component_read(%struct.snd_soc_component* %75, i32 %76, i32* %10)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %85 = call i32 @madera_in_set_vu(%struct.madera_priv* %84, i32 0)
  br label %86

86:                                               ; preds = %83, %80, %74
  br label %88

87:                                               ; preds = %39
  br label %88

88:                                               ; preds = %87, %86, %64, %63, %41
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @madera_in_set_vu(%struct.madera_priv*, i32) #1

declare dso_local i32 @snd_soc_component_read(%struct.snd_soc_component*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
