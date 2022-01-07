; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_pcm_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_pcm_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.azx_pcm = type { %struct.azx* }
%struct.azx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.snd_pcm_substream*, %struct.vm_area_struct*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.vm_area_struct*)* @azx_pcm_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_pcm_mmap(%struct.snd_pcm_substream* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.azx_pcm*, align 8
  %6 = alloca %struct.azx*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.azx_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.azx_pcm* %8, %struct.azx_pcm** %5, align 8
  %9 = load %struct.azx_pcm*, %struct.azx_pcm** %5, align 8
  %10 = getelementptr inbounds %struct.azx_pcm, %struct.azx_pcm* %9, i32 0, i32 0
  %11 = load %struct.azx*, %struct.azx** %10, align 8
  store %struct.azx* %11, %struct.azx** %6, align 8
  %12 = load %struct.azx*, %struct.azx** %6, align 8
  %13 = getelementptr inbounds %struct.azx, %struct.azx* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.snd_pcm_substream*, %struct.vm_area_struct*)*, i32 (%struct.snd_pcm_substream*, %struct.vm_area_struct*)** %15, align 8
  %17 = icmp ne i32 (%struct.snd_pcm_substream*, %struct.vm_area_struct*)* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.azx*, %struct.azx** %6, align 8
  %20 = getelementptr inbounds %struct.azx, %struct.azx* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.snd_pcm_substream*, %struct.vm_area_struct*)*, i32 (%struct.snd_pcm_substream*, %struct.vm_area_struct*)** %22, align 8
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %26 = call i32 %23(%struct.snd_pcm_substream* %24, %struct.vm_area_struct* %25)
  br label %27

27:                                               ; preds = %18, %2
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %30 = call i32 @snd_pcm_lib_default_mmap(%struct.snd_pcm_substream* %28, %struct.vm_area_struct* %29)
  ret i32 %30
}

declare dso_local %struct.azx_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_default_mmap(%struct.snd_pcm_substream*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
