; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_check_open_get_tr.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_check_open_get_tr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }

@LOCKDOWN_TRACEFS = common dso_local global i32 0, align 4
@tracing_disabled = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tracing_check_open_get_tr(%struct.trace_array* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_array*, align 8
  %4 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %3, align 8
  %5 = load i32, i32* @LOCKDOWN_TRACEFS, align 4
  %6 = call i32 @security_locked_down(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  %12 = load i64, i64* @tracing_disabled, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %28

17:                                               ; preds = %11
  %18 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %19 = icmp ne %struct.trace_array* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %22 = call i64 @trace_array_get(%struct.trace_array* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %20, %17
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %24, %14, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @security_locked_down(i32) #1

declare dso_local i64 @trace_array_get(%struct.trace_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
