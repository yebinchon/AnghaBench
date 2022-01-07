; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio.c_pcm_analog_out_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio.c_pcm_analog_out_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, i64 }
%struct.echoaudio = type { i32, i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@hw_rule_playback_channels_by_format = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@hw_rule_playback_format_by_channels = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"pcm_analog_out_open  cs=%d  oc=%d  r=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcm_analog_out_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_analog_out_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.echoaudio* %8, %struct.echoaudio** %4, align 8
  %9 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %10 = call i32 @num_analog_busses_out(%struct.echoaudio* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = call i32 @pcm_open(%struct.snd_pcm_substream* %11, i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %76

22:                                               ; preds = %1
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %27 = load i32, i32* @hw_rule_playback_channels_by_format, align 4
  %28 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %29 = call i32 @snd_pcm_hw_rule_add(i32 %25, i32 0, i32 %26, i32 %27, i32* null, i32 %28, i32 -1)
  store i32 %29, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %76

33:                                               ; preds = %22
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %38 = load i32, i32* @hw_rule_playback_format_by_channels, align 4
  %39 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %40 = call i32 @snd_pcm_hw_rule_add(i32 %36, i32 0, i32 %37, i32 %38, i32* null, i32 %39, i32 -1)
  store i32 %40, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %76

44:                                               ; preds = %33
  %45 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %46 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %45, i32 0, i32 1
  %47 = call i32 @atomic_inc(i32* %46)
  %48 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %49 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %48, i32 0, i32 1
  %50 = call i32 @atomic_read(i32* %49)
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %54 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %59 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %52, %44
  %61 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %62 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %67 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %70 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %69, i32 0, i32 1
  %71 = call i32 @atomic_read(i32* %70)
  %72 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %73 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dev_dbg(i32 %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %68, i32 %71, i32 %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %60, %42, %31, %20
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @num_analog_busses_out(%struct.echoaudio*) #1

declare dso_local i32 @pcm_open(%struct.snd_pcm_substream*, i64) #1

declare dso_local i32 @snd_pcm_hw_rule_add(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
