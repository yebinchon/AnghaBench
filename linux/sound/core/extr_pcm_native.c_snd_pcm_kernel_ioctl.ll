; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_kernel_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_kernel_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %58 [
    i32 132, label %13
    i32 131, label %34
    i32 128, label %38
    i32 130, label %42
    i32 129, label %45
    i32 134, label %48
    i32 133, label %51
    i32 135, label %54
  ]

13:                                               ; preds = %3
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %61

22:                                               ; preds = %13
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @snd_pcm_forward(%struct.snd_pcm_substream* %23, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  br label %32

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  store i32 %33, i32* %4, align 4
  br label %61

34:                                               ; preds = %3
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @snd_pcm_hw_params(%struct.snd_pcm_substream* %35, i8* %36)
  store i32 %37, i32* %4, align 4
  br label %61

38:                                               ; preds = %3
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @snd_pcm_sw_params(%struct.snd_pcm_substream* %39, i8* %40)
  store i32 %41, i32* %4, align 4
  br label %61

42:                                               ; preds = %3
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %44 = call i32 @snd_pcm_prepare(%struct.snd_pcm_substream* %43, i32* null)
  store i32 %44, i32* %4, align 4
  br label %61

45:                                               ; preds = %3
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %47 = call i32 @snd_pcm_start_lock_irq(%struct.snd_pcm_substream* %46)
  store i32 %47, i32* %4, align 4
  br label %61

48:                                               ; preds = %3
  %49 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %50 = call i32 @snd_pcm_drain(%struct.snd_pcm_substream* %49, i32* null)
  store i32 %50, i32* %4, align 4
  br label %61

51:                                               ; preds = %3
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %53 = call i32 @snd_pcm_drop(%struct.snd_pcm_substream* %52)
  store i32 %53, i32* %4, align 4
  br label %61

54:                                               ; preds = %3
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @snd_pcm_delay(%struct.snd_pcm_substream* %55, i32* %56)
  store i32 %57, i32* %4, align 4
  br label %61

58:                                               ; preds = %3
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %54, %51, %48, %45, %42, %38, %34, %32, %19
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @snd_pcm_forward(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_pcm_hw_params(%struct.snd_pcm_substream*, i8*) #1

declare dso_local i32 @snd_pcm_sw_params(%struct.snd_pcm_substream*, i8*) #1

declare dso_local i32 @snd_pcm_prepare(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @snd_pcm_start_lock_irq(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_drain(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @snd_pcm_drop(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_delay(%struct.snd_pcm_substream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
