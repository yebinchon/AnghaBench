; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs5535audio/extr_cs5535audio_pcm.c_snd_cs5535audio_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs5535audio/extr_cs5535audio_pcm.c_snd_cs5535audio_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.cs5535audio_dma* }
%struct.cs5535audio_dma = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.cs5535audio*)* }
%struct.cs5535audio = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"curdma=%x < %x bufaddr.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"diff=%x >= %x buf_bytes.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cs5535audio_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs5535audio_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.cs5535audio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cs5535audio_dma*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.cs5535audio* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.cs5535audio* %8, %struct.cs5535audio** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %12, align 8
  store %struct.cs5535audio_dma* %13, %struct.cs5535audio_dma** %6, align 8
  %14 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %6, align 8
  %15 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64 (%struct.cs5535audio*)*, i64 (%struct.cs5535audio*)** %17, align 8
  %19 = load %struct.cs5535audio*, %struct.cs5535audio** %4, align 8
  %20 = call i64 %18(%struct.cs5535audio* %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %6, align 8
  %23 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %1
  %27 = load %struct.cs5535audio*, %struct.cs5535audio** %4, align 8
  %28 = getelementptr inbounds %struct.cs5535audio, %struct.cs5535audio* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %6, align 8
  %34 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %35)
  store i32 0, i32* %2, align 4
  br label %65

37:                                               ; preds = %1
  %38 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %6, align 8
  %39 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = sub nsw i64 %41, %40
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %6, align 8
  %45 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %43, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %37
  %49 = load %struct.cs5535audio*, %struct.cs5535audio** %4, align 8
  %50 = getelementptr inbounds %struct.cs5535audio, %struct.cs5535audio* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %6, align 8
  %56 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %54, i64 %57)
  store i32 0, i32* %2, align 4
  br label %65

59:                                               ; preds = %37
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @bytes_to_frames(%struct.TYPE_6__* %62, i64 %63)
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %59, %48, %26
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.cs5535audio* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64) #1

declare dso_local i32 @bytes_to_frames(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
