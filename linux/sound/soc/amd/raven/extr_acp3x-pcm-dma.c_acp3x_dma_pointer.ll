; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_acp3x_dma_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_acp3x_dma_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, %struct.i2s_stream_instance* }
%struct.i2s_stream_instance = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @acp3x_dma_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acp3x_dma_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.i2s_stream_instance*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %10, align 8
  store %struct.i2s_stream_instance* %11, %struct.i2s_stream_instance** %6, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @frames_to_bytes(%struct.TYPE_3__* %14, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %6, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @acp_get_byte_count(%struct.i2s_stream_instance* %21, i32 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %6, align 8
  %28 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %6, align 8
  %33 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = sub nsw i64 %35, %34
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %31, %1
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @do_div(i64 %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @bytes_to_frames(%struct.TYPE_3__* %43, i32 %44)
  ret i32 %45
}

declare dso_local i32 @frames_to_bytes(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @acp_get_byte_count(%struct.i2s_stream_instance*, i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @bytes_to_frames(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
