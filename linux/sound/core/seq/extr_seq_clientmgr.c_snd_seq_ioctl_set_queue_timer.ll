; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_ioctl_set_queue_timer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_ioctl_set_queue_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_client = type { i32 }
%struct.snd_seq_queue_timer = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_seq_queue = type { i32, %struct.snd_seq_timer* }
%struct.snd_seq_timer = type { i64, i32, i32 }

@SNDRV_SEQ_TIMER_ALSA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_client*, i8*)* @snd_seq_ioctl_set_queue_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_seq_ioctl_set_queue_timer(%struct.snd_seq_client* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_seq_queue_timer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_seq_queue*, align 8
  %9 = alloca %struct.snd_seq_timer*, align 8
  store %struct.snd_seq_client* %0, %struct.snd_seq_client** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.snd_seq_queue_timer*
  store %struct.snd_seq_queue_timer* %11, %struct.snd_seq_queue_timer** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.snd_seq_queue_timer*, %struct.snd_seq_queue_timer** %6, align 8
  %13 = getelementptr inbounds %struct.snd_seq_queue_timer, %struct.snd_seq_queue_timer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SNDRV_SEQ_TIMER_ALSA, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %90

20:                                               ; preds = %2
  %21 = load %struct.snd_seq_queue_timer*, %struct.snd_seq_queue_timer** %6, align 8
  %22 = getelementptr inbounds %struct.snd_seq_queue_timer, %struct.snd_seq_queue_timer* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.snd_seq_client*, %struct.snd_seq_client** %4, align 8
  %25 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @snd_seq_queue_check_access(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %85

29:                                               ; preds = %20
  %30 = load %struct.snd_seq_queue_timer*, %struct.snd_seq_queue_timer** %6, align 8
  %31 = getelementptr inbounds %struct.snd_seq_queue_timer, %struct.snd_seq_queue_timer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.snd_seq_queue* @queueptr(i32 %32)
  store %struct.snd_seq_queue* %33, %struct.snd_seq_queue** %8, align 8
  %34 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %35 = icmp eq %struct.snd_seq_queue* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @ENXIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %90

39:                                               ; preds = %29
  %40 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %41 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %44 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %43, i32 0, i32 1
  %45 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %44, align 8
  store %struct.snd_seq_timer* %45, %struct.snd_seq_timer** %9, align 8
  %46 = load %struct.snd_seq_queue_timer*, %struct.snd_seq_queue_timer** %6, align 8
  %47 = getelementptr inbounds %struct.snd_seq_queue_timer, %struct.snd_seq_queue_timer* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @snd_seq_queue_timer_close(i32 %48)
  %50 = load %struct.snd_seq_queue_timer*, %struct.snd_seq_queue_timer** %6, align 8
  %51 = getelementptr inbounds %struct.snd_seq_queue_timer, %struct.snd_seq_queue_timer* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %54 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %56 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SNDRV_SEQ_TIMER_ALSA, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %39
  %61 = load %struct.snd_seq_queue_timer*, %struct.snd_seq_queue_timer** %6, align 8
  %62 = getelementptr inbounds %struct.snd_seq_queue_timer, %struct.snd_seq_queue_timer* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %67 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.snd_seq_queue_timer*, %struct.snd_seq_queue_timer** %6, align 8
  %69 = getelementptr inbounds %struct.snd_seq_queue_timer, %struct.snd_seq_queue_timer* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %74 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %60, %39
  %76 = load %struct.snd_seq_queue_timer*, %struct.snd_seq_queue_timer** %6, align 8
  %77 = getelementptr inbounds %struct.snd_seq_queue_timer, %struct.snd_seq_queue_timer* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @snd_seq_queue_timer_open(i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %81 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %84 = call i32 @queuefree(%struct.snd_seq_queue* %83)
  br label %88

85:                                               ; preds = %20
  %86 = load i32, i32* @EPERM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %90

88:                                               ; preds = %75
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %85, %36, %17
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @snd_seq_queue_check_access(i32, i32) #1

declare dso_local %struct.snd_seq_queue* @queueptr(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_seq_queue_timer_close(i32) #1

declare dso_local i32 @snd_seq_queue_timer_open(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @queuefree(%struct.snd_seq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
