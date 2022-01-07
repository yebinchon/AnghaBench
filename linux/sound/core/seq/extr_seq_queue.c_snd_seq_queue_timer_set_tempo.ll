; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_queue_timer_set_tempo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_queue_timer_set_tempo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_queue_tempo = type { i64, i32, i32, i32 }
%struct.snd_seq_queue = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_queue_timer_set_tempo(i32 %0, i32 %1, %struct.snd_seq_queue_tempo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_seq_queue_tempo*, align 8
  %8 = alloca %struct.snd_seq_queue*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.snd_seq_queue_tempo* %2, %struct.snd_seq_queue_tempo** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.snd_seq_queue* @queueptr(i32 %10)
  store %struct.snd_seq_queue* %11, %struct.snd_seq_queue** %8, align 8
  %12 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %13 = icmp eq %struct.snd_seq_queue* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %62

17:                                               ; preds = %3
  %18 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @queue_access_lock(%struct.snd_seq_queue* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %24 = call i32 @queuefree(%struct.snd_seq_queue* %23)
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %62

27:                                               ; preds = %17
  %28 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %29 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_seq_queue_tempo*, %struct.snd_seq_queue_tempo** %7, align 8
  %32 = getelementptr inbounds %struct.snd_seq_queue_tempo, %struct.snd_seq_queue_tempo* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.snd_seq_queue_tempo*, %struct.snd_seq_queue_tempo** %7, align 8
  %35 = getelementptr inbounds %struct.snd_seq_queue_tempo, %struct.snd_seq_queue_tempo* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @snd_seq_timer_set_tempo_ppq(i32 %30, i32 %33, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %27
  %41 = load %struct.snd_seq_queue_tempo*, %struct.snd_seq_queue_tempo** %7, align 8
  %42 = getelementptr inbounds %struct.snd_seq_queue_tempo, %struct.snd_seq_queue_tempo* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %47 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snd_seq_queue_tempo*, %struct.snd_seq_queue_tempo** %7, align 8
  %50 = getelementptr inbounds %struct.snd_seq_queue_tempo, %struct.snd_seq_queue_tempo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.snd_seq_queue_tempo*, %struct.snd_seq_queue_tempo** %7, align 8
  %53 = getelementptr inbounds %struct.snd_seq_queue_tempo, %struct.snd_seq_queue_tempo* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @snd_seq_timer_set_skew(i32 %48, i32 %51, i64 %54)
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %45, %40, %27
  %57 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %58 = call i32 @queue_access_unlock(%struct.snd_seq_queue* %57)
  %59 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %60 = call i32 @queuefree(%struct.snd_seq_queue* %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %56, %22, %14
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.snd_seq_queue* @queueptr(i32) #1

declare dso_local i32 @queue_access_lock(%struct.snd_seq_queue*, i32) #1

declare dso_local i32 @queuefree(%struct.snd_seq_queue*) #1

declare dso_local i32 @snd_seq_timer_set_tempo_ppq(i32, i32, i32) #1

declare dso_local i32 @snd_seq_timer_set_skew(i32, i32, i64) #1

declare dso_local i32 @queue_access_unlock(%struct.snd_seq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
