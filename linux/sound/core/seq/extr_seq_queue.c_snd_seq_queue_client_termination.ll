; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_queue_client_termination.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_queue_client_termination.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_queue = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }

@SNDRV_SEQ_MAX_QUEUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_queue_client_termination(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_seq_queue*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %58, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SNDRV_SEQ_MAX_QUEUES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %61

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.snd_seq_queue* @queueptr(i32 %11)
  store %struct.snd_seq_queue* %12, %struct.snd_seq_queue** %5, align 8
  %13 = icmp eq %struct.snd_seq_queue* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %58

15:                                               ; preds = %10
  %16 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %17 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %16, i32 0, i32 3
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %21 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %27 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %15
  %29 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %30 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %29, i32 0, i32 3
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %34 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %28
  %39 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %40 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %47 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = call i32 @snd_seq_timer_stop(%struct.TYPE_3__* %48)
  br label %50

50:                                               ; preds = %45, %38
  %51 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %52 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = call i32 @snd_seq_timer_reset(%struct.TYPE_3__* %53)
  br label %55

55:                                               ; preds = %50, %28
  %56 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %57 = call i32 @queuefree(%struct.snd_seq_queue* %56)
  br label %58

58:                                               ; preds = %55, %14
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %6

61:                                               ; preds = %6
  ret void
}

declare dso_local %struct.snd_seq_queue* @queueptr(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_seq_timer_stop(%struct.TYPE_3__*) #1

declare dso_local i32 @snd_seq_timer_reset(%struct.TYPE_3__*) #1

declare dso_local i32 @queuefree(%struct.snd_seq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
