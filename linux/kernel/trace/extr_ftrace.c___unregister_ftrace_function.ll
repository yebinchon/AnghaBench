; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ftrace.c___unregister_ftrace_function.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ftrace.c___unregister_ftrace_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_ops = type { i32, i32, i32 }

@FTRACE_OPS_FL_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ftrace_ops_list = common dso_local global i32 0, align 4
@ftrace_enabled = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__unregister_ftrace_function(%struct.ftrace_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ftrace_ops*, align 8
  %4 = alloca i32, align 4
  store %struct.ftrace_ops* %0, %struct.ftrace_ops** %3, align 8
  %5 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %6 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @FTRACE_OPS_FL_ENABLED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %36

18:                                               ; preds = %1
  %19 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %20 = call i32 @remove_ftrace_ops(i32* @ftrace_ops_list, %struct.ftrace_ops* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %36

25:                                               ; preds = %18
  %26 = load i64, i64* @ftrace_enabled, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @update_ftrace_function()
  br label %30

30:                                               ; preds = %28, %25
  %31 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %32 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ftrace_ops*, %struct.ftrace_ops** %3, align 8
  %35 = getelementptr inbounds %struct.ftrace_ops, %struct.ftrace_ops* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %30, %23, %15
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @remove_ftrace_ops(i32*, %struct.ftrace_ops*) #1

declare dso_local i32 @update_ftrace_function(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
