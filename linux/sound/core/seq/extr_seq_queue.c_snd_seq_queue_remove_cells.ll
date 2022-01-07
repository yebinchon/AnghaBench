; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_queue_remove_cells.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_queue_remove_cells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_remove_events = type { i32, i64 }
%struct.snd_seq_queue = type { i64, i32, i32, i32 }

@SNDRV_SEQ_MAX_QUEUES = common dso_local global i32 0, align 4
@SNDRV_SEQ_REMOVE_DEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_queue_remove_cells(i32 %0, %struct.snd_seq_remove_events* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_remove_events*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_seq_queue*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.snd_seq_remove_events* %1, %struct.snd_seq_remove_events** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %54, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @SNDRV_SEQ_MAX_QUEUES, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %57

11:                                               ; preds = %7
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.snd_seq_queue* @queueptr(i32 %12)
  store %struct.snd_seq_queue* %13, %struct.snd_seq_queue** %6, align 8
  %14 = icmp eq %struct.snd_seq_queue* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %54

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %19 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @test_bit(i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %16
  %24 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %25 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SNDRV_SEQ_REMOVE_DEST, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %32 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %35 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %30, %23
  %39 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %40 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %44 = call i32 @snd_seq_prioq_remove_events(i32 %41, i32 %42, %struct.snd_seq_remove_events* %43)
  %45 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %46 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %50 = call i32 @snd_seq_prioq_remove_events(i32 %47, i32 %48, %struct.snd_seq_remove_events* %49)
  br label %51

51:                                               ; preds = %38, %30, %16
  %52 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %6, align 8
  %53 = call i32 @queuefree(%struct.snd_seq_queue* %52)
  br label %54

54:                                               ; preds = %51, %15
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %7

57:                                               ; preds = %7
  ret void
}

declare dso_local %struct.snd_seq_queue* @queueptr(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @snd_seq_prioq_remove_events(i32, i32, %struct.snd_seq_remove_events*) #1

declare dso_local i32 @queuefree(%struct.snd_seq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
