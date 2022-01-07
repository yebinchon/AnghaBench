; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_ensoniq_playback2_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_ensoniq_playback2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.ensoniq = type { i32, i32, i32, i32*, i64, %struct.snd_pcm_substream*, i32 }

@ES_MODE_PLAY2 = common dso_local global i32 0, align 4
@snd_ensoniq_playback2 = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@snd_es1371_hw_constraints_dac_clock = common dso_local global i32 0, align 4
@snd_es1370_hw_constraints_clock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ensoniq_playback2_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ensoniq_playback2_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.ensoniq*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.ensoniq* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.ensoniq* %6, %struct.ensoniq** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %4, align 8
  %10 = load i32, i32* @ES_MODE_PLAY2, align 4
  %11 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %12 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %17 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %16, i32 0, i32 5
  store %struct.snd_pcm_substream* %15, %struct.snd_pcm_substream** %17, align 8
  %18 = load i32, i32* @snd_ensoniq_playback2, align 4
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %22 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %21)
  %23 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %24 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %27 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %1
  %31 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %32 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %37 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %40 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %35, %30, %1
  %42 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %43 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock_irq(i32* %43)
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %46 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %47 = call i32 @snd_pcm_hw_constraint_ratdens(%struct.snd_pcm_runtime* %45, i32 0, i32 %46, i32* @snd_es1371_hw_constraints_dac_clock)
  ret i32 0
}

declare dso_local %struct.ensoniq* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_ratdens(%struct.snd_pcm_runtime*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
