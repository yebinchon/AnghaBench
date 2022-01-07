; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_del_routes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_del_routes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_dapm_route = type { i32 }

@SND_SOC_DAPM_CLASS_RUNTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_dapm_del_routes(%struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_route* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.snd_soc_dapm_route*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_context** %4, align 8
  store %struct.snd_soc_dapm_route* %1, %struct.snd_soc_dapm_route** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* @SND_SOC_DAPM_CLASS_RUNTIME, align 4
  %13 = call i32 @mutex_lock_nested(i32* %11, i32 %12)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %24, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %20 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %5, align 8
  %21 = call i32 @snd_soc_dapm_del_route(%struct.snd_soc_dapm_context* %19, %struct.snd_soc_dapm_route* %20)
  %22 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %5, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %22, i32 1
  store %struct.snd_soc_dapm_route* %23, %struct.snd_soc_dapm_route** %5, align 8
  br label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %14

27:                                               ; preds = %14
  %28 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  ret i32 0
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @snd_soc_dapm_del_route(%struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_route*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
