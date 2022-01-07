; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_capture_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_capture_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_cs4231 = type { i32*, %struct.cs4231_dma_control }
%struct.cs4231_dma_control = type { i64 (%struct.cs4231_dma_control*)* }

@CS4231_IFACE_CTRL = common dso_local global i64 0, align 8
@CS4231_RECORD_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cs4231_capture_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs4231_capture_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_cs4231*, align 8
  %5 = alloca %struct.cs4231_dma_control*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_cs4231* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_cs4231* %8, %struct.snd_cs4231** %4, align 8
  %9 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %10 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %9, i32 0, i32 1
  store %struct.cs4231_dma_control* %10, %struct.cs4231_dma_control** %5, align 8
  %11 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %12 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CS4231_RECORD_ENABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

21:                                               ; preds = %1
  %22 = load %struct.cs4231_dma_control*, %struct.cs4231_dma_control** %5, align 8
  %23 = getelementptr inbounds %struct.cs4231_dma_control, %struct.cs4231_dma_control* %22, i32 0, i32 0
  %24 = load i64 (%struct.cs4231_dma_control*)*, i64 (%struct.cs4231_dma_control*)** %23, align 8
  %25 = load %struct.cs4231_dma_control*, %struct.cs4231_dma_control** %5, align 8
  %26 = call i64 %24(%struct.cs4231_dma_control* %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = sub i64 %35, %34
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %29, %21
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @bytes_to_frames(%struct.TYPE_2__* %40, i64 %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %37, %20
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.snd_cs4231* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @bytes_to_frames(%struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
