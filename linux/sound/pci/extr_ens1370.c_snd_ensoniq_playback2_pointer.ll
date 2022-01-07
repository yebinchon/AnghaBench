; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_ensoniq_playback2_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_ensoniq_playback2_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.ensoniq = type { i32 }

@CONTROL = common dso_local global i32 0, align 4
@ES_DAC2_EN = common dso_local global i32 0, align 4
@ES_PAGE_DAC = common dso_local global i32 0, align 4
@MEM_PAGE = common dso_local global i32 0, align 4
@DAC2_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*)* @snd_ensoniq_playback2_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_ensoniq_playback2_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.ensoniq*, align 8
  %4 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.ensoniq* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.ensoniq* %6, %struct.ensoniq** %3, align 8
  %7 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %8 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %11 = load i32, i32* @CONTROL, align 4
  %12 = call i32 @ES_REG(%struct.ensoniq* %10, i32 %11)
  %13 = call i32 @inl(i32 %12)
  %14 = load i32, i32* @ES_DAC2_EN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load i32, i32* @ES_PAGE_DAC, align 4
  %19 = call i32 @ES_MEM_PAGEO(i32 %18)
  %20 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %21 = load i32, i32* @MEM_PAGE, align 4
  %22 = call i32 @ES_REG(%struct.ensoniq* %20, i32 %21)
  %23 = call i32 @outl(i32 %19, i32 %22)
  %24 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %25 = load i32, i32* @DAC2_SIZE, align 4
  %26 = call i32 @ES_REG(%struct.ensoniq* %24, i32 %25)
  %27 = call i32 @inl(i32 %26)
  %28 = call i64 @ES_REG_FCURR_COUNTI(i32 %27)
  store i64 %28, i64* %4, align 8
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @bytes_to_frames(i32 %31, i64 %32)
  store i64 %33, i64* %4, align 8
  br label %35

34:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %35

35:                                               ; preds = %34, %17
  %36 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %37 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load i64, i64* %4, align 8
  ret i64 %39
}

declare dso_local %struct.ensoniq* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @ES_REG(%struct.ensoniq*, i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @ES_MEM_PAGEO(i32) #1

declare dso_local i64 @ES_REG_FCURR_COUNTI(i32) #1

declare dso_local i64 @bytes_to_frames(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
