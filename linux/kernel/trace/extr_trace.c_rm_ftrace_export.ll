; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_rm_ftrace_export.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_rm_ftrace_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_export = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_export**, %struct.trace_export*)* @rm_ftrace_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm_ftrace_export(%struct.trace_export** %0, %struct.trace_export* %1) #0 {
  %3 = alloca %struct.trace_export**, align 8
  %4 = alloca %struct.trace_export*, align 8
  %5 = alloca i32, align 4
  store %struct.trace_export** %0, %struct.trace_export*** %3, align 8
  store %struct.trace_export* %1, %struct.trace_export** %4, align 8
  %6 = load %struct.trace_export**, %struct.trace_export*** %3, align 8
  %7 = load %struct.trace_export*, %struct.trace_export** %4, align 8
  %8 = call i32 @rm_trace_export(%struct.trace_export** %6, %struct.trace_export* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.trace_export**, %struct.trace_export*** %3, align 8
  %10 = load %struct.trace_export*, %struct.trace_export** %9, align 8
  %11 = icmp eq %struct.trace_export* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @ftrace_exports_disable()
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* %5, align 4
  ret i32 %15
}

declare dso_local i32 @rm_trace_export(%struct.trace_export**, %struct.trace_export*) #1

declare dso_local i32 @ftrace_exports_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
