; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_main.c_snd_sb16_capture_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_main.c_snd_sb16_capture_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_sb = type { i32, i32 }

@SB_RATE_LOCK_CAPTURE = common dso_local global i32 0, align 4
@SB_MODE_CAPTURE_16 = common dso_local global i32 0, align 4
@SB_DSP_DMA16_ON = common dso_local global i32 0, align 4
@SB_DSP_DMA8_ON = common dso_local global i32 0, align 4
@SB_DSP_DMA16_OFF = common dso_local global i32 0, align 4
@SB_DSP_DMA8_OFF = common dso_local global i32 0, align 4
@SB_RATE_LOCK_PLAYBACK = common dso_local global i32 0, align 4
@SB_MODE_PLAYBACK_16 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_sb16_capture_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb16_capture_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_sb*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_sb* %8, %struct.snd_sb** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %10 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %76 [
    i32 130, label %13
    i32 131, label %13
    i32 129, label %33
    i32 128, label %33
  ]

13:                                               ; preds = %2, %2
  %14 = load i32, i32* @SB_RATE_LOCK_CAPTURE, align 4
  %15 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %16 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %20 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %21 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SB_MODE_CAPTURE_16, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  %27 = load i32, i32* @SB_DSP_DMA16_ON, align 4
  br label %30

28:                                               ; preds = %13
  %29 = load i32, i32* @SB_DSP_DMA8_ON, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = call i32 @snd_sbdsp_command(%struct.snd_sb* %19, i32 %31)
  br label %79

33:                                               ; preds = %2, %2
  %34 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %35 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %36 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SB_MODE_CAPTURE_16, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @SB_DSP_DMA16_OFF, align 4
  br label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @SB_DSP_DMA8_OFF, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = call i32 @snd_sbdsp_command(%struct.snd_sb* %34, i32 %46)
  %48 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %49 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SB_RATE_LOCK_PLAYBACK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %45
  %55 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %56 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %57 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SB_MODE_PLAYBACK_16, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @SB_DSP_DMA16_ON, align 4
  br label %66

64:                                               ; preds = %54
  %65 = load i32, i32* @SB_DSP_DMA8_ON, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = call i32 @snd_sbdsp_command(%struct.snd_sb* %55, i32 %67)
  br label %69

69:                                               ; preds = %66, %45
  %70 = load i32, i32* @SB_RATE_LOCK_CAPTURE, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %73 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %79

76:                                               ; preds = %2
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %76, %69, %30
  %80 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %81 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %80, i32 0, i32 1
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_sbdsp_command(%struct.snd_sb*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
