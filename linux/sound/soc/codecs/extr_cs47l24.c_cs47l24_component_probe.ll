; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l24.c_cs47l24_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l24.c_cs47l24_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.cs47l24_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, %struct.arizona* }
%struct.arizona = type { i32, %struct.snd_soc_dapm_context* }

@arizona_adsp2_rate_controls = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"HAPTICS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @cs47l24_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs47l24_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.cs47l24_priv*, align 8
  %6 = alloca %struct.arizona*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %8)
  store %struct.snd_soc_dapm_context* %9, %struct.snd_soc_dapm_context** %4, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call %struct.cs47l24_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.cs47l24_priv* %11, %struct.cs47l24_priv** %5, align 8
  %12 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %13 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.arizona*, %struct.arizona** %14, align 8
  store %struct.arizona* %15, %struct.arizona** %6, align 8
  %16 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %17 = load %struct.arizona*, %struct.arizona** %6, align 8
  %18 = getelementptr inbounds %struct.arizona, %struct.arizona* %17, i32 0, i32 1
  store %struct.snd_soc_dapm_context* %16, %struct.snd_soc_dapm_context** %18, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %20 = load %struct.arizona*, %struct.arizona** %6, align 8
  %21 = getelementptr inbounds %struct.arizona, %struct.arizona* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @snd_soc_component_init_regmap(%struct.snd_soc_component* %19, i32 %22)
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %25 = call i32 @arizona_init_spk(%struct.snd_soc_component* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %83

30:                                               ; preds = %1
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %32 = call i32 @arizona_init_gpio(%struct.snd_soc_component* %31)
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = call i32 @arizona_init_mono(%struct.snd_soc_component* %33)
  %35 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %36 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %41 = call i32 @wm_adsp2_component_probe(i32* %39, %struct.snd_soc_component* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %67

45:                                               ; preds = %30
  %46 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %47 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %52 = call i32 @wm_adsp2_component_probe(i32* %50, %struct.snd_soc_component* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %67

56:                                               ; preds = %45
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %58 = load i32*, i32** @arizona_adsp2_rate_controls, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %57, i32* %59, i32 2)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %67

64:                                               ; preds = %56
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %66 = call i32 @snd_soc_component_disable_pin(%struct.snd_soc_component* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %83

67:                                               ; preds = %63, %55, %44
  %68 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %69 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %74 = call i32 @wm_adsp2_component_remove(i32* %72, %struct.snd_soc_component* %73)
  %75 = load %struct.cs47l24_priv*, %struct.cs47l24_priv** %5, align 8
  %76 = getelementptr inbounds %struct.cs47l24_priv, %struct.cs47l24_priv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %81 = call i32 @wm_adsp2_component_remove(i32* %79, %struct.snd_soc_component* %80)
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %67, %64, %28
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.cs47l24_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_init_regmap(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @arizona_init_spk(%struct.snd_soc_component*) #1

declare dso_local i32 @arizona_init_gpio(%struct.snd_soc_component*) #1

declare dso_local i32 @arizona_init_mono(%struct.snd_soc_component*) #1

declare dso_local i32 @wm_adsp2_component_probe(i32*, %struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32*, i32) #1

declare dso_local i32 @snd_soc_component_disable_pin(%struct.snd_soc_component*, i8*) #1

declare dso_local i32 @wm_adsp2_component_remove(i32*, %struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
