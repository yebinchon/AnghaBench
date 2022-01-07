; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_queue_client_leave_cells.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_queue_client_leave_cells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_queue = type { i32, i32 }

@SNDRV_SEQ_MAX_QUEUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_queue_client_leave_cells(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_queue*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @SNDRV_SEQ_MAX_QUEUES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.snd_seq_queue* @queueptr(i32 %10)
  store %struct.snd_seq_queue* %11, %struct.snd_seq_queue** %4, align 8
  %12 = icmp eq %struct.snd_seq_queue* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %27

14:                                               ; preds = %9
  %15 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %16 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @snd_seq_prioq_leave(i32 %17, i32 %18, i32 0)
  %20 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %21 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @snd_seq_prioq_leave(i32 %22, i32 %23, i32 0)
  %25 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %26 = call i32 @queuefree(%struct.snd_seq_queue* %25)
  br label %27

27:                                               ; preds = %14, %13
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %5

30:                                               ; preds = %5
  ret void
}

declare dso_local %struct.snd_seq_queue* @queueptr(i32) #1

declare dso_local i32 @snd_seq_prioq_leave(i32, i32, i32) #1

declare dso_local i32 @queuefree(%struct.snd_seq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
