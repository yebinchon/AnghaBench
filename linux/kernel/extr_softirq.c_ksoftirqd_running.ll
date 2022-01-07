; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_softirq.c_ksoftirqd_running.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_softirq.c_ksoftirqd_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }

@ksoftirqd = common dso_local global i32 0, align 4
@SOFTIRQ_NOW_MASK = common dso_local global i64 0, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @ksoftirqd_running to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksoftirqd_running(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.task_struct*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @ksoftirqd, align 4
  %6 = call %struct.task_struct* @__this_cpu_read(i32 %5)
  store %struct.task_struct* %6, %struct.task_struct** %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @SOFTIRQ_NOW_MASK, align 8
  %9 = and i64 %7, %8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %14 = icmp ne %struct.task_struct* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TASK_RUNNING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %23 = call i32 @__kthread_should_park(%struct.task_struct* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %21, %15, %12
  %27 = phi i1 [ false, %15 ], [ false, %12 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.task_struct* @__this_cpu_read(i32) #1

declare dso_local i32 @__kthread_should_park(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
