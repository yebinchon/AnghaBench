; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_new_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_new_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_dapm_widget = type { i32 }

@SND_SOC_DAPM_CLASS_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_widget* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dapm_widget*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_context** %4, align 8
  store %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_widget** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* @SND_SOC_DAPM_CLASS_INIT, align 4
  %15 = call i32 @mutex_lock_nested(i32* %13, i32 %14)
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %33, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %22 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %23 = call %struct.snd_soc_dapm_widget* @snd_soc_dapm_new_control_unlocked(%struct.snd_soc_dapm_context* %21, %struct.snd_soc_dapm_widget* %22)
  store %struct.snd_soc_dapm_widget* %23, %struct.snd_soc_dapm_widget** %7, align 8
  %24 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %25 = call i64 @IS_ERR(%struct.snd_soc_dapm_widget* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %7, align 8
  %29 = call i32 @PTR_ERR(%struct.snd_soc_dapm_widget* %28)
  store i32 %29, i32* %9, align 4
  br label %36

30:                                               ; preds = %20
  %31 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %31, i32 1
  store %struct.snd_soc_dapm_widget* %32, %struct.snd_soc_dapm_widget** %5, align 8
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %16

36:                                               ; preds = %27, %16
  %37 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %38 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.snd_soc_dapm_widget* @snd_soc_dapm_new_control_unlocked(%struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_widget*) #1

declare dso_local i64 @IS_ERR(%struct.snd_soc_dapm_widget*) #1

declare dso_local i32 @PTR_ERR(%struct.snd_soc_dapm_widget*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
