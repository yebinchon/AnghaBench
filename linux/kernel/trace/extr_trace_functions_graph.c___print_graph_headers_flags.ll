; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c___print_graph_headers_flags.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c___print_graph_headers_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }
%struct.seq_file = type { i32 }

@TRACE_ITER_LATENCY_FMT = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_ABS_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"     TIME       \00", align 1
@TRACE_GRAPH_PRINT_REL_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"   REL TIME     \00", align 1
@TRACE_GRAPH_PRINT_CPU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c" CPU\00", align 1
@TRACE_GRAPH_PRINT_PROC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"  TASK/PID       \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"||||   \00", align 1
@TRACE_GRAPH_PRINT_DURATION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"  DURATION   \00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"               FUNCTION CALLS\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"      |         \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" |  \00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"   |    |        \00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"   |   |      \00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"               |   |   |   |\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_array*, %struct.seq_file*, i32)* @__print_graph_headers_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__print_graph_headers_flags(%struct.trace_array* %0, %struct.seq_file* %1, i32 %2) #0 {
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %9 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TRACE_ITER_LATENCY_FMT, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @print_lat_header(%struct.seq_file* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %3
  %20 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %21 = call i32 @seq_putc(%struct.seq_file* %20, i8 signext 35)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @TRACE_GRAPH_PRINT_ABS_TIME, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %28 = call i32 @seq_puts(%struct.seq_file* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %19
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @TRACE_GRAPH_PRINT_REL_TIME, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %36 = call i32 @seq_puts(%struct.seq_file* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @TRACE_GRAPH_PRINT_CPU, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %44 = call i32 @seq_puts(%struct.seq_file* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @TRACE_GRAPH_PRINT_PROC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %52 = call i32 @seq_puts(%struct.seq_file* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %58 = call i32 @seq_puts(%struct.seq_file* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @TRACE_GRAPH_PRINT_DURATION, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %66 = call i32 @seq_puts(%struct.seq_file* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %69 = call i32 @seq_puts(%struct.seq_file* %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %70 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %71 = call i32 @seq_putc(%struct.seq_file* %70, i8 signext 35)
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @TRACE_GRAPH_PRINT_ABS_TIME, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %78 = call i32 @seq_puts(%struct.seq_file* %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %67
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @TRACE_GRAPH_PRINT_REL_TIME, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %86 = call i32 @seq_puts(%struct.seq_file* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @TRACE_GRAPH_PRINT_CPU, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %94 = call i32 @seq_puts(%struct.seq_file* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %87
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @TRACE_GRAPH_PRINT_PROC, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %102 = call i32 @seq_puts(%struct.seq_file* %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %95
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %108 = call i32 @seq_puts(%struct.seq_file* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @TRACE_GRAPH_PRINT_DURATION, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %116 = call i32 @seq_puts(%struct.seq_file* %115, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %109
  %118 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %119 = call i32 @seq_puts(%struct.seq_file* %118, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @print_lat_header(%struct.seq_file*, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
