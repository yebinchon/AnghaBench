; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_entry.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_graph_ent_entry = type { %struct.ftrace_graph_ent }
%struct.ftrace_graph_ent = type { i32, i32 }
%struct.trace_seq = type { i64 }
%struct.trace_iterator = type { i32, %struct.fgraph_data* }
%struct.fgraph_data = type { i32, i32 }
%struct.ftrace_graph_ret_entry = type { i32 }

@print_graph_entry.ret = internal global i32 0, align 4
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@TRACE_GRAPH_ENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftrace_graph_ent_entry*, %struct.trace_seq*, %struct.trace_iterator*, i32)* @print_graph_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_graph_entry(%struct.ftrace_graph_ent_entry* %0, %struct.trace_seq* %1, %struct.trace_iterator* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ftrace_graph_ent_entry*, align 8
  %7 = alloca %struct.trace_seq*, align 8
  %8 = alloca %struct.trace_iterator*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fgraph_data*, align 8
  %11 = alloca %struct.ftrace_graph_ent*, align 8
  %12 = alloca %struct.ftrace_graph_ret_entry*, align 8
  %13 = alloca i32, align 4
  store %struct.ftrace_graph_ent_entry* %0, %struct.ftrace_graph_ent_entry** %6, align 8
  store %struct.trace_seq* %1, %struct.trace_seq** %7, align 8
  store %struct.trace_iterator* %2, %struct.trace_iterator** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %15 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %14, i32 0, i32 1
  %16 = load %struct.fgraph_data*, %struct.fgraph_data** %15, align 8
  store %struct.fgraph_data* %16, %struct.fgraph_data** %10, align 8
  %17 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %6, align 8
  %18 = getelementptr inbounds %struct.ftrace_graph_ent_entry, %struct.ftrace_graph_ent_entry* %17, i32 0, i32 0
  store %struct.ftrace_graph_ent* %18, %struct.ftrace_graph_ent** %11, align 8
  %19 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %20 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %13, align 4
  %22 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %11, align 8
  %25 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %11, align 8
  %28 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @check_irq_entry(%struct.trace_iterator* %22, i32 %23, i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %33, i32* %5, align 4
  br label %82

34:                                               ; preds = %4
  %35 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %36 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %37 = load i32, i32* @TRACE_GRAPH_ENT, align 4
  %38 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %11, align 8
  %39 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @print_graph_prologue(%struct.trace_iterator* %35, %struct.trace_seq* %36, i32 %37, i32 %40, i32 %41)
  %43 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %44 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %6, align 8
  %45 = call %struct.ftrace_graph_ret_entry* @get_return_for_leaf(%struct.trace_iterator* %43, %struct.ftrace_graph_ent_entry* %44)
  store %struct.ftrace_graph_ret_entry* %45, %struct.ftrace_graph_ret_entry** %12, align 8
  %46 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %12, align 8
  %47 = icmp ne %struct.ftrace_graph_ret_entry* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %34
  %49 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %50 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %6, align 8
  %51 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %12, align 8
  %52 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @print_graph_entry_leaf(%struct.trace_iterator* %49, %struct.ftrace_graph_ent_entry* %50, %struct.ftrace_graph_ret_entry* %51, %struct.trace_seq* %52, i32 %53)
  store i32 %54, i32* @print_graph_entry.ret, align 4
  br label %62

55:                                               ; preds = %34
  %56 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %57 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %6, align 8
  %58 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @print_graph_entry_nested(%struct.trace_iterator* %56, %struct.ftrace_graph_ent_entry* %57, %struct.trace_seq* %58, i32 %59, i32 %60)
  store i32 %61, i32* @print_graph_entry.ret, align 4
  br label %62

62:                                               ; preds = %55, %48
  %63 = load %struct.fgraph_data*, %struct.fgraph_data** %10, align 8
  %64 = icmp ne %struct.fgraph_data* %63, null
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %67 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.fgraph_data*, %struct.fgraph_data** %10, align 8
  %72 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.fgraph_data*, %struct.fgraph_data** %10, align 8
  %75 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %79

76:                                               ; preds = %65
  %77 = load %struct.fgraph_data*, %struct.fgraph_data** %10, align 8
  %78 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %70
  br label %80

80:                                               ; preds = %79, %62
  %81 = load i32, i32* @print_graph_entry.ret, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %32
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64 @check_irq_entry(%struct.trace_iterator*, i32, i32, i32) #1

declare dso_local i32 @print_graph_prologue(%struct.trace_iterator*, %struct.trace_seq*, i32, i32, i32) #1

declare dso_local %struct.ftrace_graph_ret_entry* @get_return_for_leaf(%struct.trace_iterator*, %struct.ftrace_graph_ent_entry*) #1

declare dso_local i32 @print_graph_entry_leaf(%struct.trace_iterator*, %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ret_entry*, %struct.trace_seq*, i32) #1

declare dso_local i32 @print_graph_entry_nested(%struct.trace_iterator*, %struct.ftrace_graph_ent_entry*, %struct.trace_seq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
