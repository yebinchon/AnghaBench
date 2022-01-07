; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_cpu_clock_sample.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_cpu_clock_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@CPUCLOCK_SCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.task_struct*)* @cpu_clock_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cpu_clock_sample(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @CPUCLOCK_SCHED, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %13 = call i64 @task_sched_runtime(%struct.task_struct* %12)
  store i64 %13, i64* %3, align 8
  br label %27

14:                                               ; preds = %2
  %15 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %16 = call i32 @task_cputime(%struct.task_struct* %15, i64* %6, i64* %7)
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %24 [
    i32 129, label %18
    i32 128, label %22
  ]

18:                                               ; preds = %14
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %3, align 8
  br label %27

22:                                               ; preds = %14
  %23 = load i64, i64* %6, align 8
  store i64 %23, i64* %3, align 8
  br label %27

24:                                               ; preds = %14
  %25 = call i32 @WARN_ON_ONCE(i32 1)
  br label %26

26:                                               ; preds = %24
  store i64 0, i64* %3, align 8
  br label %27

27:                                               ; preds = %26, %22, %18, %11
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

declare dso_local i64 @task_sched_runtime(%struct.task_struct*) #1

declare dso_local i32 @task_cputime(%struct.task_struct*, i64*, i64*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
