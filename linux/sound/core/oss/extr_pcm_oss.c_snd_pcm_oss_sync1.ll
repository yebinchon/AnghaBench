; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_sync1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_sync1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32 }

@current = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_RUNNING = common dso_local global i64 0, align 8
@TASK_RUNNING = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"OSS sync error - DMA timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i64)* @snd_pcm_oss_sync1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_sync1(%struct.snd_pcm_substream* %0, i64 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load i32, i32* @current, align 4
  %14 = call i32 @init_waitqueue_entry(i32* %9, i32 %13)
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 0
  %17 = call i32 @add_wait_queue(i32* %16, i32* %9)
  br label %18

18:                                               ; preds = %2, %79
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @snd_pcm_oss_write2(%struct.snd_pcm_substream* %19, i32 %23, i64 %24, i32 1)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  store i32 0, i32* %6, align 4
  br label %80

32:                                               ; preds = %18
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %80

41:                                               ; preds = %35, %32
  store i32 0, i32* %6, align 4
  %42 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %43 = call i32 @set_current_state(i32 %42)
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %45 = call i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream* %44)
  %46 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %7, align 8
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %52 = call i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream* %51)
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @SNDRV_PCM_STATE_RUNNING, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %41
  %57 = load i32, i32* @TASK_RUNNING, align 4
  %58 = call i32 @set_current_state(i32 %57)
  br label %80

59:                                               ; preds = %41
  %60 = load i32, i32* @HZ, align 4
  %61 = mul nsw i32 10, %60
  %62 = call i64 @schedule_timeout(i32 %61)
  store i64 %62, i64* %8, align 8
  %63 = load i32, i32* @current, align 4
  %64 = call i64 @signal_pending(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @ERESTARTSYS, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %80

69:                                               ; preds = %59
  %70 = load i64, i64* %8, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @pcm_err(i32 %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %80

79:                                               ; preds = %69
  br label %18

80:                                               ; preds = %72, %66, %56, %40, %28
  %81 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %81, i32 0, i32 0
  %83 = call i32 @remove_wait_queue(i32* %82, i32* %9)
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @snd_pcm_oss_write2(%struct.snd_pcm_substream*, i32, i64, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream*) #1

declare dso_local i64 @schedule_timeout(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @pcm_err(i32, i8*) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
