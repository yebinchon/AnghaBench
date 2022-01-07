; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_stack.c_stack_trace_call.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_stack.c_stack_trace_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_ops = type { i32 }
%struct.pt_regs = type { i32 }

@disable_stack_tracer = common dso_local global i32 0, align 4
@MCOUNT_INSN_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.ftrace_ops*, %struct.pt_regs*)* @stack_trace_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stack_trace_call(i64 %0, i64 %1, %struct.ftrace_ops* %2, %struct.pt_regs* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ftrace_ops*, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ftrace_ops* %2, %struct.ftrace_ops** %7, align 8
  store %struct.pt_regs* %3, %struct.pt_regs** %8, align 8
  %10 = call i32 (...) @preempt_disable_notrace()
  %11 = load i32, i32* @disable_stack_tracer, align 4
  %12 = call i32 @__this_cpu_inc(i32 %11)
  %13 = load i32, i32* @disable_stack_tracer, align 4
  %14 = call i32 @__this_cpu_read(i32 %13)
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %27

17:                                               ; preds = %4
  %18 = call i32 (...) @rcu_is_watching()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  br label %27

21:                                               ; preds = %17
  %22 = load i64, i64* @MCOUNT_INSN_SIZE, align 8
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @check_stack(i64 %25, i64* %9)
  br label %27

27:                                               ; preds = %21, %20, %16
  %28 = load i32, i32* @disable_stack_tracer, align 4
  %29 = call i32 @__this_cpu_dec(i32 %28)
  %30 = call i32 (...) @preempt_enable_notrace()
  ret void
}

declare dso_local i32 @preempt_disable_notrace(...) #1

declare dso_local i32 @__this_cpu_inc(i32) #1

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local i32 @rcu_is_watching(...) #1

declare dso_local i32 @check_stack(i64, i64*) #1

declare dso_local i32 @__this_cpu_dec(i32) #1

declare dso_local i32 @preempt_enable_notrace(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
