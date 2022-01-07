; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_duration.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }
%struct.trace_seq = type { i32 }

@TRACE_GRAPH_PRINT_DURATION = common dso_local global i32 0, align 4
@TRACE_ITER_CONTEXT_INFO = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_FILL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"              |  \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" |\00", align 1
@TRACE_GRAPH_PRINT_OVERHEAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"|  \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_array*, i64, %struct.trace_seq*, i32)* @print_graph_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_graph_duration(%struct.trace_array* %0, i64 %1, %struct.trace_seq* %2, i32 %3) #0 {
  %5 = alloca %struct.trace_array*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.trace_seq*, align 8
  %8 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.trace_seq* %2, %struct.trace_seq** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TRACE_GRAPH_PRINT_DURATION, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %15 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TRACE_ITER_CONTEXT_INFO, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13, %4
  br label %53

21:                                               ; preds = %13
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @TRACE_GRAPH_PRINT_FILL_MASK, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %34 [
    i32 129, label %25
    i32 128, label %28
    i32 130, label %31
  ]

25:                                               ; preds = %21
  %26 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %27 = call i32 @trace_seq_puts(%struct.trace_seq* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %53

28:                                               ; preds = %21
  %29 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %30 = call i32 @trace_seq_puts(%struct.trace_seq* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %53

31:                                               ; preds = %21
  %32 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %33 = call i32 @trace_seq_puts(%struct.trace_seq* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %53

34:                                               ; preds = %21
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @TRACE_GRAPH_PRINT_OVERHEAD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @trace_find_mark(i64 %41)
  %43 = call i32 @trace_seq_printf(%struct.trace_seq* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  br label %47

44:                                               ; preds = %34
  %45 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %46 = call i32 @trace_seq_puts(%struct.trace_seq* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %50 = call i32 @trace_print_graph_duration(i64 %48, %struct.trace_seq* %49)
  %51 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %52 = call i32 @trace_seq_puts(%struct.trace_seq* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %53

53:                                               ; preds = %47, %31, %28, %25, %20
  ret void
}

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32) #1

declare dso_local i32 @trace_find_mark(i64) #1

declare dso_local i32 @trace_print_graph_duration(i64, %struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
