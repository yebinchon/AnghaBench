; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.snd_azf3328_codec_data* }
%struct.snd_azf3328_codec_data = type { i32, i64 }

@IDX_IO_CODEC_DMA_CURRPOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%08li %s @ 0x%8lx, frames %8ld\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@IDX_IO_CODEC_DMA_START_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_azf3328_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_azf3328_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_azf3328_codec_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %9, align 8
  store %struct.snd_azf3328_codec_data* %10, %struct.snd_azf3328_codec_data** %3, align 8
  %11 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %3, align 8
  %12 = load i32, i32* @IDX_IO_CODEC_DMA_CURRPOS, align 4
  %13 = call i64 @snd_azf3328_codec_inl(%struct.snd_azf3328_codec_data* %11, i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %3, align 8
  %15 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = sub i64 %17, %16
  store i64 %18, i64* %4, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @bytes_to_frames(%struct.TYPE_6__* %21, i64 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @jiffies, align 4
  %32 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %3, align 8
  %33 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i64 %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @snd_azf3328_codec_inl(%struct.snd_azf3328_codec_data*, i32) #1

declare dso_local i32 @bytes_to_frames(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
