; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_spdif_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_spdif_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.atiixp = type { i32, i32*, i64 }

@ATI_DMA_PLAYBACK = common dso_local global i64 0, align 8
@ATI_DMA_SPDIF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_atiixp_spdif_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_atiixp_spdif_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.atiixp*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.atiixp* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.atiixp* %6, %struct.atiixp** %3, align 8
  %7 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %8 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %11 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %17 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @ATI_DMA_PLAYBACK, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = call i32 @snd_atiixp_pcm_close(%struct.snd_pcm_substream* %15, i32* %20)
  store i32 %21, i32* %4, align 4
  br label %30

22:                                               ; preds = %1
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %24 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %25 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @ATI_DMA_SPDIF, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i32 @snd_atiixp_pcm_close(%struct.snd_pcm_substream* %23, i32* %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %22, %14
  %31 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %32 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.atiixp* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_atiixp_pcm_close(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
