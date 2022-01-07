; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_clk_sys_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_clk_sys_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { i32, i32, i32 }

@system_power_efficient_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @clk_sys_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_sys_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm8994_priv*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %15 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.wm8994_priv* %15, %struct.wm8994_priv** %9, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %42 [
    i32 128, label %17
    i32 129, label %20
    i32 130, label %39
  ]

17:                                               ; preds = %3
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = call i32 @configure_clock(%struct.snd_soc_component* %18)
  store i32 %19, i32* %4, align 4
  br label %43

20:                                               ; preds = %3
  %21 = load %struct.wm8994_priv*, %struct.wm8994_priv** %9, align 8
  %22 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load %struct.wm8994_priv*, %struct.wm8994_priv** %9, align 8
  %27 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @system_power_efficient_wq, align 4
  %32 = load %struct.wm8994_priv*, %struct.wm8994_priv** %9, align 8
  %33 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %32, i32 0, i32 1
  %34 = call i32 @msecs_to_jiffies(i32 1000)
  %35 = call i32 @queue_delayed_work(i32 %31, i32* %33, i32 %34)
  %36 = load %struct.wm8994_priv*, %struct.wm8994_priv** %9, align 8
  %37 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %30, %25, %20
  br label %42

39:                                               ; preds = %3
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %41 = call i32 @configure_clock(%struct.snd_soc_component* %40)
  br label %42

42:                                               ; preds = %3, %39, %38
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %17
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @configure_clock(%struct.snd_soc_component*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
