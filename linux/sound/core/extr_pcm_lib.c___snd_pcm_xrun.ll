; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c___snd_pcm_xrun.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c___snd_pcm_xrun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timespec = type { i32 }

@SNDRV_PCM_TSTAMP_ENABLE = common dso_local global i64 0, align 8
@SNDRV_PCM_STATE_XRUN = common dso_local global i32 0, align 4
@XRUN_DEBUG_BASIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"XRUN: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__snd_pcm_xrun(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca [16 x i8], align 16
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 1
  %7 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  store %struct.snd_pcm_runtime* %7, %struct.snd_pcm_runtime** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call i32 @trace_xrun(%struct.snd_pcm_substream* %8)
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SNDRV_PCM_TSTAMP_ENABLE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast i32* %20 to %struct.timespec*
  %22 = call i32 @snd_pcm_gettime(%struct.snd_pcm_runtime* %16, %struct.timespec* %21)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %25 = load i32, i32* @SNDRV_PCM_STATE_XRUN, align 4
  %26 = call i32 @snd_pcm_stop(%struct.snd_pcm_substream* %24, i32 %25)
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %28 = load i32, i32* @XRUN_DEBUG_BASIC, align 4
  %29 = call i64 @xrun_debug(%struct.snd_pcm_substream* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %23
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %34 = call i32 @snd_pcm_debug_name(%struct.snd_pcm_substream* %32, i8* %33, i32 16)
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %39 = call i32 @pcm_warn(i32 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %41 = call i32 @dump_stack_on_xrun(%struct.snd_pcm_substream* %40)
  br label %42

42:                                               ; preds = %31, %23
  ret void
}

declare dso_local i32 @trace_xrun(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_gettime(%struct.snd_pcm_runtime*, %struct.timespec*) #1

declare dso_local i32 @snd_pcm_stop(%struct.snd_pcm_substream*, i32) #1

declare dso_local i64 @xrun_debug(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_pcm_debug_name(%struct.snd_pcm_substream*, i8*, i32) #1

declare dso_local i32 @pcm_warn(i32, i8*, i8*) #1

declare dso_local i32 @dump_stack_on_xrun(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
