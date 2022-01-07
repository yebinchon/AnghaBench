; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-component.c_snd_soc_component_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-component.c_snd_soc_component_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_component_hw_params(%struct.snd_soc_component* %0, %struct.snd_pcm_substream* %1, %struct.snd_pcm_hw_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_pcm_hw_params*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %6, align 8
  store %struct.snd_pcm_hw_params* %2, %struct.snd_pcm_hw_params** %7, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %9 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %3
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)*, i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)** %20, align 8
  %22 = icmp ne i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %14
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)*, i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)** %29, align 8
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %33 = call i32 %30(%struct.snd_pcm_substream* %31, %struct.snd_pcm_hw_params* %32)
  store i32 %33, i32* %4, align 4
  br label %35

34:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %23
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
