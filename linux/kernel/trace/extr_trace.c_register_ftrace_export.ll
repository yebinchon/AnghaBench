; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_register_ftrace_export.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_register_ftrace_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_export = type { i32 }

@ftrace_export_lock = common dso_local global i32 0, align 4
@ftrace_exports_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_ftrace_export(%struct.trace_export* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_export*, align 8
  store %struct.trace_export* %0, %struct.trace_export** %3, align 8
  %4 = load %struct.trace_export*, %struct.trace_export** %3, align 8
  %5 = getelementptr inbounds %struct.trace_export, %struct.trace_export* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @WARN_ON_ONCE(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %18

13:                                               ; preds = %1
  %14 = call i32 @mutex_lock(i32* @ftrace_export_lock)
  %15 = load %struct.trace_export*, %struct.trace_export** %3, align 8
  %16 = call i32 @add_ftrace_export(i32* @ftrace_exports_list, %struct.trace_export* %15)
  %17 = call i32 @mutex_unlock(i32* @ftrace_export_lock)
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %13, %12
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @add_ftrace_export(i32*, %struct.trace_export*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
