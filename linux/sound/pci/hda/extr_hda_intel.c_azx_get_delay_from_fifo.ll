; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_get_delay_from_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_get_delay_from_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32 }
%struct.azx_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.azx*, %struct.azx_dev*, i32)* @azx_get_delay_from_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_get_delay_from_fifo(%struct.azx* %0, %struct.azx_dev* %1, i32 %2) #0 {
  %4 = alloca %struct.azx*, align 8
  %5 = alloca %struct.azx_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.azx* %0, %struct.azx** %4, align 8
  store %struct.azx_dev* %1, %struct.azx_dev** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %9 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  store %struct.snd_pcm_substream* %11, %struct.snd_pcm_substream** %7, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
