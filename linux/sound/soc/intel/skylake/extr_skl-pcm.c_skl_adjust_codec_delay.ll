; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_adjust_codec_delay.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_adjust_codec_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*, i64)* @skl_adjust_codec_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @skl_adjust_codec_delay(%struct.snd_pcm_substream* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = call %struct.snd_soc_pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_soc_pcm_runtime* %11, %struct.snd_soc_pcm_runtime** %6, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %13, align 8
  store %struct.snd_soc_dai* %14, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)*, i64 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)** %20, align 8
  %22 = icmp ne i64 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* %5, align 8
  store i64 %24, i64* %3, align 8
  br label %64

25:                                               ; preds = %2
  %26 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)*, i64 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)** %31, align 8
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %34 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %35 = call i64 %32(%struct.snd_pcm_substream* %33, %struct.snd_soc_dai* %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = mul nsw i64 %36, 1000000000
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @div_u64(i64 %37, i32 %42)
  store i64 %43, i64* %9, align 8
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %25
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add nsw i64 %50, %51
  store i64 %52, i64* %3, align 8
  br label %64

53:                                               ; preds = %25
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %9, align 8
  %60 = sub nsw i64 %58, %59
  br label %62

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %57
  %63 = phi i64 [ %60, %57 ], [ 0, %61 ]
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %62, %49, %23
  %65 = load i64, i64* %3, align 8
  ret i64 %65
}

declare dso_local %struct.snd_soc_pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @div_u64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
