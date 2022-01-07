; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_playback_indep_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_playback_indep_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i8* }
%struct.snd_ice1712 = type { %struct.snd_pcm_substream**, i32, i64* }

@EBUSY = common dso_local global i32 0, align 4
@vt1724_playback_dma_regs = common dso_local global i32* null, align 8
@snd_vt1724_2ch_stereo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_vt1724_playback_indep_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vt1724_playback_indep_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_ice1712* %7, %struct.snd_ice1712** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 1
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %5, align 8
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %15 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %14, i32 0, i32 2
  %16 = load i64*, i64** %15, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %16, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %25 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %24, i32 0, i32 1
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %59

29:                                               ; preds = %1
  %30 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %31 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32*, i32** @vt1724_playback_dma_regs, align 8
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = bitcast i32* %37 to i8*
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %42 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %43 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %42, i32 0, i32 0
  %44 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %43, align 8
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %44, i64 %47
  store %struct.snd_pcm_substream* %41, %struct.snd_pcm_substream** %48, align 8
  %49 = load i32, i32* @snd_vt1724_2ch_stereo, align 4
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %53 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %52)
  %54 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %55 = call i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime* %54, i32 0, i32 32, i32 24)
  %56 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %58 = call i32 @set_rate_constraints(%struct.snd_ice1712* %56, %struct.snd_pcm_substream* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %29, %23
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @set_rate_constraints(%struct.snd_ice1712*, %struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
