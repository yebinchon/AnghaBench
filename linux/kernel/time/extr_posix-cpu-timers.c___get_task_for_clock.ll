; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c___get_task_for_clock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c___get_task_for_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@CPUCLOCK_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_struct* (i32, i32, i32)* @__get_task_for_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_struct* @__get_task_for_clock(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @CPUCLOCK_PERTHREAD(i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @CPUCLOCK_PID(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @CPUCLOCK_WHICH(i32 %19)
  %21 = load i64, i64* @CPUCLOCK_MAX, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store %struct.task_struct* null, %struct.task_struct** %4, align 8
  br label %41

24:                                               ; preds = %3
  %25 = call i32 (...) @rcu_read_lock()
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.task_struct* @lookup_task(i32 %26, i32 %27, i32 %28)
  store %struct.task_struct* %29, %struct.task_struct** %10, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %31 = icmp ne %struct.task_struct* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %37 = call i32 @get_task_struct(%struct.task_struct* %36)
  br label %38

38:                                               ; preds = %35, %32, %24
  %39 = call i32 (...) @rcu_read_unlock()
  %40 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  store %struct.task_struct* %40, %struct.task_struct** %4, align 8
  br label %41

41:                                               ; preds = %38, %23
  %42 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  ret %struct.task_struct* %42
}

declare dso_local i32 @CPUCLOCK_PERTHREAD(i32) #1

declare dso_local i32 @CPUCLOCK_PID(i32) #1

declare dso_local i64 @CPUCLOCK_WHICH(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @lookup_task(i32, i32, i32) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
