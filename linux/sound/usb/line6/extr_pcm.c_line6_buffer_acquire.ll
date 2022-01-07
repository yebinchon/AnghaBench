; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_line6_buffer_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_line6_buffer_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_line6_pcm = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.line6_pcm_stream = type { i64, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@LINE6_ISO_PACKETS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_line6_pcm*, %struct.line6_pcm_stream*, i32, i32)* @line6_buffer_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @line6_buffer_acquire(%struct.snd_line6_pcm* %0, %struct.line6_pcm_stream* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_line6_pcm*, align 8
  %7 = alloca %struct.line6_pcm_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_line6_pcm* %0, %struct.snd_line6_pcm** %6, align 8
  store %struct.line6_pcm_stream* %1, %struct.line6_pcm_stream** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %16 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  br label %22

18:                                               ; preds = %4
  %19 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %20 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %17, %14 ], [ %21, %18 ]
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %7, align 8
  %26 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %25, i32 0, i32 1
  %27 = call i32 @test_and_set_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %22
  %30 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %7, align 8
  %31 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %29
  %35 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %36 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @LINE6_ISO_PACKETS, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @array3_size(i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i64 @kmalloc(i32 %42, i32 %43)
  %45 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %7, align 8
  %46 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %7, align 8
  %48 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %34
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %56

54:                                               ; preds = %34
  br label %55

55:                                               ; preds = %54, %29, %22
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %51
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @array3_size(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
