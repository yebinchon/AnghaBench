; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_ioctl_get_queue_timer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_ioctl_get_queue_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_client = type { i32 }
%struct.snd_seq_queue_timer = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_seq_queue = type { i32, i32, %struct.snd_seq_timer* }
%struct.snd_seq_timer = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_SEQ_TIMER_ALSA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_client*, i8*)* @snd_seq_ioctl_get_queue_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_seq_ioctl_get_queue_timer(%struct.snd_seq_client* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_seq_queue_timer*, align 8
  %7 = alloca %struct.snd_seq_queue*, align 8
  %8 = alloca %struct.snd_seq_timer*, align 8
  store %struct.snd_seq_client* %0, %struct.snd_seq_client** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.snd_seq_queue_timer*
  store %struct.snd_seq_queue_timer* %10, %struct.snd_seq_queue_timer** %6, align 8
  %11 = load %struct.snd_seq_queue_timer*, %struct.snd_seq_queue_timer** %6, align 8
  %12 = getelementptr inbounds %struct.snd_seq_queue_timer, %struct.snd_seq_queue_timer* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.snd_seq_queue* @queueptr(i32 %13)
  store %struct.snd_seq_queue* %14, %struct.snd_seq_queue** %7, align 8
  %15 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %7, align 8
  %16 = icmp eq %struct.snd_seq_queue* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %65

20:                                               ; preds = %2
  %21 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %7, align 8
  %22 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %7, align 8
  %25 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %24, i32 0, i32 2
  %26 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %25, align 8
  store %struct.snd_seq_timer* %26, %struct.snd_seq_timer** %8, align 8
  %27 = load %struct.snd_seq_queue_timer*, %struct.snd_seq_queue_timer** %6, align 8
  %28 = call i32 @memset(%struct.snd_seq_queue_timer* %27, i32 0, i32 24)
  %29 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %7, align 8
  %30 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.snd_seq_queue_timer*, %struct.snd_seq_queue_timer** %6, align 8
  %33 = getelementptr inbounds %struct.snd_seq_queue_timer, %struct.snd_seq_queue_timer* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %8, align 8
  %35 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.snd_seq_queue_timer*, %struct.snd_seq_queue_timer** %6, align 8
  %38 = getelementptr inbounds %struct.snd_seq_queue_timer, %struct.snd_seq_queue_timer* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %8, align 8
  %40 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SNDRV_SEQ_TIMER_ALSA, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %20
  %45 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %8, align 8
  %46 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.snd_seq_queue_timer*, %struct.snd_seq_queue_timer** %6, align 8
  %49 = getelementptr inbounds %struct.snd_seq_queue_timer, %struct.snd_seq_queue_timer* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 4
  %52 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %8, align 8
  %53 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.snd_seq_queue_timer*, %struct.snd_seq_queue_timer** %6, align 8
  %56 = getelementptr inbounds %struct.snd_seq_queue_timer, %struct.snd_seq_queue_timer* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 8
  br label %59

59:                                               ; preds = %44, %20
  %60 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %7, align 8
  %61 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %7, align 8
  %64 = call i32 @queuefree(%struct.snd_seq_queue* %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %59, %17
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.snd_seq_queue* @queueptr(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.snd_seq_queue_timer*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @queuefree(%struct.snd_seq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
