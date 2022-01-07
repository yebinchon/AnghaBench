; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_line6_pcm_release.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_line6_pcm_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_line6_pcm = type { i32 }
%struct.line6_pcm_stream = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @line6_pcm_release(%struct.snd_line6_pcm* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_line6_pcm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.line6_pcm_stream*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_line6_pcm* %0, %struct.snd_line6_pcm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %8 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %18, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @line6_stream_stop(%struct.snd_line6_pcm* %14, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %10

21:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %33, %21
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.line6_pcm_stream* @get_stream(%struct.snd_line6_pcm* %26, i32 %27)
  store %struct.line6_pcm_stream* %28, %struct.line6_pcm_stream** %5, align 8
  %29 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %30 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @line6_buffer_release(%struct.snd_line6_pcm* %29, %struct.line6_pcm_stream* %30, i32 %31)
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %22

36:                                               ; preds = %22
  %37 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %38 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @line6_stream_stop(%struct.snd_line6_pcm*, i32, i32) #1

declare dso_local %struct.line6_pcm_stream* @get_stream(%struct.snd_line6_pcm*, i32) #1

declare dso_local i32 @line6_buffer_release(%struct.snd_line6_pcm*, %struct.line6_pcm_stream*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
