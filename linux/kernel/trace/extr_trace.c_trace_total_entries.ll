; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_total_entries.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_total_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }

@global_trace = common dso_local global %struct.trace_array zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @trace_total_entries(%struct.trace_array* %0) #0 {
  %2 = alloca %struct.trace_array*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.trace_array* %0, %struct.trace_array** %2, align 8
  %5 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %6 = icmp ne %struct.trace_array* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.trace_array* @global_trace, %struct.trace_array** %2, align 8
  br label %8

8:                                                ; preds = %7, %1
  %9 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %10 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %9, i32 0, i32 0
  %11 = call i32 @get_total_entries(i32* %10, i64* %3, i64* %4)
  %12 = load i64, i64* %4, align 8
  ret i64 %12
}

declare dso_local i32 @get_total_entries(i32*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
