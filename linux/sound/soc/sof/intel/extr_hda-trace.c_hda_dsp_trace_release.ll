; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-trace.c_hda_dsp_trace_release.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-trace.c_hda_dsp_trace_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sof_intel_hda_dev* }
%struct.sof_intel_hda_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.hdac_stream }
%struct.hdac_stream = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"DMA trace stream is not opened!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_dsp_trace_release(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca %struct.sof_intel_hda_dev*, align 8
  %5 = alloca %struct.hdac_stream*, align 8
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  %6 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %7 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %9, align 8
  store %struct.sof_intel_hda_dev* %10, %struct.sof_intel_hda_dev** %4, align 8
  %11 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %4, align 8
  %12 = getelementptr inbounds %struct.sof_intel_hda_dev, %struct.sof_intel_hda_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %4, align 8
  %17 = getelementptr inbounds %struct.sof_intel_hda_dev, %struct.sof_intel_hda_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.hdac_stream* %19, %struct.hdac_stream** %5, align 8
  %20 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %21 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %22 = load %struct.hdac_stream*, %struct.hdac_stream** %5, align 8
  %23 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @hda_dsp_stream_put(%struct.snd_sof_dev* %20, i32 %21, i32 %24)
  %26 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %4, align 8
  %27 = getelementptr inbounds %struct.sof_intel_hda_dev, %struct.sof_intel_hda_dev* %26, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %27, align 8
  store i32 0, i32* %2, align 4
  br label %35

28:                                               ; preds = %1
  %29 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %30 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %28, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @hda_dsp_stream_put(%struct.snd_sof_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
