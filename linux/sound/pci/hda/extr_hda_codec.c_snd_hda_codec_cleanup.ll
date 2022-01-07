; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.hda_pcm_stream = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.hda_pcm_stream.0*, %struct.hda_codec.1*, %struct.snd_pcm_substream*)* }
%struct.hda_pcm_stream.0 = type opaque
%struct.hda_codec.1 = type opaque
%struct.snd_pcm_substream = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_codec_cleanup(%struct.hda_codec* %0, %struct.hda_pcm_stream* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_pcm_stream*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_pcm_stream* %1, %struct.hda_pcm_stream** %5, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %6, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %13 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (%struct.hda_pcm_stream.0*, %struct.hda_codec.1*, %struct.snd_pcm_substream*)*, i32 (%struct.hda_pcm_stream.0*, %struct.hda_codec.1*, %struct.snd_pcm_substream*)** %14, align 8
  %16 = icmp ne i32 (%struct.hda_pcm_stream.0*, %struct.hda_codec.1*, %struct.snd_pcm_substream*)* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %19 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.hda_pcm_stream.0*, %struct.hda_codec.1*, %struct.snd_pcm_substream*)*, i32 (%struct.hda_pcm_stream.0*, %struct.hda_codec.1*, %struct.snd_pcm_substream*)** %20, align 8
  %22 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %23 = bitcast %struct.hda_pcm_stream* %22 to %struct.hda_pcm_stream.0*
  %24 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %25 = bitcast %struct.hda_codec* %24 to %struct.hda_codec.1*
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %27 = call i32 %21(%struct.hda_pcm_stream.0* %23, %struct.hda_codec.1* %25, %struct.snd_pcm_substream* %26)
  br label %28

28:                                               ; preds = %17, %3
  %29 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %30 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
