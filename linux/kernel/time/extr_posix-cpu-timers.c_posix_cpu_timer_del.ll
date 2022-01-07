; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_posix_cpu_timer_del.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_posix_cpu_timer_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_itimer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cpu_timer }
%struct.cpu_timer = type { i64, i32, i64, %struct.task_struct* }
%struct.task_struct = type { i32 }
%struct.sighand_struct = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TIMER_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.k_itimer*)* @posix_cpu_timer_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @posix_cpu_timer_del(%struct.k_itimer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.k_itimer*, align 8
  %4 = alloca %struct.cpu_timer*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.sighand_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.k_itimer* %0, %struct.k_itimer** %3, align 8
  %9 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %10 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.cpu_timer* %11, %struct.cpu_timer** %4, align 8
  %12 = load %struct.cpu_timer*, %struct.cpu_timer** %4, align 8
  %13 = getelementptr inbounds %struct.cpu_timer, %struct.cpu_timer* %12, i32 0, i32 3
  %14 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  store %struct.task_struct* %14, %struct.task_struct** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %16 = icmp ne %struct.task_struct* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON_ONCE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %69

24:                                               ; preds = %1
  %25 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %26 = call %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* %25, i64* %7)
  store %struct.sighand_struct* %26, %struct.sighand_struct** %6, align 8
  %27 = load %struct.sighand_struct*, %struct.sighand_struct** %6, align 8
  %28 = icmp eq %struct.sighand_struct* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %24
  %33 = load %struct.cpu_timer*, %struct.cpu_timer** %4, align 8
  %34 = getelementptr inbounds %struct.cpu_timer, %struct.cpu_timer* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.cpu_timer*, %struct.cpu_timer** %4, align 8
  %39 = getelementptr inbounds %struct.cpu_timer, %struct.cpu_timer* %38, i32 0, i32 1
  %40 = call i64 @timerqueue_node_queued(i32* %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i1 [ true, %32 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  %45 = call i64 @WARN_ON_ONCE(i32 %44)
  br label %61

46:                                               ; preds = %24
  %47 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %48 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.cpu_timer, %struct.cpu_timer* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @TIMER_RETRY, align 4
  store i32 %54, i32* %8, align 4
  br label %58

55:                                               ; preds = %46
  %56 = load %struct.cpu_timer*, %struct.cpu_timer** %4, align 8
  %57 = call i32 @cpu_timer_dequeue(%struct.cpu_timer* %56)
  br label %58

58:                                               ; preds = %55, %53
  %59 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %60 = call i32 @unlock_task_sighand(%struct.task_struct* %59, i64* %7)
  br label %61

61:                                               ; preds = %58, %42
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %66 = call i32 @put_task_struct(%struct.task_struct* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %21
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.sighand_struct* @lock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @timerqueue_node_queued(i32*) #1

declare dso_local i32 @cpu_timer_dequeue(%struct.cpu_timer*) #1

declare dso_local i32 @unlock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
