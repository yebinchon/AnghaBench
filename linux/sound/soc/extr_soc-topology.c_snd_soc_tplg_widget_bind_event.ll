; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_snd_soc_tplg_widget_bind_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_snd_soc_tplg_widget_bind_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32* }
%struct.snd_soc_tplg_widget_events = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_tplg_widget_bind_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_soc_tplg_widget_events* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dapm_widget*, align 8
  %7 = alloca %struct.snd_soc_tplg_widget_events*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %6, align 8
  store %struct.snd_soc_tplg_widget_events* %1, %struct.snd_soc_tplg_widget_events** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %36, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.snd_soc_tplg_widget_events*, %struct.snd_soc_tplg_widget_events** %7, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.snd_soc_tplg_widget_events, %struct.snd_soc_tplg_widget_events* %19, i64 %21
  %23 = getelementptr inbounds %struct.snd_soc_tplg_widget_events, %struct.snd_soc_tplg_widget_events* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %18, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %17
  %27 = load %struct.snd_soc_tplg_widget_events*, %struct.snd_soc_tplg_widget_events** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.snd_soc_tplg_widget_events, %struct.snd_soc_tplg_widget_events* %27, i64 %29
  %31 = getelementptr inbounds %struct.snd_soc_tplg_widget_events, %struct.snd_soc_tplg_widget_events* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  store i32 0, i32* %5, align 4
  br label %42

35:                                               ; preds = %17
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %13

39:                                               ; preds = %13
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %39, %26
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
