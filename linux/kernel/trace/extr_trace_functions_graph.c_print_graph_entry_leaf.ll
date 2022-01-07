; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_entry_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_entry_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.TYPE_2__*, %struct.trace_array*, %struct.fgraph_data* }
%struct.TYPE_2__ = type { i32 }
%struct.trace_array = type { i32 }
%struct.fgraph_data = type { i32 }
%struct.ftrace_graph_ent_entry = type { %struct.ftrace_graph_ent }
%struct.ftrace_graph_ent = type { i32, i64 }
%struct.ftrace_graph_ret_entry = type { %struct.ftrace_graph_ret }
%struct.ftrace_graph_ret = type { i64, i64, i32 }
%struct.trace_seq = type { i32 }
%struct.fgraph_cpu_data = type { i32, i64* }

@FTRACE_RETFUNC_DEPTH = common dso_local global i32 0, align 4
@TRACE_GRAPH_INDENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%ps();\0A\00", align 1
@TRACE_GRAPH_RET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ret_entry*, %struct.trace_seq*, i32)* @print_graph_entry_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_graph_entry_leaf(%struct.trace_iterator* %0, %struct.ftrace_graph_ent_entry* %1, %struct.ftrace_graph_ret_entry* %2, %struct.trace_seq* %3, i32 %4) #0 {
  %6 = alloca %struct.trace_iterator*, align 8
  %7 = alloca %struct.ftrace_graph_ent_entry*, align 8
  %8 = alloca %struct.ftrace_graph_ret_entry*, align 8
  %9 = alloca %struct.trace_seq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fgraph_data*, align 8
  %12 = alloca %struct.trace_array*, align 8
  %13 = alloca %struct.ftrace_graph_ret*, align 8
  %14 = alloca %struct.ftrace_graph_ent*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.fgraph_cpu_data*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %6, align 8
  store %struct.ftrace_graph_ent_entry* %1, %struct.ftrace_graph_ent_entry** %7, align 8
  store %struct.ftrace_graph_ret_entry* %2, %struct.ftrace_graph_ret_entry** %8, align 8
  store %struct.trace_seq* %3, %struct.trace_seq** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %20 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %19, i32 0, i32 3
  %21 = load %struct.fgraph_data*, %struct.fgraph_data** %20, align 8
  store %struct.fgraph_data* %21, %struct.fgraph_data** %11, align 8
  %22 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %23 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %22, i32 0, i32 2
  %24 = load %struct.trace_array*, %struct.trace_array** %23, align 8
  store %struct.trace_array* %24, %struct.trace_array** %12, align 8
  %25 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %26 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %16, align 4
  %28 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %8, align 8
  %29 = getelementptr inbounds %struct.ftrace_graph_ret_entry, %struct.ftrace_graph_ret_entry* %28, i32 0, i32 0
  store %struct.ftrace_graph_ret* %29, %struct.ftrace_graph_ret** %13, align 8
  %30 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %7, align 8
  %31 = getelementptr inbounds %struct.ftrace_graph_ent_entry, %struct.ftrace_graph_ent_entry* %30, i32 0, i32 0
  store %struct.ftrace_graph_ent* %31, %struct.ftrace_graph_ent** %14, align 8
  %32 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %13, align 8
  %33 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %13, align 8
  %36 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 %34, %37
  store i64 %38, i64* %15, align 8
  %39 = load %struct.fgraph_data*, %struct.fgraph_data** %11, align 8
  %40 = icmp ne %struct.fgraph_data* %39, null
  br i1 %40, label %41, label %76

41:                                               ; preds = %5
  %42 = load %struct.fgraph_data*, %struct.fgraph_data** %11, align 8
  %43 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %16, align 4
  %46 = call %struct.fgraph_cpu_data* @per_cpu_ptr(i32 %44, i32 %45)
  store %struct.fgraph_cpu_data* %46, %struct.fgraph_cpu_data** %18, align 8
  %47 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %14, align 8
  %48 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = load %struct.fgraph_cpu_data*, %struct.fgraph_cpu_data** %18, align 8
  %52 = getelementptr inbounds %struct.fgraph_cpu_data, %struct.fgraph_cpu_data* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %14, align 8
  %54 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @FTRACE_RETFUNC_DEPTH, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %41
  %59 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %14, align 8
  %60 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @WARN_ON_ONCE(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %58
  %67 = load %struct.fgraph_cpu_data*, %struct.fgraph_cpu_data** %18, align 8
  %68 = getelementptr inbounds %struct.fgraph_cpu_data, %struct.fgraph_cpu_data* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %14, align 8
  %71 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %69, i64 %73
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %66, %58, %41
  br label %76

76:                                               ; preds = %75, %5
  %77 = load %struct.trace_array*, %struct.trace_array** %12, align 8
  %78 = load i64, i64* %15, align 8
  %79 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @print_graph_duration(%struct.trace_array* %77, i64 %78, %struct.trace_seq* %79, i32 %80)
  store i32 0, i32* %17, align 4
  br label %82

82:                                               ; preds = %93, %76
  %83 = load i32, i32* %17, align 4
  %84 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %14, align 8
  %85 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @TRACE_GRAPH_INDENT, align 4
  %88 = mul nsw i32 %86, %87
  %89 = icmp slt i32 %83, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %92 = call i32 @trace_seq_putc(%struct.trace_seq* %91, i8 signext 32)
  br label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %17, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %17, align 4
  br label %82

96:                                               ; preds = %82
  %97 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %98 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %14, align 8
  %99 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i8*
  %102 = call i32 @trace_seq_printf(%struct.trace_seq* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %101)
  %103 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %104 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %13, align 8
  %105 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @TRACE_GRAPH_RET, align 4
  %108 = load i32, i32* %16, align 4
  %109 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %110 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @print_graph_irq(%struct.trace_iterator* %103, i32 %106, i32 %107, i32 %108, i32 %113, i32 %114)
  %116 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %117 = call i32 @trace_handle_return(%struct.trace_seq* %116)
  ret i32 %117
}

declare dso_local %struct.fgraph_cpu_data* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @print_graph_duration(%struct.trace_array*, i64, %struct.trace_seq*, i32) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i8*) #1

declare dso_local i32 @print_graph_irq(%struct.trace_iterator*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @trace_handle_return(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
