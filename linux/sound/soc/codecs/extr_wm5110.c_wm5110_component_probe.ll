; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5110.c_wm5110_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5110.c_wm5110_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.wm5110_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, %struct.arizona* }
%struct.arizona = type { i32, %struct.snd_soc_dapm_context* }

@WM5110_NUM_ADSP = common dso_local global i32 0, align 4
@arizona_adsp2_rate_controls = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"HAPTICS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm5110_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5110_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.wm5110_priv*, align 8
  %6 = alloca %struct.arizona*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %9)
  store %struct.snd_soc_dapm_context* %10, %struct.snd_soc_dapm_context** %4, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = call %struct.wm5110_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.wm5110_priv* %12, %struct.wm5110_priv** %5, align 8
  %13 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %14 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.arizona*, %struct.arizona** %15, align 8
  store %struct.arizona* %16, %struct.arizona** %6, align 8
  %17 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %18 = load %struct.arizona*, %struct.arizona** %6, align 8
  %19 = getelementptr inbounds %struct.arizona, %struct.arizona* %18, i32 0, i32 1
  store %struct.snd_soc_dapm_context* %17, %struct.snd_soc_dapm_context** %19, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %21 = load %struct.arizona*, %struct.arizona** %6, align 8
  %22 = getelementptr inbounds %struct.arizona, %struct.arizona* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @snd_soc_component_init_regmap(%struct.snd_soc_component* %20, i32 %23)
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = call i32 @arizona_init_spk(%struct.snd_soc_component* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %2, align 4
  br label %89

31:                                               ; preds = %1
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %33 = call i32 @arizona_init_gpio(%struct.snd_soc_component* %32)
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %35 = call i32 @arizona_init_mono(%struct.snd_soc_component* %34)
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %54, %31
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @WM5110_NUM_ADSP, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %42 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %49 = call i32 @wm_adsp2_component_probe(i32* %47, %struct.snd_soc_component* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %68

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %36

57:                                               ; preds = %36
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %59 = load i32, i32* @arizona_adsp2_rate_controls, align 4
  %60 = load i32, i32* @WM5110_NUM_ADSP, align 4
  %61 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %58, i32 %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %68

65:                                               ; preds = %57
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %67 = call i32 @snd_soc_component_disable_pin(%struct.snd_soc_component* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %89

68:                                               ; preds = %64, %52
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %84, %68
  %72 = load i32, i32* %7, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load %struct.wm5110_priv*, %struct.wm5110_priv** %5, align 8
  %76 = getelementptr inbounds %struct.wm5110_priv, %struct.wm5110_priv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %83 = call i32 @wm_adsp2_component_remove(i32* %81, %struct.snd_soc_component* %82)
  br label %84

84:                                               ; preds = %74
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %7, align 4
  br label %71

87:                                               ; preds = %71
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %65, %29
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.wm5110_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_init_regmap(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @arizona_init_spk(%struct.snd_soc_component*) #1

declare dso_local i32 @arizona_init_gpio(%struct.snd_soc_component*) #1

declare dso_local i32 @arizona_init_mono(%struct.snd_soc_component*) #1

declare dso_local i32 @wm_adsp2_component_probe(i32*, %struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_disable_pin(%struct.snd_soc_component*, i8*) #1

declare dso_local i32 @wm_adsp2_component_remove(i32*, %struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
