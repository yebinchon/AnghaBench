; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio.c_pcm_digital_in_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio.c_pcm_digital_in_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, i32 }
%struct.echoaudio = type { i64, i32, i64, i64, i32 }

@DIGITAL_MODE_ADAT = common dso_local global i64 0, align 8
@ECHOCARD_HAS_ADAT = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@hw_rule_capture_channels_by_format = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@hw_rule_capture_format_by_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcm_digital_in_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_digital_in_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.echoaudio* %7, %struct.echoaudio** %3, align 8
  %8 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %9 = call i32 @num_digital_busses_in(%struct.echoaudio* %8)
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %9, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %15 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %18 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DIGITAL_MODE_ADAT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @pcm_open(%struct.snd_pcm_substream* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %32

26:                                               ; preds = %1
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @ECHOCARD_HAS_ADAT, align 4
  %30 = sub nsw i32 %28, %29
  %31 = call i32 @pcm_open(%struct.snd_pcm_substream* %27, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %26, %22
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %73

36:                                               ; preds = %32
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %41 = load i32, i32* @hw_rule_capture_channels_by_format, align 4
  %42 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %43 = call i32 @snd_pcm_hw_rule_add(i32 %39, i32 0, i32 %40, i32 %41, i32* null, i32 %42, i32 -1)
  store i32 %43, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %73

46:                                               ; preds = %36
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %51 = load i32, i32* @hw_rule_capture_format_by_channels, align 4
  %52 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %53 = call i32 @snd_pcm_hw_rule_add(i32 %49, i32 0, i32 %50, i32 %51, i32* null, i32 %52, i32 -1)
  store i32 %53, i32* %4, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %73

56:                                               ; preds = %46
  %57 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %58 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %57, i32 0, i32 4
  %59 = call i32 @atomic_inc(i32* %58)
  %60 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %61 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %60, i32 0, i32 4
  %62 = call i32 @atomic_read(i32* %61)
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %66 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %71 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %64, %56
  br label %73

73:                                               ; preds = %72, %55, %45, %35
  %74 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %75 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @num_digital_busses_in(%struct.echoaudio*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pcm_open(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_pcm_hw_rule_add(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
