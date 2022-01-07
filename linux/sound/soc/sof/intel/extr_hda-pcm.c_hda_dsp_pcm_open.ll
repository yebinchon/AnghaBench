; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-pcm.c_hda_dsp_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-pcm.c_hda_dsp_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }
%struct.snd_pcm_substream = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.hdac_ext_stream = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"error: no stream available\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_dsp_pcm_open(%struct.snd_sof_dev* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_sof_dev*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.hdac_ext_stream*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.hdac_ext_stream* @hda_dsp_stream_get(%struct.snd_sof_dev* %11, i32 %12)
  store %struct.hdac_ext_stream* %13, %struct.hdac_ext_stream** %6, align 8
  %14 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %6, align 8
  %15 = icmp ne %struct.hdac_ext_stream* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %18 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %30

23:                                               ; preds = %2
  %24 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %6, align 8
  %25 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %24, i32 0, i32 0
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32* %25, i32** %29, align 8
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %23, %16
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.hdac_ext_stream* @hda_dsp_stream_get(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
