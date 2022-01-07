; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_queue_set_owner.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_queue_set_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_queue = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_queue_set_owner(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_seq_queue*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.snd_seq_queue* @queueptr(i32 %9)
  store %struct.snd_seq_queue* %10, %struct.snd_seq_queue** %8, align 8
  %11 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %12 = icmp eq %struct.snd_seq_queue* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %40

16:                                               ; preds = %3
  %17 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @queue_access_lock(%struct.snd_seq_queue* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %23 = call i32 @queuefree(%struct.snd_seq_queue* %22)
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %40

26:                                               ; preds = %16
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  %31 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %32 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %35 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %37 = call i32 @queue_access_unlock(%struct.snd_seq_queue* %36)
  %38 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %39 = call i32 @queuefree(%struct.snd_seq_queue* %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %26, %21, %13
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.snd_seq_queue* @queueptr(i32) #1

declare dso_local i32 @queue_access_lock(%struct.snd_seq_queue*, i32) #1

declare dso_local i32 @queuefree(%struct.snd_seq_queue*) #1

declare dso_local i32 @queue_access_unlock(%struct.snd_seq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
