; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_fgraph.c_ftrace_return_to_handler.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_fgraph.c_ftrace_return_to_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ftrace_graph_ret = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@panic = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ftrace_return_to_handler(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ftrace_graph_ret, align 4
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i32 @ftrace_pop_return_trace(%struct.ftrace_graph_ret* %3, i64* %4, i64 %5)
  %7 = call i32 (...) @trace_clock_local()
  %8 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %3, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = call i32 @ftrace_graph_return(%struct.ftrace_graph_ret* %3)
  %10 = call i32 (...) @barrier()
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 4
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = call i32 (...) @ftrace_graph_stop()
  %23 = call i32 @WARN_ON(i32 1)
  %24 = load i64, i64* @panic, align 8
  store i64 %24, i64* %4, align 8
  br label %25

25:                                               ; preds = %21, %1
  %26 = load i64, i64* %4, align 8
  ret i64 %26
}

declare dso_local i32 @ftrace_pop_return_trace(%struct.ftrace_graph_ret*, i64*, i64) #1

declare dso_local i32 @trace_clock_local(...) #1

declare dso_local i32 @ftrace_graph_return(%struct.ftrace_graph_ret*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ftrace_graph_stop(...) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
