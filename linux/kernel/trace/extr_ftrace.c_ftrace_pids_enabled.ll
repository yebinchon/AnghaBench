; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ftrace.c_ftrace_pids_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ftrace.c_ftrace_pids_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_ops = type { i32, %struct.trace_array* }
%struct.trace_array = type { i32* }

@FTRACE_OPS_FL_PID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftrace_ops*)* @ftrace_pids_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftrace_pids_enabled(%struct.ftrace_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ftrace_ops*, align 8
  %4 = alloca %struct.trace_array*, align 8
  store %struct.ftrace_ops* %0, %struct.ftrace_ops** %3, align 8
  %5 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %6 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @FTRACE_OPS_FL_PID, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %13 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %12, i32 0, i32 1
  %14 = load %struct.trace_array*, %struct.trace_array** %13, align 8
  %15 = icmp ne %struct.trace_array* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %26

17:                                               ; preds = %11
  %18 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %19 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %18, i32 0, i32 1
  %20 = load %struct.trace_array*, %struct.trace_array** %19, align 8
  store %struct.trace_array* %20, %struct.trace_array** %4, align 8
  %21 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %22 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %17, %16
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
