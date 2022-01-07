; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_wait.c_wait_woken.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_wait.c_wait_woken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wait_queue_entry = type { i32 }

@WQ_FLAG_WOKEN = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wait_woken(%struct.wait_queue_entry* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.wait_queue_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.wait_queue_entry* %0, %struct.wait_queue_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @set_current_state(i32 %7)
  %9 = load %struct.wait_queue_entry*, %struct.wait_queue_entry** %4, align 8
  %10 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @WQ_FLAG_WOKEN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = call i32 (...) @is_kthread_should_stop()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @schedule_timeout(i64 %19)
  store i64 %20, i64* %6, align 8
  br label %21

21:                                               ; preds = %18, %15, %3
  %22 = load i32, i32* @TASK_RUNNING, align 4
  %23 = call i32 @__set_current_state(i32 %22)
  %24 = load %struct.wait_queue_entry*, %struct.wait_queue_entry** %4, align 8
  %25 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wait_queue_entry*, %struct.wait_queue_entry** %4, align 8
  %28 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WQ_FLAG_WOKEN, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = call i32 @smp_store_mb(i32 %26, i32 %32)
  %34 = load i64, i64* %6, align 8
  ret i64 %34
}

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @is_kthread_should_stop(...) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @smp_store_mb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
