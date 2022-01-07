; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_pinctrl_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_pinctrl_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.pinctrl*, %struct.snd_soc_dapm_pinctrl_priv* }
%struct.pinctrl = type { i32 }
%struct.snd_soc_dapm_pinctrl_priv = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.pinctrl_state = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dapm_pinctrl_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_dapm_pinctrl_priv*, align 8
  %9 = alloca %struct.pinctrl*, align 8
  %10 = alloca %struct.pinctrl_state*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_dapm_pinctrl_priv*, %struct.snd_soc_dapm_pinctrl_priv** %12, align 8
  store %struct.snd_soc_dapm_pinctrl_priv* %13, %struct.snd_soc_dapm_pinctrl_priv** %8, align 8
  %14 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %14, i32 0, i32 0
  %16 = load %struct.pinctrl*, %struct.pinctrl** %15, align 8
  store %struct.pinctrl* %16, %struct.pinctrl** %9, align 8
  %17 = load %struct.pinctrl*, %struct.pinctrl** %9, align 8
  %18 = icmp ne %struct.pinctrl* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.snd_soc_dapm_pinctrl_priv*, %struct.snd_soc_dapm_pinctrl_priv** %8, align 8
  %21 = icmp ne %struct.snd_soc_dapm_pinctrl_priv* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %3
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %52

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.pinctrl*, %struct.pinctrl** %9, align 8
  %31 = load %struct.snd_soc_dapm_pinctrl_priv*, %struct.snd_soc_dapm_pinctrl_priv** %8, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dapm_pinctrl_priv, %struct.snd_soc_dapm_pinctrl_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.pinctrl_state* @pinctrl_lookup_state(%struct.pinctrl* %30, i32 %33)
  store %struct.pinctrl_state* %34, %struct.pinctrl_state** %10, align 8
  br label %41

35:                                               ; preds = %25
  %36 = load %struct.pinctrl*, %struct.pinctrl** %9, align 8
  %37 = load %struct.snd_soc_dapm_pinctrl_priv*, %struct.snd_soc_dapm_pinctrl_priv** %8, align 8
  %38 = getelementptr inbounds %struct.snd_soc_dapm_pinctrl_priv, %struct.snd_soc_dapm_pinctrl_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.pinctrl_state* @pinctrl_lookup_state(%struct.pinctrl* %36, i32 %39)
  store %struct.pinctrl_state* %40, %struct.pinctrl_state** %10, align 8
  br label %41

41:                                               ; preds = %35, %29
  %42 = load %struct.pinctrl_state*, %struct.pinctrl_state** %10, align 8
  %43 = call i64 @IS_ERR(%struct.pinctrl_state* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.pinctrl_state*, %struct.pinctrl_state** %10, align 8
  %47 = call i32 @PTR_ERR(%struct.pinctrl_state* %46)
  store i32 %47, i32* %4, align 4
  br label %52

48:                                               ; preds = %41
  %49 = load %struct.pinctrl*, %struct.pinctrl** %9, align 8
  %50 = load %struct.pinctrl_state*, %struct.pinctrl_state** %10, align 8
  %51 = call i32 @pinctrl_select_state(%struct.pinctrl* %49, %struct.pinctrl_state* %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %45, %22
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @SND_SOC_DAPM_EVENT_ON(i32) #1

declare dso_local %struct.pinctrl_state* @pinctrl_lookup_state(%struct.pinctrl*, i32) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl_state*) #1

declare dso_local i32 @PTR_ERR(%struct.pinctrl_state*) #1

declare dso_local i32 @pinctrl_select_state(%struct.pinctrl*, %struct.pinctrl_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
