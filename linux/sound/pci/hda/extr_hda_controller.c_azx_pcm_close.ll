; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_pcm_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.azx_pcm = type { i32, i32, %struct.azx* }
%struct.azx = type { i32 }
%struct.hda_pcm_stream = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.hda_pcm_stream.0*, i32, %struct.snd_pcm_substream*)* }
%struct.hda_pcm_stream.0 = type opaque
%struct.azx_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @azx_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_pcm_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.azx_pcm*, align 8
  %4 = alloca %struct.hda_pcm_stream*, align 8
  %5 = alloca %struct.azx*, align 8
  %6 = alloca %struct.azx_dev*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.azx_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.azx_pcm* %8, %struct.azx_pcm** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = call %struct.hda_pcm_stream* @to_hda_pcm_stream(%struct.snd_pcm_substream* %9)
  store %struct.hda_pcm_stream* %10, %struct.hda_pcm_stream** %4, align 8
  %11 = load %struct.azx_pcm*, %struct.azx_pcm** %3, align 8
  %12 = getelementptr inbounds %struct.azx_pcm, %struct.azx_pcm* %11, i32 0, i32 2
  %13 = load %struct.azx*, %struct.azx** %12, align 8
  store %struct.azx* %13, %struct.azx** %5, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %15 = call %struct.azx_dev* @get_azx_dev(%struct.snd_pcm_substream* %14)
  store %struct.azx_dev* %15, %struct.azx_dev** %6, align 8
  %16 = load %struct.azx*, %struct.azx** %5, align 8
  %17 = load %struct.azx_dev*, %struct.azx_dev** %6, align 8
  %18 = call i32 @trace_azx_pcm_close(%struct.azx* %16, %struct.azx_dev* %17)
  %19 = load %struct.azx*, %struct.azx** %5, align 8
  %20 = getelementptr inbounds %struct.azx, %struct.azx* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.azx_dev*, %struct.azx_dev** %6, align 8
  %23 = call i32 @azx_release_device(%struct.azx_dev* %22)
  %24 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %4, align 8
  %25 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.hda_pcm_stream.0*, i32, %struct.snd_pcm_substream*)*, i32 (%struct.hda_pcm_stream.0*, i32, %struct.snd_pcm_substream*)** %26, align 8
  %28 = icmp ne i32 (%struct.hda_pcm_stream.0*, i32, %struct.snd_pcm_substream*)* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %1
  %30 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %4, align 8
  %31 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.hda_pcm_stream.0*, i32, %struct.snd_pcm_substream*)*, i32 (%struct.hda_pcm_stream.0*, i32, %struct.snd_pcm_substream*)** %32, align 8
  %34 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %4, align 8
  %35 = bitcast %struct.hda_pcm_stream* %34 to %struct.hda_pcm_stream.0*
  %36 = load %struct.azx_pcm*, %struct.azx_pcm** %3, align 8
  %37 = getelementptr inbounds %struct.azx_pcm, %struct.azx_pcm* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %40 = call i32 %33(%struct.hda_pcm_stream.0* %35, i32 %38, %struct.snd_pcm_substream* %39)
  br label %41

41:                                               ; preds = %29, %1
  %42 = load %struct.azx_pcm*, %struct.azx_pcm** %3, align 8
  %43 = getelementptr inbounds %struct.azx_pcm, %struct.azx_pcm* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @snd_hda_power_down(i32 %44)
  %46 = load %struct.azx*, %struct.azx** %5, align 8
  %47 = getelementptr inbounds %struct.azx, %struct.azx* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.azx_pcm*, %struct.azx_pcm** %3, align 8
  %50 = getelementptr inbounds %struct.azx_pcm, %struct.azx_pcm* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @snd_hda_codec_pcm_put(i32 %51)
  ret i32 0
}

declare dso_local %struct.azx_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.hda_pcm_stream* @to_hda_pcm_stream(%struct.snd_pcm_substream*) #1

declare dso_local %struct.azx_dev* @get_azx_dev(%struct.snd_pcm_substream*) #1

declare dso_local i32 @trace_azx_pcm_close(%struct.azx*, %struct.azx_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @azx_release_device(%struct.azx_dev*) #1

declare dso_local i32 @snd_hda_power_down(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_hda_codec_pcm_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
