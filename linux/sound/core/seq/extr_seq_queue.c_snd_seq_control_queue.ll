; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_control_queue.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_queue.c_snd_seq_control_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_event = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.snd_seq_queue = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_control_queue(%struct.snd_seq_event* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_seq_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_seq_queue*, align 8
  store %struct.snd_seq_event* %0, %struct.snd_seq_event** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %10 = icmp ne %struct.snd_seq_event* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @snd_BUG_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %53

18:                                               ; preds = %3
  %19 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %20 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.snd_seq_queue* @queueptr(i32 %23)
  store %struct.snd_seq_queue* %24, %struct.snd_seq_queue** %8, align 8
  %25 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %26 = icmp eq %struct.snd_seq_queue* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %53

30:                                               ; preds = %18
  %31 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %32 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %33 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @queue_access_lock(%struct.snd_seq_queue* %31, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %30
  %39 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %40 = call i32 @queuefree(%struct.snd_seq_queue* %39)
  %41 = load i32, i32* @EPERM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %53

43:                                               ; preds = %30
  %44 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %45 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @snd_seq_queue_process_event(%struct.snd_seq_queue* %44, %struct.snd_seq_event* %45, i32 %46, i32 %47)
  %49 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %50 = call i32 @queue_access_unlock(%struct.snd_seq_queue* %49)
  %51 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %52 = call i32 @queuefree(%struct.snd_seq_queue* %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %43, %38, %27, %15
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.snd_seq_queue* @queueptr(i32) #1

declare dso_local i32 @queue_access_lock(%struct.snd_seq_queue*, i32) #1

declare dso_local i32 @queuefree(%struct.snd_seq_queue*) #1

declare dso_local i32 @snd_seq_queue_process_event(%struct.snd_seq_queue*, %struct.snd_seq_event*, i32, i32) #1

declare dso_local i32 @queue_access_unlock(%struct.snd_seq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
