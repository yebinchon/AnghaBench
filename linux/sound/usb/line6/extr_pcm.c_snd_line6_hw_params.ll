; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_snd_line6_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_snd_line6_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_line6_pcm = type { i32 }
%struct.line6_pcm_stream = type { i32 }

@LINE6_STREAM_PCM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_line6_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_line6_pcm*, align 8
  %7 = alloca %struct.line6_pcm_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.snd_line6_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_line6_pcm* %9, %struct.snd_line6_pcm** %6, align 8
  %10 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.line6_pcm_stream* @get_stream(%struct.snd_line6_pcm* %10, i32 %13)
  store %struct.line6_pcm_stream* %14, %struct.line6_pcm_stream** %7, align 8
  %15 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %16 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %19 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %7, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @LINE6_STREAM_PCM, align 4
  %24 = call i32 @line6_buffer_acquire(%struct.snd_line6_pcm* %18, %struct.line6_pcm_stream* %19, i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %45

28:                                               ; preds = %2
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %31 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %30)
  %32 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %29, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %37 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %7, align 8
  %38 = load i32, i32* @LINE6_STREAM_PCM, align 4
  %39 = call i32 @line6_buffer_release(%struct.snd_line6_pcm* %36, %struct.line6_pcm_stream* %37, i32 %38)
  br label %45

40:                                               ; preds = %28
  %41 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %42 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %41)
  %43 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %7, align 8
  %44 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %35, %27
  %46 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %47 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.snd_line6_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.line6_pcm_stream* @get_stream(%struct.snd_line6_pcm*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @line6_buffer_acquire(%struct.snd_line6_pcm*, %struct.line6_pcm_stream*, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @line6_buffer_release(%struct.snd_line6_pcm*, %struct.line6_pcm_stream*, i32) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
