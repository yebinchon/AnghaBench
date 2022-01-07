; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-generic-dmaengine-pcm.c_snd_dmaengine_pcm_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-generic-dmaengine-pcm.c_snd_dmaengine_pcm_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.dmaengine_pcm = type { i32 }

@SND_DMAENGINE_PCM_DRV_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_dmaengine_pcm_unregister(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.dmaengine_pcm*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = load i32, i32* @SND_DMAENGINE_PCM_DRV_NAME, align 4
  %7 = call %struct.snd_soc_component* @snd_soc_lookup_component(%struct.device* %5, i32 %6)
  store %struct.snd_soc_component* %7, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = icmp ne %struct.snd_soc_component* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = call %struct.dmaengine_pcm* @soc_component_to_pcm(%struct.snd_soc_component* %12)
  store %struct.dmaengine_pcm* %13, %struct.dmaengine_pcm** %4, align 8
  %14 = load %struct.device*, %struct.device** %2, align 8
  %15 = call i32 @snd_soc_unregister_component(%struct.device* %14)
  %16 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %4, align 8
  %17 = call i32 @dmaengine_pcm_release_chan(%struct.dmaengine_pcm* %16)
  %18 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %4, align 8
  %19 = call i32 @kfree(%struct.dmaengine_pcm* %18)
  br label %20

20:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.snd_soc_component* @snd_soc_lookup_component(%struct.device*, i32) #1

declare dso_local %struct.dmaengine_pcm* @soc_component_to_pcm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_unregister_component(%struct.device*) #1

declare dso_local i32 @dmaengine_pcm_release_chan(%struct.dmaengine_pcm*) #1

declare dso_local i32 @kfree(%struct.dmaengine_pcm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
