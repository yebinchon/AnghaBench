; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_prologue.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, i32, %struct.trace_array*, %struct.trace_entry*, %struct.fgraph_data* }
%struct.trace_array = type { i32 }
%struct.trace_entry = type { i32 }
%struct.fgraph_data = type { i32 }
%struct.trace_seq = type { i32 }

@TRACE_ITER_CONTEXT_INFO = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_ABS_TIME = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_REL_TIME = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_CPU = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_PROC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" | \00", align 1
@TRACE_ITER_LATENCY_FMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_iterator*, %struct.trace_seq*, i32, i64, i32)* @print_graph_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_graph_prologue(%struct.trace_iterator* %0, %struct.trace_seq* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.trace_iterator*, align 8
  %7 = alloca %struct.trace_seq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fgraph_data*, align 8
  %12 = alloca %struct.trace_entry*, align 8
  %13 = alloca %struct.trace_array*, align 8
  %14 = alloca i32, align 4
  store %struct.trace_iterator* %0, %struct.trace_iterator** %6, align 8
  store %struct.trace_seq* %1, %struct.trace_seq** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %16 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %15, i32 0, i32 4
  %17 = load %struct.fgraph_data*, %struct.fgraph_data** %16, align 8
  store %struct.fgraph_data* %17, %struct.fgraph_data** %11, align 8
  %18 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %19 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %18, i32 0, i32 3
  %20 = load %struct.trace_entry*, %struct.trace_entry** %19, align 8
  store %struct.trace_entry* %20, %struct.trace_entry** %12, align 8
  %21 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %22 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %21, i32 0, i32 2
  %23 = load %struct.trace_array*, %struct.trace_array** %22, align 8
  store %struct.trace_array* %23, %struct.trace_array** %13, align 8
  %24 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %25 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %14, align 4
  %27 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %28 = load %struct.trace_entry*, %struct.trace_entry** %12, align 8
  %29 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load %struct.fgraph_data*, %struct.fgraph_data** %11, align 8
  %33 = call i32 @verif_pid(%struct.trace_seq* %27, i32 %30, i32 %31, %struct.fgraph_data* %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %5
  %37 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.trace_entry*, %struct.trace_entry** %12, align 8
  %42 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @print_graph_irq(%struct.trace_iterator* %37, i64 %38, i32 %39, i32 %40, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %36, %5
  %47 = load %struct.trace_array*, %struct.trace_array** %13, align 8
  %48 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TRACE_ITER_CONTEXT_INFO, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %108

54:                                               ; preds = %46
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @TRACE_GRAPH_PRINT_ABS_TIME, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %61 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %64 = call i32 @print_graph_abs_time(i32 %62, %struct.trace_seq* %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @TRACE_GRAPH_PRINT_REL_TIME, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %72 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %73 = call i32 @print_graph_rel_time(%struct.trace_iterator* %71, %struct.trace_seq* %72)
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @TRACE_GRAPH_PRINT_CPU, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @print_graph_cpu(%struct.trace_seq* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @TRACE_GRAPH_PRINT_PROC, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %90 = load %struct.trace_entry*, %struct.trace_entry** %12, align 8
  %91 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @print_graph_proc(%struct.trace_seq* %89, i32 %92)
  %94 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %95 = call i32 @trace_seq_puts(%struct.trace_seq* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %88, %83
  %97 = load %struct.trace_array*, %struct.trace_array** %13, align 8
  %98 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @TRACE_ITER_LATENCY_FMT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %105 = load %struct.trace_entry*, %struct.trace_entry** %12, align 8
  %106 = call i32 @print_graph_lat_fmt(%struct.trace_seq* %104, %struct.trace_entry* %105)
  br label %107

107:                                              ; preds = %103, %96
  br label %108

108:                                              ; preds = %107, %53
  ret void
}

declare dso_local i32 @verif_pid(%struct.trace_seq*, i32, i32, %struct.fgraph_data*) #1

declare dso_local i32 @print_graph_irq(%struct.trace_iterator*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @print_graph_abs_time(i32, %struct.trace_seq*) #1

declare dso_local i32 @print_graph_rel_time(%struct.trace_iterator*, %struct.trace_seq*) #1

declare dso_local i32 @print_graph_cpu(%struct.trace_seq*, i32) #1

declare dso_local i32 @print_graph_proc(%struct.trace_seq*, i32) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i32 @print_graph_lat_fmt(%struct.trace_seq*, %struct.trace_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
