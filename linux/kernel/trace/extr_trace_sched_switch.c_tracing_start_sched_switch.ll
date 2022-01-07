; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_sched_switch.c_tracing_start_sched_switch.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_sched_switch.c_tracing_start_sched_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sched_cmdline_ref = common dso_local global i64 0, align 8
@sched_tgid_ref = common dso_local global i64 0, align 8
@sched_register_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tracing_start_sched_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tracing_start_sched_switch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @sched_cmdline_ref, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* @sched_tgid_ref, align 8
  %8 = icmp ne i64 %7, 0
  %9 = xor i1 %8, true
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = call i32 @mutex_lock(i32* @sched_register_mutex)
  %14 = load i32, i32* %2, align 4
  switch i32 %14, label %21 [
    i32 129, label %15
    i32 128, label %18
  ]

15:                                               ; preds = %10
  %16 = load i64, i64* @sched_cmdline_ref, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* @sched_cmdline_ref, align 8
  br label %21

18:                                               ; preds = %10
  %19 = load i64, i64* @sched_tgid_ref, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @sched_tgid_ref, align 8
  br label %21

21:                                               ; preds = %10, %18, %15
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i64, i64* @sched_cmdline_ref, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* @sched_tgid_ref, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %24
  %31 = call i32 (...) @tracing_sched_register()
  br label %32

32:                                               ; preds = %30, %27, %21
  %33 = call i32 @mutex_unlock(i32* @sched_register_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tracing_sched_register(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
