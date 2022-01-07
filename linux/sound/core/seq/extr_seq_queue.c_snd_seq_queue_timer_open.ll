; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_queue_timer_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_queue_timer_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_queue = type { %struct.snd_seq_timer* }
%struct.snd_seq_timer = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_queue_timer_open(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_seq_queue*, align 8
  %6 = alloca %struct.snd_seq_timer*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.snd_seq_queue* @queueptr(i32 %7)
  store %struct.snd_seq_queue* %8, %struct.snd_seq_queue** %5, align 8
  %9 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %10 = icmp eq %struct.snd_seq_queue* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %16 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %15, i32 0, i32 0
  %17 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %16, align 8
  store %struct.snd_seq_timer* %17, %struct.snd_seq_timer** %6, align 8
  %18 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %19 = call i32 @snd_seq_timer_open(%struct.snd_seq_queue* %18)
  store i32 %19, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %6, align 8
  %23 = call i32 @snd_seq_timer_defaults(%struct.snd_seq_timer* %22)
  %24 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %25 = call i32 @snd_seq_timer_open(%struct.snd_seq_queue* %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %14
  %27 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %5, align 8
  %28 = call i32 @queuefree(%struct.snd_seq_queue* %27)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %26, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.snd_seq_queue* @queueptr(i32) #1

declare dso_local i32 @snd_seq_timer_open(%struct.snd_seq_queue*) #1

declare dso_local i32 @snd_seq_timer_defaults(%struct.snd_seq_timer*) #1

declare dso_local i32 @queuefree(%struct.snd_seq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
