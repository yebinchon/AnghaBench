; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_dvfs_sysclk_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_dvfs_sysclk_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.arizona_priv = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arizona_dvfs_sysclk_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
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
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %7, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = call %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.arizona_priv* %15, %struct.arizona_priv** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %17 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %42 [
    i32 129, label %20
    i32 128, label %31
  ]

20:                                               ; preds = %3
  %21 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %22 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %27 = call i32 @arizona_dvfs_enable(%struct.snd_soc_component* %26)
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %30 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %43

31:                                               ; preds = %3
  %32 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %33 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %35 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %40 = call i32 @arizona_dvfs_disable(%struct.snd_soc_component* %39)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %38, %31
  br label %43

42:                                               ; preds = %3
  br label %43

43:                                               ; preds = %42, %41, %28
  %44 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %45 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @arizona_dvfs_enable(%struct.snd_soc_component*) #1

declare dso_local i32 @arizona_dvfs_disable(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
