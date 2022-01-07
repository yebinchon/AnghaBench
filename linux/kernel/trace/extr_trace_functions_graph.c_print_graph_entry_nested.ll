; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_entry_nested.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_entry_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_array*, %struct.fgraph_data* }
%struct.trace_array = type { i32 }
%struct.fgraph_data = type { i32 }
%struct.ftrace_graph_ent_entry = type { %struct.ftrace_graph_ent }
%struct.ftrace_graph_ent = type { i64, i64 }
%struct.trace_seq = type { i32 }
%struct.fgraph_cpu_data = type { i64, i64* }

@FTRACE_RETFUNC_DEPTH = common dso_local global i64 0, align 8
@FLAGS_FILL_FULL = common dso_local global i32 0, align 4
@TRACE_GRAPH_INDENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%ps() {\0A\00", align 1
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@TRACE_TYPE_NO_CONSUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, %struct.ftrace_graph_ent_entry*, %struct.trace_seq*, i32, i32)* @print_graph_entry_nested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_graph_entry_nested(%struct.trace_iterator* %0, %struct.ftrace_graph_ent_entry* %1, %struct.trace_seq* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.trace_iterator*, align 8
  %8 = alloca %struct.ftrace_graph_ent_entry*, align 8
  %9 = alloca %struct.trace_seq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ftrace_graph_ent*, align 8
  %13 = alloca %struct.fgraph_data*, align 8
  %14 = alloca %struct.trace_array*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.fgraph_cpu_data*, align 8
  %17 = alloca i32, align 4
  store %struct.trace_iterator* %0, %struct.trace_iterator** %7, align 8
  store %struct.ftrace_graph_ent_entry* %1, %struct.ftrace_graph_ent_entry** %8, align 8
  store %struct.trace_seq* %2, %struct.trace_seq** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %8, align 8
  %19 = getelementptr inbounds %struct.ftrace_graph_ent_entry, %struct.ftrace_graph_ent_entry* %18, i32 0, i32 0
  store %struct.ftrace_graph_ent* %19, %struct.ftrace_graph_ent** %12, align 8
  %20 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %21 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %20, i32 0, i32 2
  %22 = load %struct.fgraph_data*, %struct.fgraph_data** %21, align 8
  store %struct.fgraph_data* %22, %struct.fgraph_data** %13, align 8
  %23 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %24 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %23, i32 0, i32 1
  %25 = load %struct.trace_array*, %struct.trace_array** %24, align 8
  store %struct.trace_array* %25, %struct.trace_array** %14, align 8
  %26 = load %struct.fgraph_data*, %struct.fgraph_data** %13, align 8
  %27 = icmp ne %struct.fgraph_data* %26, null
  br i1 %27, label %28, label %67

28:                                               ; preds = %5
  %29 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %30 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %17, align 4
  %32 = load %struct.fgraph_data*, %struct.fgraph_data** %13, align 8
  %33 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %17, align 4
  %36 = call %struct.fgraph_cpu_data* @per_cpu_ptr(i32 %34, i32 %35)
  store %struct.fgraph_cpu_data* %36, %struct.fgraph_cpu_data** %16, align 8
  %37 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %12, align 8
  %38 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.fgraph_cpu_data*, %struct.fgraph_cpu_data** %16, align 8
  %41 = getelementptr inbounds %struct.fgraph_cpu_data, %struct.fgraph_cpu_data* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %12, align 8
  %43 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FTRACE_RETFUNC_DEPTH, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %28
  %48 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %12, align 8
  %49 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @WARN_ON_ONCE(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %47
  %56 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %12, align 8
  %57 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.fgraph_cpu_data*, %struct.fgraph_cpu_data** %16, align 8
  %60 = getelementptr inbounds %struct.fgraph_cpu_data, %struct.fgraph_cpu_data* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %12, align 8
  %63 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  store i64 %58, i64* %65, align 8
  br label %66

66:                                               ; preds = %55, %47, %28
  br label %67

67:                                               ; preds = %66, %5
  %68 = load %struct.trace_array*, %struct.trace_array** %14, align 8
  %69 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @FLAGS_FILL_FULL, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @print_graph_duration(%struct.trace_array* %68, i32 0, %struct.trace_seq* %69, i32 %72)
  store i32 0, i32* %15, align 4
  br label %74

74:                                               ; preds = %87, %67
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %12, align 8
  %78 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @TRACE_GRAPH_INDENT, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %79, %81
  %83 = icmp ult i64 %76, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %74
  %85 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %86 = call i32 @trace_seq_putc(%struct.trace_seq* %85, i8 signext 32)
  br label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %15, align 4
  br label %74

90:                                               ; preds = %74
  %91 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %92 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %12, align 8
  %93 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @trace_seq_printf(%struct.trace_seq* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %95)
  %97 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %98 = call i64 @trace_seq_has_overflowed(%struct.trace_seq* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %101, i32* %6, align 4
  br label %104

102:                                              ; preds = %90
  %103 = load i32, i32* @TRACE_TYPE_NO_CONSUME, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local %struct.fgraph_cpu_data* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @print_graph_duration(%struct.trace_array*, i32, %struct.trace_seq*, i32) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i8*) #1

declare dso_local i64 @trace_seq_has_overflowed(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
