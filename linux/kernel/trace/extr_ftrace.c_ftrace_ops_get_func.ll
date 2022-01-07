; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ftrace.c_ftrace_ops_get_func.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ftrace.c_ftrace_ops_get_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_ops = type { i32, i32 }

@FTRACE_OPS_FL_RECURSION_SAFE = common dso_local global i32 0, align 4
@FTRACE_OPS_FL_RCU = common dso_local global i32 0, align 4
@ftrace_ops_assist_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ftrace_ops_get_func(%struct.ftrace_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ftrace_ops*, align 8
  store %struct.ftrace_ops* %0, %struct.ftrace_ops** %3, align 8
  %4 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %5 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @FTRACE_OPS_FL_RECURSION_SAFE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %12 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FTRACE_OPS_FL_RCU, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10, %1
  %18 = load i32, i32* @ftrace_ops_assist_func, align 4
  store i32 %18, i32* %2, align 4
  br label %23

19:                                               ; preds = %10
  %20 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %21 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %19, %17
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
