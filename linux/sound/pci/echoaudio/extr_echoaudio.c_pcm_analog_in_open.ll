; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio.c_pcm_analog_in_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio.c_pcm_analog_in_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, i64 }
%struct.echoaudio = type { i32, i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@hw_rule_capture_channels_by_format = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@hw_rule_capture_format_by_channels = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"pcm_analog_in_open  cs=%d  oc=%d  r=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcm_analog_in_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_analog_in_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.echoaudio* %7, %struct.echoaudio** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %10 = call i64 @num_analog_busses_in(%struct.echoaudio* %9)
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %10, %13
  %15 = call i32 @pcm_open(%struct.snd_pcm_substream* %8, i64 %14)
  store i32 %15, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %73

19:                                               ; preds = %1
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %24 = load i32, i32* @hw_rule_capture_channels_by_format, align 4
  %25 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %26 = call i32 @snd_pcm_hw_rule_add(i32 %22, i32 0, i32 %23, i32 %24, i32* null, i32 %25, i32 -1)
  store i32 %26, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %73

30:                                               ; preds = %19
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %35 = load i32, i32* @hw_rule_capture_format_by_channels, align 4
  %36 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %37 = call i32 @snd_pcm_hw_rule_add(i32 %33, i32 0, i32 %34, i32 %35, i32* null, i32 %36, i32 -1)
  store i32 %37, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %73

41:                                               ; preds = %30
  %42 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %43 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %42, i32 0, i32 1
  %44 = call i32 @atomic_inc(i32* %43)
  %45 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %46 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %45, i32 0, i32 1
  %47 = call i32 @atomic_read(i32* %46)
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %51 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %56 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %49, %41
  %58 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %59 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %64 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %67 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %66, i32 0, i32 1
  %68 = call i32 @atomic_read(i32* %67)
  %69 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %70 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_dbg(i32 %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %65, i32 %68, i32 %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %57, %39, %28, %17
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @pcm_open(%struct.snd_pcm_substream*, i64) #1

declare dso_local i64 @num_analog_busses_in(%struct.echoaudio*) #1

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
