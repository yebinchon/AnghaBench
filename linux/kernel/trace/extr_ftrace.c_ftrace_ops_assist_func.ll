; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ftrace.c_ftrace_ops_assist_func.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ftrace.c_ftrace_ops_assist_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_ops = type { i32, i32 (i64, i64, %struct.ftrace_ops*, %struct.pt_regs*)* }
%struct.pt_regs = type { i32 }

@FTRACE_OPS_FL_RCU = common dso_local global i32 0, align 4
@TRACE_LIST_START = common dso_local global i32 0, align 4
@TRACE_LIST_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.ftrace_ops*, %struct.pt_regs*)* @ftrace_ops_assist_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftrace_ops_assist_func(i64 %0, i64 %1, %struct.ftrace_ops* %2, %struct.pt_regs* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ftrace_ops*, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ftrace_ops* %2, %struct.ftrace_ops** %7, align 8
  store %struct.pt_regs* %3, %struct.pt_regs** %8, align 8
  %10 = load %struct.ftrace_ops*, %struct.ftrace_ops** %7, align 8
  %11 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FTRACE_OPS_FL_RCU, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = call i32 (...) @rcu_is_watching()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  br label %40

20:                                               ; preds = %16, %4
  %21 = load i32, i32* @TRACE_LIST_START, align 4
  %22 = load i32, i32* @TRACE_LIST_MAX, align 4
  %23 = call i32 @trace_test_and_set_recursion(i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %40

27:                                               ; preds = %20
  %28 = call i32 (...) @preempt_disable_notrace()
  %29 = load %struct.ftrace_ops*, %struct.ftrace_ops** %7, align 8
  %30 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %29, i32 0, i32 1
  %31 = load i32 (i64, i64, %struct.ftrace_ops*, %struct.pt_regs*)*, i32 (i64, i64, %struct.ftrace_ops*, %struct.pt_regs*)** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.ftrace_ops*, %struct.ftrace_ops** %7, align 8
  %35 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %36 = call i32 %31(i64 %32, i64 %33, %struct.ftrace_ops* %34, %struct.pt_regs* %35)
  %37 = call i32 (...) @preempt_enable_notrace()
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @trace_clear_recursion(i32 %38)
  br label %40

40:                                               ; preds = %27, %26, %19
  ret void
}

declare dso_local i32 @rcu_is_watching(...) #1

declare dso_local i32 @trace_test_and_set_recursion(i32, i32) #1

declare dso_local i32 @preempt_disable_notrace(...) #1

declare dso_local i32 @preempt_enable_notrace(...) #1

declare dso_local i32 @trace_clear_recursion(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
