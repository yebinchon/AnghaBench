; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_snd_line6_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_snd_line6_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_line6_pcm = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.line6_pcm_stream = type { i32 }

@LINE6_FLAG_PREPARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_line6_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_line6_pcm*, align 8
  %4 = alloca %struct.line6_pcm_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.snd_line6_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.snd_line6_pcm* %6, %struct.snd_line6_pcm** %3, align 8
  %7 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.line6_pcm_stream* @get_stream(%struct.snd_line6_pcm* %7, i32 %10)
  store %struct.line6_pcm_stream* %11, %struct.line6_pcm_stream** %4, align 8
  %12 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %13 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %4, align 8
  %16 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %21 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %4, align 8
  %22 = call i32 @line6_wait_clear_audio_urbs(%struct.snd_line6_pcm* %20, %struct.line6_pcm_stream* %21)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load i32, i32* @LINE6_FLAG_PREPARED, align 4
  %25 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %26 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %25, i32 0, i32 3
  %27 = call i32 @test_and_set_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %23
  %30 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %31 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %34 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %37 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %40 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %43 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %46 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %49 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %29, %23
  %52 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %53 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  ret i32 0
}

declare dso_local %struct.snd_line6_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.line6_pcm_stream* @get_stream(%struct.snd_line6_pcm*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @line6_wait_clear_audio_urbs(%struct.snd_line6_pcm*, %struct.line6_pcm_stream*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
