; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer_benchmark.c_ring_buffer_consumer_thread.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer_benchmark.c_ring_buffer_consumer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_start = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ring_buffer_consumer_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ring_buffer_consumer_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %15, %1
  %4 = call i64 (...) @break_test()
  %5 = icmp ne i64 %4, 0
  %6 = xor i1 %5, true
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = call i32 @complete(i32* @read_start)
  %9 = call i32 (...) @ring_buffer_consumer()
  %10 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %11 = call i32 @set_current_state(i32 %10)
  %12 = call i64 (...) @break_test()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %17

15:                                               ; preds = %7
  %16 = call i32 (...) @schedule()
  br label %3

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @TASK_RUNNING, align 4
  %19 = call i32 @__set_current_state(i32 %18)
  %20 = call i32 (...) @kthread_should_stop()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 (...) @wait_to_die()
  br label %24

24:                                               ; preds = %22, %17
  ret i32 0
}

declare dso_local i64 @break_test(...) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @ring_buffer_consumer(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @wait_to_die(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
