; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_line6_stream_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_line6_stream_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_line6_pcm = type { i64, i32* }
%struct.line6_pcm_stream = type { i32, i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_line6_pcm*, i32, i32)* @line6_stream_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @line6_stream_stop(%struct.snd_line6_pcm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_line6_pcm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.line6_pcm_stream*, align 8
  store %struct.snd_line6_pcm* %0, %struct.snd_line6_pcm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.line6_pcm_stream* @get_stream(%struct.snd_line6_pcm* %9, i32 %10)
  store %struct.line6_pcm_stream* %11, %struct.line6_pcm_stream** %8, align 8
  %12 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %8, align 8
  %13 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %12, i32 0, i32 0
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %8, align 8
  %18 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %17, i32 0, i32 1
  %19 = call i32 @clear_bit(i32 %16, i32* %18)
  %20 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %8, align 8
  %21 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %3
  %25 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %8, align 8
  %26 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %25, i32 0, i32 0
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %30 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %8, align 8
  %31 = call i32 @line6_unlink_audio_urbs(%struct.snd_line6_pcm* %29, %struct.line6_pcm_stream* %30)
  %32 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %8, align 8
  %33 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %32, i32 0, i32 0
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %24
  %40 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %41 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %43 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %39, %24
  br label %45

45:                                               ; preds = %44, %3
  %46 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %8, align 8
  %47 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %46, i32 0, i32 0
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  ret void
}

declare dso_local %struct.line6_pcm_stream* @get_stream(%struct.snd_line6_pcm*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @line6_unlink_audio_urbs(%struct.snd_line6_pcm*, %struct.line6_pcm_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
