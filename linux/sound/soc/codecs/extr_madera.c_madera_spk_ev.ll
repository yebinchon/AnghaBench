; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_spk_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_spk_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.madera_priv = type { %struct.madera* }
%struct.madera = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Speaker not enabled due to temperature\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MADERA_OUTPUT_ENABLES_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @madera_spk_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.madera_priv*, align 8
  %10 = alloca %struct.madera*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %16)
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %8, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = call %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.madera_priv* %19, %struct.madera_priv** %9, align 8
  %20 = load %struct.madera_priv*, %struct.madera_priv** %9, align 8
  %21 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %20, i32 0, i32 0
  %22 = load %struct.madera*, %struct.madera** %21, align 8
  store %struct.madera* %22, %struct.madera** %10, align 8
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %65 [
    i32 129, label %24
    i32 128, label %55
  ]

24:                                               ; preds = %3
  %25 = load %struct.madera*, %struct.madera** %10, align 8
  %26 = call i32 @madera_check_speaker_overheat(%struct.madera* %25, i32* %11, i32* %12)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %4, align 4
  br label %67

31:                                               ; preds = %24
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.madera*, %struct.madera** %10, align 8
  %36 = getelementptr inbounds %struct.madera, %struct.madera* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_crit(i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %67

41:                                               ; preds = %31
  %42 = load %struct.madera*, %struct.madera** %10, align 8
  %43 = getelementptr inbounds %struct.madera, %struct.madera* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MADERA_OUTPUT_ENABLES_1, align 4
  %46 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %47 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 1, %48
  %50 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %51 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 1, %52
  %54 = call i32 @regmap_update_bits(i32 %44, i32 %45, i32 %49, i32 %53)
  br label %66

55:                                               ; preds = %3
  %56 = load %struct.madera*, %struct.madera** %10, align 8
  %57 = getelementptr inbounds %struct.madera, %struct.madera* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MADERA_OUTPUT_ENABLES_1, align 4
  %60 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %61 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 1, %62
  %64 = call i32 @regmap_update_bits(i32 %58, i32 %59, i32 %63, i32 0)
  br label %66

65:                                               ; preds = %3
  br label %66

66:                                               ; preds = %65, %55, %41
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %34, %29
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @madera_check_speaker_overheat(%struct.madera*, i32*, i32*) #1

declare dso_local i32 @dev_crit(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
