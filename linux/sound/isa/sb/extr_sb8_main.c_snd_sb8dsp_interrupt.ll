; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb8_main.c_snd_sb8dsp_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb8_main.c_snd_sb8dsp_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb = type { i32, i32, %struct.snd_pcm_substream*, i32, i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32 }

@SB_HW_JAZZ16 = common dso_local global i32 0, align 4
@SB_DSP_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_PCM_TRIGGER_START = common dso_local global i32 0, align 4
@SB_DSP_INPUT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sb8dsp_interrupt(%struct.snd_sb* %0) #0 {
  %2 = alloca %struct.snd_sb*, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.snd_sb* %0, %struct.snd_sb** %2, align 8
  %4 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %5 = call i32 @snd_sb_ack_8bit(%struct.snd_sb* %4)
  %6 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %7 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %57 [
    i32 129, label %9
    i32 128, label %17
    i32 131, label %33
    i32 130, label %41
  ]

9:                                                ; preds = %1
  %10 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %11 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SB_HW_JAZZ16, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %57

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %1, %16
  %18 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %19 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %18, i32 0, i32 5
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %19, align 8
  store %struct.snd_pcm_substream* %20, %struct.snd_pcm_substream** %3, align 8
  %21 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %22 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SB_DSP_OUTPUT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %28 = load i32, i32* @SNDRV_PCM_TRIGGER_START, align 4
  %29 = call i32 @snd_sb8_playback_trigger(%struct.snd_pcm_substream* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %17
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %32 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %31)
  br label %57

33:                                               ; preds = %1
  %34 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %35 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SB_HW_JAZZ16, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %57

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %1, %40
  %42 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %43 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %42, i32 0, i32 2
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %43, align 8
  store %struct.snd_pcm_substream* %44, %struct.snd_pcm_substream** %3, align 8
  %45 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %46 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SB_DSP_INPUT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %52 = load i32, i32* @SNDRV_PCM_TRIGGER_START, align 4
  %53 = call i32 @snd_sb8_capture_trigger(%struct.snd_pcm_substream* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %41
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %56 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %55)
  br label %57

57:                                               ; preds = %1, %54, %39, %30, %15
  %58 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %58
}

declare dso_local i32 @snd_sb_ack_8bit(%struct.snd_sb*) #1

declare dso_local i32 @snd_sb8_playback_trigger(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_sb8_capture_trigger(%struct.snd_pcm_substream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
