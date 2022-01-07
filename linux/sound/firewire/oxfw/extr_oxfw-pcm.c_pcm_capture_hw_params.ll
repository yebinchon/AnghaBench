; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-pcm.c_pcm_capture_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-pcm.c_pcm_capture_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__*, %struct.snd_oxfw* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.snd_oxfw = type { i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }

@SNDRV_PCM_STATE_OPEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @pcm_capture_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_capture_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_oxfw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_oxfw*, %struct.snd_oxfw** %11, align 8
  store %struct.snd_oxfw* %12, %struct.snd_oxfw** %6, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %15 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %14)
  %16 = call i32 @snd_pcm_lib_alloc_vmalloc_buffer(%struct.snd_pcm_substream* %13, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %58

21:                                               ; preds = %2
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SNDRV_PCM_STATE_OPEN, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %21
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %33 = call i32 @params_rate(%struct.snd_pcm_hw_params* %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %35 = call i32 @params_channels(%struct.snd_pcm_hw_params* %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %37 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %40 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %41 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %40, i32 0, i32 2
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @snd_oxfw_stream_reserve_duplex(%struct.snd_oxfw* %39, i32* %41, i32 %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %31
  %48 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %49 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %47, %31
  %53 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %54 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  br label %56

56:                                               ; preds = %52, %21
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %19
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @snd_pcm_lib_alloc_vmalloc_buffer(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_oxfw_stream_reserve_duplex(%struct.snd_oxfw*, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
