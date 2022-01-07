; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_headers_flags.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_headers_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.trace_iterator* }
%struct.trace_iterator = type { %struct.trace_array* }
%struct.trace_array = type { i32 }

@TRACE_ITER_CONTEXT_INFO = common dso_local global i32 0, align 4
@TRACE_ITER_LATENCY_FMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_graph_headers_flags(%struct.seq_file* %0, i32 %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.trace_iterator*, align 8
  %6 = alloca %struct.trace_array*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  store %struct.trace_iterator* %9, %struct.trace_iterator** %5, align 8
  %10 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %11 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %10, i32 0, i32 0
  %12 = load %struct.trace_array*, %struct.trace_array** %11, align 8
  store %struct.trace_array* %12, %struct.trace_array** %6, align 8
  %13 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %14 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TRACE_ITER_CONTEXT_INFO, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %41

20:                                               ; preds = %2
  %21 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %22 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TRACE_ITER_LATENCY_FMT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %29 = call i64 @trace_empty(%struct.trace_iterator* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %41

32:                                               ; preds = %27
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %35 = call i32 @print_trace_header(%struct.seq_file* %33, %struct.trace_iterator* %34)
  br label %36

36:                                               ; preds = %32, %20
  %37 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @__print_graph_headers_flags(%struct.trace_array* %37, %struct.seq_file* %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %31, %19
  ret void
}

declare dso_local i64 @trace_empty(%struct.trace_iterator*) #1

declare dso_local i32 @print_trace_header(%struct.seq_file*, %struct.trace_iterator*) #1

declare dso_local i32 @__print_graph_headers_flags(%struct.trace_array*, %struct.seq_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
