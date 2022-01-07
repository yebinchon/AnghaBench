; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_assign_device.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_assign_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx_dev = type { i32 }
%struct.azx = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.hdac_stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.azx_dev* (%struct.azx*, %struct.snd_pcm_substream*)* @azx_assign_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.azx_dev* @azx_assign_device(%struct.azx* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.azx_dev*, align 8
  %4 = alloca %struct.azx*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.hdac_stream*, align 8
  store %struct.azx* %0, %struct.azx** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  %7 = load %struct.azx*, %struct.azx** %4, align 8
  %8 = call i32 @azx_bus(%struct.azx* %7)
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %10 = call %struct.hdac_stream* @snd_hdac_stream_assign(i32 %8, %struct.snd_pcm_substream* %9)
  store %struct.hdac_stream* %10, %struct.hdac_stream** %6, align 8
  %11 = load %struct.hdac_stream*, %struct.hdac_stream** %6, align 8
  %12 = icmp ne %struct.hdac_stream* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.azx_dev* null, %struct.azx_dev** %3, align 8
  br label %17

14:                                               ; preds = %2
  %15 = load %struct.hdac_stream*, %struct.hdac_stream** %6, align 8
  %16 = call %struct.azx_dev* @stream_to_azx_dev(%struct.hdac_stream* %15)
  store %struct.azx_dev* %16, %struct.azx_dev** %3, align 8
  br label %17

17:                                               ; preds = %14, %13
  %18 = load %struct.azx_dev*, %struct.azx_dev** %3, align 8
  ret %struct.azx_dev* %18
}

declare dso_local %struct.hdac_stream* @snd_hdac_stream_assign(i32, %struct.snd_pcm_substream*) #1

declare dso_local i32 @azx_bus(%struct.azx*) #1

declare dso_local %struct.azx_dev* @stream_to_azx_dev(%struct.hdac_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
