; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_pcm_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_pcm_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.azx_pcm = type { i32 }
%struct.azx_dev = type { i32 }
%struct.hda_pcm_stream = type { i32 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @azx_pcm_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_pcm_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.azx_pcm*, align 8
  %4 = alloca %struct.azx_dev*, align 8
  %5 = alloca %struct.hda_pcm_stream*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.azx_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.azx_pcm* %8, %struct.azx_pcm** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = call %struct.azx_dev* @get_azx_dev(%struct.snd_pcm_substream* %9)
  store %struct.azx_dev* %10, %struct.azx_dev** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = call %struct.hda_pcm_stream* @to_hda_pcm_stream(%struct.snd_pcm_substream* %11)
  store %struct.hda_pcm_stream* %12, %struct.hda_pcm_stream** %5, align 8
  %13 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %14 = call i32 @dsp_lock(%struct.azx_dev* %13)
  %15 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %16 = call i32 @dsp_is_locked(%struct.azx_dev* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %20 = call %struct.TYPE_3__* @azx_stream(%struct.azx_dev* %19)
  %21 = call i32 @snd_hdac_stream_cleanup(%struct.TYPE_3__* %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.azx_pcm*, %struct.azx_pcm** %3, align 8
  %24 = getelementptr inbounds %struct.azx_pcm, %struct.azx_pcm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %28 = call i32 @snd_hda_codec_cleanup(i32 %25, %struct.hda_pcm_stream* %26, %struct.snd_pcm_substream* %27)
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %30 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %32 = call %struct.TYPE_3__* @azx_stream(%struct.azx_dev* %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %35 = call i32 @dsp_unlock(%struct.azx_dev* %34)
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local %struct.azx_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.azx_dev* @get_azx_dev(%struct.snd_pcm_substream*) #1

declare dso_local %struct.hda_pcm_stream* @to_hda_pcm_stream(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dsp_lock(%struct.azx_dev*) #1

declare dso_local i32 @dsp_is_locked(%struct.azx_dev*) #1

declare dso_local i32 @snd_hdac_stream_cleanup(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @azx_stream(%struct.azx_dev*) #1

declare dso_local i32 @snd_hda_codec_cleanup(i32, %struct.hda_pcm_stream*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dsp_unlock(%struct.azx_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
