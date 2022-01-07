; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_dma.c_au1000_release_dma_link.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_dma.c_au1000_release_dma_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_stream = type { %struct.pcm_period*, i64, i64 }
%struct.pcm_period = type { %struct.pcm_period* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio_stream*)* @au1000_release_dma_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1000_release_dma_link(%struct.audio_stream* %0) #0 {
  %2 = alloca %struct.audio_stream*, align 8
  %3 = alloca %struct.pcm_period*, align 8
  %4 = alloca %struct.pcm_period*, align 8
  store %struct.audio_stream* %0, %struct.audio_stream** %2, align 8
  %5 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %6 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %8 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %10 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %9, i32 0, i32 0
  %11 = load %struct.pcm_period*, %struct.pcm_period** %10, align 8
  store %struct.pcm_period* %11, %struct.pcm_period** %3, align 8
  %12 = load %struct.pcm_period*, %struct.pcm_period** %3, align 8
  %13 = icmp ne %struct.pcm_period* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %32

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %23, %15
  %17 = load %struct.pcm_period*, %struct.pcm_period** %3, align 8
  %18 = getelementptr inbounds %struct.pcm_period, %struct.pcm_period* %17, i32 0, i32 0
  %19 = load %struct.pcm_period*, %struct.pcm_period** %18, align 8
  store %struct.pcm_period* %19, %struct.pcm_period** %4, align 8
  %20 = load %struct.pcm_period*, %struct.pcm_period** %3, align 8
  %21 = call i32 @kfree(%struct.pcm_period* %20)
  %22 = load %struct.pcm_period*, %struct.pcm_period** %4, align 8
  store %struct.pcm_period* %22, %struct.pcm_period** %3, align 8
  br label %23

23:                                               ; preds = %16
  %24 = load %struct.pcm_period*, %struct.pcm_period** %3, align 8
  %25 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %26 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %25, i32 0, i32 0
  %27 = load %struct.pcm_period*, %struct.pcm_period** %26, align 8
  %28 = icmp ne %struct.pcm_period* %24, %27
  br i1 %28, label %16, label %29

29:                                               ; preds = %23
  %30 = load %struct.audio_stream*, %struct.audio_stream** %2, align 8
  %31 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %30, i32 0, i32 0
  store %struct.pcm_period* null, %struct.pcm_period** %31, align 8
  br label %32

32:                                               ; preds = %29, %14
  ret void
}

declare dso_local i32 @kfree(%struct.pcm_period*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
