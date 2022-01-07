; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_entry*, %struct.trace_seq, %struct.trace_array* }
%struct.trace_entry = type { i32 }
%struct.trace_seq = type { i32 }
%struct.trace_array = type { i32 }

@__irqentry_text_start = common dso_local global i64 0, align 8
@__irqentry_text_end = common dso_local global i64 0, align 8
@TRACE_ITER_CONTEXT_INFO = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_ABS_TIME = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_REL_TIME = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_CPU = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_PROC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" | \00", align 1
@TRACE_ITER_LATENCY_FMT = common dso_local global i32 0, align 4
@FLAGS_FILL_START = common dso_local global i32 0, align 4
@TRACE_GRAPH_ENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"==========>\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"<==========\00", align 1
@FLAGS_FILL_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_iterator*, i64, i32, i32, i32, i32)* @print_graph_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_graph_irq(%struct.trace_iterator* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.trace_iterator*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.trace_array*, align 8
  %14 = alloca %struct.trace_seq*, align 8
  %15 = alloca %struct.trace_entry*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %17 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %16, i32 0, i32 3
  %18 = load %struct.trace_array*, %struct.trace_array** %17, align 8
  store %struct.trace_array* %18, %struct.trace_array** %13, align 8
  %19 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %20 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %19, i32 0, i32 2
  store %struct.trace_seq* %20, %struct.trace_seq** %14, align 8
  %21 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %22 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %21, i32 0, i32 1
  %23 = load %struct.trace_entry*, %struct.trace_entry** %22, align 8
  store %struct.trace_entry* %23, %struct.trace_entry** %15, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @__irqentry_text_start, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %6
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @__irqentry_text_end, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %6
  br label %116

32:                                               ; preds = %27
  %33 = load %struct.trace_array*, %struct.trace_array** %13, align 8
  %34 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TRACE_ITER_CONTEXT_INFO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %91

39:                                               ; preds = %32
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @TRACE_GRAPH_PRINT_ABS_TIME, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %46 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.trace_seq*, %struct.trace_seq** %14, align 8
  %49 = call i32 @print_graph_abs_time(i32 %47, %struct.trace_seq* %48)
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @TRACE_GRAPH_PRINT_REL_TIME, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %57 = load %struct.trace_seq*, %struct.trace_seq** %14, align 8
  %58 = call i32 @print_graph_rel_time(%struct.trace_iterator* %56, %struct.trace_seq* %57)
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @TRACE_GRAPH_PRINT_CPU, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.trace_seq*, %struct.trace_seq** %14, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @print_graph_cpu(%struct.trace_seq* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @TRACE_GRAPH_PRINT_PROC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.trace_seq*, %struct.trace_seq** %14, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @print_graph_proc(%struct.trace_seq* %74, i32 %75)
  %77 = load %struct.trace_seq*, %struct.trace_seq** %14, align 8
  %78 = call i32 @trace_seq_puts(%struct.trace_seq* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %73, %68
  %80 = load %struct.trace_array*, %struct.trace_array** %13, align 8
  %81 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @TRACE_ITER_LATENCY_FMT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load %struct.trace_seq*, %struct.trace_seq** %14, align 8
  %88 = load %struct.trace_entry*, %struct.trace_entry** %15, align 8
  %89 = call i32 @print_graph_lat_fmt(%struct.trace_seq* %87, %struct.trace_entry* %88)
  br label %90

90:                                               ; preds = %86, %79
  br label %91

91:                                               ; preds = %90, %32
  %92 = load %struct.trace_array*, %struct.trace_array** %13, align 8
  %93 = load %struct.trace_seq*, %struct.trace_seq** %14, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @FLAGS_FILL_START, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @print_graph_duration(%struct.trace_array* %92, i32 0, %struct.trace_seq* %93, i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @TRACE_GRAPH_ENT, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load %struct.trace_seq*, %struct.trace_seq** %14, align 8
  %103 = call i32 @trace_seq_puts(%struct.trace_seq* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %107

104:                                              ; preds = %91
  %105 = load %struct.trace_seq*, %struct.trace_seq** %14, align 8
  %106 = call i32 @trace_seq_puts(%struct.trace_seq* %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %101
  %108 = load %struct.trace_array*, %struct.trace_array** %13, align 8
  %109 = load %struct.trace_seq*, %struct.trace_seq** %14, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @FLAGS_FILL_END, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @print_graph_duration(%struct.trace_array* %108, i32 0, %struct.trace_seq* %109, i32 %112)
  %114 = load %struct.trace_seq*, %struct.trace_seq** %14, align 8
  %115 = call i32 @trace_seq_putc(%struct.trace_seq* %114, i8 signext 10)
  br label %116

116:                                              ; preds = %107, %31
  ret void
}

declare dso_local i32 @print_graph_abs_time(i32, %struct.trace_seq*) #1

declare dso_local i32 @print_graph_rel_time(%struct.trace_iterator*, %struct.trace_seq*) #1

declare dso_local i32 @print_graph_cpu(%struct.trace_seq*, i32) #1

declare dso_local i32 @print_graph_proc(%struct.trace_seq*, i32) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i32 @print_graph_lat_fmt(%struct.trace_seq*, %struct.trace_entry*) #1

declare dso_local i32 @print_graph_duration(%struct.trace_array*, i32, %struct.trace_seq*, i32) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
