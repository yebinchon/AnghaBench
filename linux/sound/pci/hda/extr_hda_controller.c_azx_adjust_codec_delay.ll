; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_adjust_codec_delay.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_adjust_codec_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.azx_pcm = type { i32 }
%struct.hda_pcm_stream = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.hda_pcm_stream.0*, i32, %struct.snd_pcm_substream*)* }
%struct.hda_pcm_stream.0 = type opaque

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*, i64)* @azx_adjust_codec_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @azx_adjust_codec_delay(%struct.snd_pcm_substream* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.azx_pcm*, align 8
  %7 = alloca %struct.hda_pcm_stream*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = call %struct.azx_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.azx_pcm* %11, %struct.azx_pcm** %6, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = call %struct.hda_pcm_stream* @to_hda_pcm_stream(%struct.snd_pcm_substream* %12)
  store %struct.hda_pcm_stream* %13, %struct.hda_pcm_stream** %7, align 8
  %14 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %15 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64 (%struct.hda_pcm_stream.0*, i32, %struct.snd_pcm_substream*)*, i64 (%struct.hda_pcm_stream.0*, i32, %struct.snd_pcm_substream*)** %16, align 8
  %18 = icmp ne i64 (%struct.hda_pcm_stream.0*, i32, %struct.snd_pcm_substream*)* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  store i64 %20, i64* %3, align 8
  br label %61

21:                                               ; preds = %2
  %22 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %23 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64 (%struct.hda_pcm_stream.0*, i32, %struct.snd_pcm_substream*)*, i64 (%struct.hda_pcm_stream.0*, i32, %struct.snd_pcm_substream*)** %24, align 8
  %26 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %27 = bitcast %struct.hda_pcm_stream* %26 to %struct.hda_pcm_stream.0*
  %28 = load %struct.azx_pcm*, %struct.azx_pcm** %6, align 8
  %29 = getelementptr inbounds %struct.azx_pcm, %struct.azx_pcm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %32 = call i64 %25(%struct.hda_pcm_stream.0* %27, i32 %30, %struct.snd_pcm_substream* %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = mul nsw i64 %33, 1000000000
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @div_u64(i64 %34, i32 %39)
  store i64 %40, i64* %9, align 8
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %21
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %9, align 8
  %49 = add nsw i64 %47, %48
  store i64 %49, i64* %3, align 8
  br label %61

50:                                               ; preds = %21
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %9, align 8
  %57 = sub nsw i64 %55, %56
  br label %59

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %54
  %60 = phi i64 [ %57, %54 ], [ 0, %58 ]
  store i64 %60, i64* %3, align 8
  br label %61

61:                                               ; preds = %59, %46, %19
  %62 = load i64, i64* %3, align 8
  ret i64 %62
}

declare dso_local %struct.azx_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.hda_pcm_stream* @to_hda_pcm_stream(%struct.snd_pcm_substream*) #1

declare dso_local i64 @div_u64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
