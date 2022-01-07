; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ftrace.c_ftrace_pid_func.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ftrace.c_ftrace_pid_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_ops = type { i32 (i64, i64, %struct.ftrace_ops*, %struct.pt_regs*)*, %struct.trace_array* }
%struct.trace_array = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pt_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.ftrace_ops*, %struct.pt_regs*)* @ftrace_pid_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftrace_pid_func(i64 %0, i64 %1, %struct.ftrace_ops* %2, %struct.pt_regs* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ftrace_ops*, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca %struct.trace_array*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ftrace_ops* %2, %struct.ftrace_ops** %7, align 8
  store %struct.pt_regs* %3, %struct.pt_regs** %8, align 8
  %10 = load %struct.ftrace_ops*, %struct.ftrace_ops** %7, align 8
  %11 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %10, i32 0, i32 1
  %12 = load %struct.trace_array*, %struct.trace_array** %11, align 8
  store %struct.trace_array* %12, %struct.trace_array** %9, align 8
  %13 = load %struct.trace_array*, %struct.trace_array** %9, align 8
  %14 = icmp ne %struct.trace_array* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %4
  %16 = load %struct.trace_array*, %struct.trace_array** %9, align 8
  %17 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @this_cpu_read(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %34

25:                                               ; preds = %15, %4
  %26 = load %struct.ftrace_ops*, %struct.ftrace_ops** %7, align 8
  %27 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %26, i32 0, i32 0
  %28 = load i32 (i64, i64, %struct.ftrace_ops*, %struct.pt_regs*)*, i32 (i64, i64, %struct.ftrace_ops*, %struct.pt_regs*)** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.ftrace_ops*, %struct.ftrace_ops** %7, align 8
  %32 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %33 = call i32 %28(i64 %29, i64 %30, %struct.ftrace_ops* %31, %struct.pt_regs* %32)
  br label %34

34:                                               ; preds = %25, %24
  ret void
}

declare dso_local i64 @this_cpu_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
