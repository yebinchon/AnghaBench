; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_pcm_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_pcm_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.atiixp_dma* }
%struct.atiixp_dma = type { i64, i64 }
%struct.atiixp = type { %struct.ac97_pcm** }
%struct.ac97_pcm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_atiixp_pcm_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_atiixp_pcm_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.atiixp*, align 8
  %4 = alloca %struct.atiixp_dma*, align 8
  %5 = alloca %struct.ac97_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.atiixp* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.atiixp* %7, %struct.atiixp** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.atiixp_dma*, %struct.atiixp_dma** %11, align 8
  store %struct.atiixp_dma* %12, %struct.atiixp_dma** %4, align 8
  %13 = load %struct.atiixp_dma*, %struct.atiixp_dma** %4, align 8
  %14 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %19 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %18, i32 0, i32 0
  %20 = load %struct.ac97_pcm**, %struct.ac97_pcm*** %19, align 8
  %21 = load %struct.atiixp_dma*, %struct.atiixp_dma** %4, align 8
  %22 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.ac97_pcm*, %struct.ac97_pcm** %20, i64 %23
  %25 = load %struct.ac97_pcm*, %struct.ac97_pcm** %24, align 8
  store %struct.ac97_pcm* %25, %struct.ac97_pcm** %5, align 8
  %26 = load %struct.ac97_pcm*, %struct.ac97_pcm** %5, align 8
  %27 = call i32 @snd_ac97_pcm_close(%struct.ac97_pcm* %26)
  %28 = load %struct.atiixp_dma*, %struct.atiixp_dma** %4, align 8
  %29 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %17, %1
  %31 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %32 = load %struct.atiixp_dma*, %struct.atiixp_dma** %4, align 8
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %34 = call i32 @atiixp_clear_dma_packets(%struct.atiixp* %31, %struct.atiixp_dma* %32, %struct.snd_pcm_substream* %33)
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %36 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %35)
  ret i32 0
}

declare dso_local %struct.atiixp* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ac97_pcm_close(%struct.ac97_pcm*) #1

declare dso_local i32 @atiixp_clear_dma_packets(%struct.atiixp*, %struct.atiixp_dma*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
