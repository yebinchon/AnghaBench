; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_line6_buffer_release.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_line6_buffer_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_line6_pcm = type { i32 }
%struct.line6_pcm_stream = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_line6_pcm*, %struct.line6_pcm_stream*, i32)* @line6_buffer_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @line6_buffer_release(%struct.snd_line6_pcm* %0, %struct.line6_pcm_stream* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_line6_pcm*, align 8
  %5 = alloca %struct.line6_pcm_stream*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_line6_pcm* %0, %struct.snd_line6_pcm** %4, align 8
  store %struct.line6_pcm_stream* %1, %struct.line6_pcm_stream** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %5, align 8
  %9 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %8, i32 0, i32 1
  %10 = call i32 @clear_bit(i32 %7, i32* %9)
  %11 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %5, align 8
  %12 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %3
  %16 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %17 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %5, align 8
  %18 = call i32 @line6_wait_clear_audio_urbs(%struct.snd_line6_pcm* %16, %struct.line6_pcm_stream* %17)
  %19 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %5, align 8
  %20 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @kfree(i32* %21)
  %23 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %5, align 8
  %24 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %15, %3
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @line6_wait_clear_audio_urbs(%struct.snd_line6_pcm*, %struct.line6_pcm_stream*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
