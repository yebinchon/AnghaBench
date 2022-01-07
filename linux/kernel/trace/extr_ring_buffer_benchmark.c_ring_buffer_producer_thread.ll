; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer_benchmark.c_ring_buffer_producer_thread.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer_benchmark.c_ring_buffer_producer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buffer = common dso_local global i32 0, align 4
@consumer = common dso_local global i64 0, align 8
@read_start = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Sleeping for 10 secs\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@SLEEP_TIME = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ring_buffer_producer_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ring_buffer_producer_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %28, %1
  %4 = call i64 (...) @break_test()
  %5 = icmp ne i64 %4, 0
  %6 = xor i1 %5, true
  br i1 %6, label %7, label %33

7:                                                ; preds = %3
  %8 = load i32, i32* @buffer, align 4
  %9 = call i32 @ring_buffer_reset(i32 %8)
  %10 = load i64, i64* @consumer, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load i64, i64* @consumer, align 8
  %14 = call i32 @wake_up_process(i64 %13)
  %15 = call i32 @wait_for_completion(i32* @read_start)
  br label %16

16:                                               ; preds = %12, %7
  %17 = call i32 (...) @ring_buffer_producer()
  %18 = call i64 (...) @break_test()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %34

21:                                               ; preds = %16
  %22 = call i32 @trace_printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %24 = call i32 @set_current_state(i32 %23)
  %25 = call i64 (...) @break_test()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %34

28:                                               ; preds = %21
  %29 = load i32, i32* @HZ, align 4
  %30 = load i32, i32* @SLEEP_TIME, align 4
  %31 = mul nsw i32 %29, %30
  %32 = call i32 @schedule_timeout(i32 %31)
  br label %3

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %33, %27, %20
  %35 = load i32, i32* @TASK_RUNNING, align 4
  %36 = call i32 @__set_current_state(i32 %35)
  %37 = call i32 (...) @kthread_should_stop()
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = call i32 (...) @wait_to_die()
  br label %41

41:                                               ; preds = %39, %34
  ret i32 0
}

declare dso_local i64 @break_test(...) #1

declare dso_local i32 @ring_buffer_reset(i32) #1

declare dso_local i32 @wake_up_process(i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @ring_buffer_producer(...) #1

declare dso_local i32 @trace_printk(i8*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @wait_to_die(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
