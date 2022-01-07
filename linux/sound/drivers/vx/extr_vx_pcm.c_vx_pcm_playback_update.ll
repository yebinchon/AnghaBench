; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_playback_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_playback_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.vx_pipe = type { i32, i64 }

@VX_STAT_IS_STALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, %struct.snd_pcm_substream*, %struct.vx_pipe*)* @vx_pcm_playback_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx_pcm_playback_update(%struct.vx_core* %0, %struct.snd_pcm_substream* %1, %struct.vx_pipe* %2) #0 {
  %4 = alloca %struct.vx_core*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.vx_pipe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.vx_core* %0, %struct.vx_core** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  store %struct.vx_pipe* %2, %struct.vx_pipe** %6, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %8, align 8
  %12 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %13 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %3
  %17 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %18 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VX_STAT_IS_STALE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %16
  %24 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %26 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %27 = call i32 @vx_update_pipe_position(%struct.vx_core* %24, %struct.snd_pcm_runtime* %25, %struct.vx_pipe* %26)
  store i32 %27, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %49

30:                                               ; preds = %23
  %31 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %32 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %33, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %43 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = srem i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %47 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %46)
  br label %48

48:                                               ; preds = %38, %30
  br label %49

49:                                               ; preds = %29, %48, %16, %3
  ret void
}

declare dso_local i32 @vx_update_pipe_position(%struct.vx_core*, %struct.snd_pcm_runtime*, %struct.vx_pipe*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
