; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_playback_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_playback_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_ymfpci_pcm* }
%struct.snd_ymfpci_pcm = type { i64, %struct.snd_ymfpci_voice** }
%struct.snd_ymfpci_voice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_ymfpci = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ymfpci_playback_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_playback_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_ymfpci*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_ymfpci_pcm*, align 8
  %7 = alloca %struct.snd_ymfpci_voice*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_ymfpci* %9, %struct.snd_ymfpci** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %14, align 8
  store %struct.snd_ymfpci_pcm* %15, %struct.snd_ymfpci_pcm** %6, align 8
  %16 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %17 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %16, i32 0, i32 1
  %18 = load %struct.snd_ymfpci_voice**, %struct.snd_ymfpci_voice*** %17, align 8
  %19 = getelementptr inbounds %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %18, i64 0
  %20 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %19, align 8
  store %struct.snd_ymfpci_voice* %20, %struct.snd_ymfpci_voice** %7, align 8
  %21 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %22 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %7, align 8
  %27 = icmp ne %struct.snd_ymfpci_voice* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %1
  store i32 0, i32* %2, align 4
  br label %40

29:                                               ; preds = %25
  %30 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %7, align 8
  %31 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %34 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %29, %28
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
