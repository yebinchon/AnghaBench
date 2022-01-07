; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-pcm.c_hda_dsp_pcm_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-pcm.c_hda_dsp_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }
%struct.snd_pcm_substream = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.hdac_stream* }
%struct.hdac_stream = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"stream %s not opened!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_dsp_pcm_close(%struct.snd_sof_dev* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_sof_dev*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.hdac_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.hdac_stream*, %struct.hdac_stream** %12, align 8
  store %struct.hdac_stream* %13, %struct.hdac_stream** %6, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.hdac_stream*, %struct.hdac_stream** %6, align 8
  %20 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @hda_dsp_stream_put(%struct.snd_sof_dev* %17, i32 %18, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %27 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %40

35:                                               ; preds = %2
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.hdac_stream* null, %struct.hdac_stream** %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %25
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @hda_dsp_stream_put(%struct.snd_sof_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
