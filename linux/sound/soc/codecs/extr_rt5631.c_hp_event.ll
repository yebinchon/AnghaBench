; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5631.c_hp_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5631.c_hp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.rt5631_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @hp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.rt5631_priv*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %7, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %14 = call %struct.rt5631_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.rt5631_priv* %14, %struct.rt5631_priv** %8, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %48 [
    i32 128, label %16
    i32 129, label %32
  ]

16:                                               ; preds = %3
  %17 = load %struct.rt5631_priv*, %struct.rt5631_priv** %8, align 8
  %18 = getelementptr inbounds %struct.rt5631_priv, %struct.rt5631_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %23 = call i32 @onebit_depop_mute_stage(%struct.snd_soc_component* %22, i32 0)
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %25 = call i32 @onebit_depop_power_stage(%struct.snd_soc_component* %24, i32 0)
  br label %31

26:                                               ; preds = %16
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %28 = call i32 @depop_seq_mute_stage(%struct.snd_soc_component* %27, i32 0)
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %30 = call i32 @depop_seq_power_stage(%struct.snd_soc_component* %29, i32 0)
  br label %31

31:                                               ; preds = %26, %21
  br label %49

32:                                               ; preds = %3
  %33 = load %struct.rt5631_priv*, %struct.rt5631_priv** %8, align 8
  %34 = getelementptr inbounds %struct.rt5631_priv, %struct.rt5631_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %39 = call i32 @onebit_depop_power_stage(%struct.snd_soc_component* %38, i32 1)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %41 = call i32 @onebit_depop_mute_stage(%struct.snd_soc_component* %40, i32 1)
  br label %47

42:                                               ; preds = %32
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %44 = call i32 @depop_seq_power_stage(%struct.snd_soc_component* %43, i32 1)
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %46 = call i32 @depop_seq_mute_stage(%struct.snd_soc_component* %45, i32 1)
  br label %47

47:                                               ; preds = %42, %37
  br label %49

48:                                               ; preds = %3
  br label %49

49:                                               ; preds = %48, %47, %31
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.rt5631_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @onebit_depop_mute_stage(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @onebit_depop_power_stage(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @depop_seq_mute_stage(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @depop_seq_power_stage(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
