; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_get_crosststamp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_get_crosststamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.system_device_crosststamp = type { i32 }

@azx_get_sync_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.system_device_crosststamp*)* @azx_get_crosststamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_get_crosststamp(%struct.snd_pcm_substream* %0, %struct.system_device_crosststamp* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.system_device_crosststamp*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.system_device_crosststamp* %1, %struct.system_device_crosststamp** %4, align 8
  %5 = load i32, i32* @azx_get_sync_time, align 4
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.system_device_crosststamp*, %struct.system_device_crosststamp** %4, align 8
  %8 = call i32 @get_device_system_crosststamp(i32 %5, %struct.snd_pcm_substream* %6, i32* null, %struct.system_device_crosststamp* %7)
  ret i32 %8
}

declare dso_local i32 @get_device_system_crosststamp(i32, %struct.snd_pcm_substream*, i32*, %struct.system_device_crosststamp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
