; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-generic-dmaengine-pcm.c_dmaengine_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-generic-dmaengine-pcm.c_dmaengine_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.dmaengine_pcm = type { i32 }

@SND_DMAENGINE_PCM_DRV_NAME = common dso_local global i32 0, align 4
@SND_DMAENGINE_PCM_FLAG_NO_RESIDUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @dmaengine_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmaengine_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.dmaengine_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  store %struct.snd_soc_pcm_runtime* %9, %struct.snd_soc_pcm_runtime** %4, align 8
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %11 = load i32, i32* @SND_DMAENGINE_PCM_DRV_NAME, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %10, i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %5, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %14 = call %struct.dmaengine_pcm* @soc_component_to_pcm(%struct.snd_soc_component* %13)
  store %struct.dmaengine_pcm* %14, %struct.dmaengine_pcm** %6, align 8
  %15 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %6, align 8
  %16 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SND_DMAENGINE_PCM_FLAG_NO_RESIDUE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %23 = call i32 @snd_dmaengine_pcm_pointer_no_residue(%struct.snd_pcm_substream* %22)
  store i32 %23, i32* %2, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %26 = call i32 @snd_dmaengine_pcm_pointer(%struct.snd_pcm_substream* %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.dmaengine_pcm* @soc_component_to_pcm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_dmaengine_pcm_pointer_no_residue(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_dmaengine_pcm_pointer(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
