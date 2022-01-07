; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_percpu-rwsem.c___percpu_down_read.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_percpu-rwsem.c___percpu_down_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.percpu_rw_semaphore = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__percpu_down_read(%struct.percpu_rw_semaphore* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.percpu_rw_semaphore*, align 8
  %5 = alloca i32, align 4
  store %struct.percpu_rw_semaphore* %0, %struct.percpu_rw_semaphore** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = call i32 (...) @smp_mb()
  %7 = load %struct.percpu_rw_semaphore*, %struct.percpu_rw_semaphore** %4, align 8
  %8 = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %7, i32 0, i32 2
  %9 = call i32 @smp_load_acquire(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.percpu_rw_semaphore*, %struct.percpu_rw_semaphore** %4, align 8
  %18 = call i32 @__percpu_up_read(%struct.percpu_rw_semaphore* %17)
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %36

22:                                               ; preds = %16
  %23 = call i32 (...) @preempt_enable_no_resched()
  %24 = load %struct.percpu_rw_semaphore*, %struct.percpu_rw_semaphore** %4, align 8
  %25 = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %24, i32 0, i32 0
  %26 = call i32 @__down_read(i32* %25)
  %27 = load %struct.percpu_rw_semaphore*, %struct.percpu_rw_semaphore** %4, align 8
  %28 = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @this_cpu_inc(i32 %30)
  %32 = load %struct.percpu_rw_semaphore*, %struct.percpu_rw_semaphore** %4, align 8
  %33 = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %32, i32 0, i32 0
  %34 = call i32 @__up_read(i32* %33)
  %35 = call i32 (...) @preempt_disable()
  store i32 1, i32* %3, align 4
  br label %36

36:                                               ; preds = %22, %21, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @smp_load_acquire(i32*) #1

declare dso_local i32 @__percpu_up_read(%struct.percpu_rw_semaphore*) #1

declare dso_local i32 @preempt_enable_no_resched(...) #1

declare dso_local i32 @__down_read(i32*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @__up_read(i32*) #1

declare dso_local i32 @preempt_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
