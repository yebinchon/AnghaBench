; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5102.c_wm5102_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5102.c_wm5102_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.wm5102_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, %struct.arizona* }
%struct.arizona = type { %struct.snd_soc_dapm_context*, i32 }

@arizona_adsp2_rate_controls = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"HAPTICS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm5102_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5102_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.wm5102_priv*, align 8
  %6 = alloca %struct.arizona*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %8)
  store %struct.snd_soc_dapm_context* %9, %struct.snd_soc_dapm_context** %4, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call %struct.wm5102_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.wm5102_priv* %11, %struct.wm5102_priv** %5, align 8
  %12 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %13 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.arizona*, %struct.arizona** %14, align 8
  store %struct.arizona* %15, %struct.arizona** %6, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = load %struct.arizona*, %struct.arizona** %6, align 8
  %18 = getelementptr inbounds %struct.arizona, %struct.arizona* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @snd_soc_component_init_regmap(%struct.snd_soc_component* %16, i32 %19)
  %21 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %22 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = call i32 @wm_adsp2_component_probe(i32* %25, %struct.snd_soc_component* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %66

32:                                               ; preds = %1
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = load i32, i32* @arizona_adsp2_rate_controls, align 4
  %35 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %33, i32 %34, i32 1)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %57

39:                                               ; preds = %32
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %41 = call i32 @arizona_init_spk(%struct.snd_soc_component* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %66

46:                                               ; preds = %39
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %48 = call i32 @arizona_init_gpio(%struct.snd_soc_component* %47)
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %50 = call i32 @snd_soc_component_disable_pin(%struct.snd_soc_component* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %52 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %53 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load %struct.arizona*, %struct.arizona** %54, align 8
  %56 = getelementptr inbounds %struct.arizona, %struct.arizona* %55, i32 0, i32 0
  store %struct.snd_soc_dapm_context* %51, %struct.snd_soc_dapm_context** %56, align 8
  store i32 0, i32* %2, align 4
  br label %66

57:                                               ; preds = %38
  %58 = load %struct.wm5102_priv*, %struct.wm5102_priv** %5, align 8
  %59 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %64 = call i32 @wm_adsp2_component_remove(i32* %62, %struct.snd_soc_component* %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %57, %46, %44, %30
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.wm5102_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_init_regmap(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @wm_adsp2_component_probe(i32*, %struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @arizona_init_spk(%struct.snd_soc_component*) #1

declare dso_local i32 @arizona_init_gpio(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_disable_pin(%struct.snd_soc_component*, i8*) #1

declare dso_local i32 @wm_adsp2_component_remove(i32*, %struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
