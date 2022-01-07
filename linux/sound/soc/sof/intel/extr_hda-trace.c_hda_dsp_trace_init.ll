; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-trace.c_hda_dsp_trace_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-trace.c_hda_dsp_trace_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.sof_intel_hda_dev* }
%struct.sof_intel_hda_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"error: no available capture stream for DMA trace\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"error: hdac trace init failed: %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_dsp_trace_init(%struct.snd_sof_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_sof_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sof_intel_hda_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %9 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %11, align 8
  store %struct.sof_intel_hda_dev* %12, %struct.sof_intel_hda_dev** %6, align 8
  %13 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %14 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %15 = call %struct.TYPE_6__* @hda_dsp_stream_get(%struct.snd_sof_dev* %13, i32 %14)
  %16 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %6, align 8
  %17 = getelementptr inbounds %struct.sof_intel_hda_dev, %struct.sof_intel_hda_dev* %16, i32 0, i32 0
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %17, align 8
  %18 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %6, align 8
  %19 = getelementptr inbounds %struct.sof_intel_hda_dev, %struct.sof_intel_hda_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %2
  %23 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %24 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %57

29:                                               ; preds = %2
  %30 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %6, align 8
  %31 = getelementptr inbounds %struct.sof_intel_hda_dev, %struct.sof_intel_hda_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %38 = call i32 @hda_dsp_trace_prepare(%struct.snd_sof_dev* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %29
  %42 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %43 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i32, i8*, ...) @dev_err(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %48 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @hda_dsp_stream_put(%struct.snd_sof_dev* %47, i32 %48, i32 %50)
  %52 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %6, align 8
  %53 = getelementptr inbounds %struct.sof_intel_hda_dev, %struct.sof_intel_hda_dev* %52, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %53, align 8
  %54 = load i32*, i32** %5, align 8
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %41, %29
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %22
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_6__* @hda_dsp_stream_get(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @hda_dsp_trace_prepare(%struct.snd_sof_dev*) #1

declare dso_local i32 @hda_dsp_stream_put(%struct.snd_sof_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
