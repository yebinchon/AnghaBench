; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_queue_client_leave.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_queue_client_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_queue = type { i32, i32, i32, i32 }

@SNDRV_SEQ_MAX_QUEUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_queue_client_leave(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_queue*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @SNDRV_SEQ_MAX_QUEUES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.snd_seq_queue* @queue_list_remove(i32 %10, i32 %11)
  store %struct.snd_seq_queue* %12, %struct.snd_seq_queue** %4, align 8
  %13 = icmp ne %struct.snd_seq_queue* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %16 = call i32 @queue_delete(%struct.snd_seq_queue* %15)
  br label %17

17:                                               ; preds = %14, %9
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %5

21:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %57, %21
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SNDRV_SEQ_MAX_QUEUES, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = call %struct.snd_seq_queue* @queueptr(i32 %27)
  store %struct.snd_seq_queue* %28, %struct.snd_seq_queue** %4, align 8
  %29 = icmp eq %struct.snd_seq_queue* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %57

31:                                               ; preds = %26
  %32 = load i32, i32* %2, align 4
  %33 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %34 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @test_bit(i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %31
  %39 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %40 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @snd_seq_prioq_leave(i32 %41, i32 %42, i32 0)
  %44 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %45 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @snd_seq_prioq_leave(i32 %46, i32 %47, i32 0)
  %49 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %50 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @snd_seq_queue_use(i32 %51, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %38, %31
  %55 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %4, align 8
  %56 = call i32 @queuefree(%struct.snd_seq_queue* %55)
  br label %57

57:                                               ; preds = %54, %30
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %22

60:                                               ; preds = %22
  ret void
}

declare dso_local %struct.snd_seq_queue* @queue_list_remove(i32, i32) #1

declare dso_local i32 @queue_delete(%struct.snd_seq_queue*) #1

declare dso_local %struct.snd_seq_queue* @queueptr(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @snd_seq_prioq_leave(i32, i32, i32) #1

declare dso_local i32 @snd_seq_queue_use(i32, i32, i32) #1

declare dso_local i32 @queuefree(%struct.snd_seq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
