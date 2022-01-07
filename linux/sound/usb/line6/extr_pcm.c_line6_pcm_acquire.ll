; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_line6_pcm_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_line6_pcm_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_line6_pcm = type { i32 }
%struct.line6_pcm_stream = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line6_pcm_acquire(%struct.snd_line6_pcm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_line6_pcm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.line6_pcm_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_line6_pcm* %0, %struct.snd_line6_pcm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %11 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %38, %3
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.line6_pcm_stream* @get_stream(%struct.snd_line6_pcm* %17, i32 %18)
  store %struct.line6_pcm_stream* %19, %struct.line6_pcm_stream** %7, align 8
  %20 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %21 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @line6_buffer_acquire(%struct.snd_line6_pcm* %20, %struct.line6_pcm_stream* %21, i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %62

28:                                               ; preds = %16
  %29 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %7, align 8
  %30 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %35 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %7, align 8
  %36 = call i32 @line6_wait_clear_audio_urbs(%struct.snd_line6_pcm* %34, %struct.line6_pcm_stream* %35)
  br label %37

37:                                               ; preds = %33, %28
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %13

41:                                               ; preds = %13
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %57, %44
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @line6_stream_start(%struct.snd_line6_pcm* %49, i32 %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %62

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %45

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60, %41
  br label %62

62:                                               ; preds = %61, %55, %27
  %63 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %64 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @line6_pcm_release(%struct.snd_line6_pcm* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %62
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.line6_pcm_stream* @get_stream(%struct.snd_line6_pcm*, i32) #1

declare dso_local i32 @line6_buffer_acquire(%struct.snd_line6_pcm*, %struct.line6_pcm_stream*, i32, i32) #1

declare dso_local i32 @line6_wait_clear_audio_urbs(%struct.snd_line6_pcm*, %struct.line6_pcm_stream*) #1

declare dso_local i32 @line6_stream_start(%struct.snd_line6_pcm*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @line6_pcm_release(%struct.snd_line6_pcm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
