; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_hp_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_hp_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.arizona_priv = type { %struct.arizona* }
%struct.arizona = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ARIZONA_OUTPUT_ENABLES_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arizona_hp_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.arizona_priv*, align 8
  %10 = alloca %struct.arizona*, align 8
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
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %18 = call %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.arizona_priv* %18, %struct.arizona_priv** %9, align 8
  %19 = load %struct.arizona_priv*, %struct.arizona_priv** %9, align 8
  %20 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %19, i32 0, i32 0
  %21 = load %struct.arizona*, %struct.arizona** %20, align 8
  store %struct.arizona* %21, %struct.arizona** %10, align 8
  %22 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 1, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %35 [
    i32 130, label %27
    i32 129, label %29
    i32 128, label %30
    i32 131, label %30
  ]

27:                                               ; preds = %3
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %12, align 4
  br label %38

29:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %38

30:                                               ; preds = %3, %3
  %31 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %32 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @arizona_out_ev(%struct.snd_soc_dapm_widget* %31, %struct.snd_kcontrol* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %73

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %73

38:                                               ; preds = %29, %27
  %39 = load i32, i32* %11, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.arizona_priv*, %struct.arizona_priv** %9, align 8
  %42 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %41, i32 0, i32 0
  %43 = load %struct.arizona*, %struct.arizona** %42, align 8
  %44 = getelementptr inbounds %struct.arizona, %struct.arizona* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %40
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.arizona_priv*, %struct.arizona_priv** %9, align 8
  %49 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %48, i32 0, i32 0
  %50 = load %struct.arizona*, %struct.arizona** %49, align 8
  %51 = getelementptr inbounds %struct.arizona, %struct.arizona* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %47
  store i32 %53, i32* %51, align 8
  %54 = load %struct.arizona_priv*, %struct.arizona_priv** %9, align 8
  %55 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %54, i32 0, i32 0
  %56 = load %struct.arizona*, %struct.arizona** %55, align 8
  %57 = getelementptr inbounds %struct.arizona, %struct.arizona* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %38
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %60, %38
  %62 = load %struct.arizona*, %struct.arizona** %10, align 8
  %63 = getelementptr inbounds %struct.arizona, %struct.arizona* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ARIZONA_OUTPUT_ENABLES_1, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @regmap_update_bits_async(i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %70 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @arizona_out_ev(%struct.snd_soc_dapm_widget* %69, %struct.snd_kcontrol* %70, i32 %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %61, %35, %30
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @arizona_out_ev(%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32) #1

declare dso_local i32 @regmap_update_bits_async(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
