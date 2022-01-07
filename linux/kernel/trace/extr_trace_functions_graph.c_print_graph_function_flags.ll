; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_function_flags.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_function_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_seq, %struct.trace_entry*, %struct.fgraph_data* }
%struct.trace_seq = type { i32 }
%struct.trace_entry = type { i32 }
%struct.fgraph_data = type { i32, i32, %struct.ftrace_graph_ret_entry, i64 }
%struct.ftrace_graph_ret_entry = type { i32 }
%struct.ftrace_graph_ent_entry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@TRACE_TYPE_NO_CONSUME = common dso_local global i32 0, align 4
@TRACE_TYPE_UNHANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_graph_function_flags(%struct.trace_iterator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ftrace_graph_ent_entry*, align 8
  %7 = alloca %struct.fgraph_data*, align 8
  %8 = alloca %struct.trace_entry*, align 8
  %9 = alloca %struct.trace_seq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ftrace_graph_ent_entry, align 4
  %13 = alloca %struct.ftrace_graph_ret_entry*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %15 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %14, i32 0, i32 3
  %16 = load %struct.fgraph_data*, %struct.fgraph_data** %15, align 8
  store %struct.fgraph_data* %16, %struct.fgraph_data** %7, align 8
  %17 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %18 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %17, i32 0, i32 2
  %19 = load %struct.trace_entry*, %struct.trace_entry** %18, align 8
  store %struct.trace_entry* %19, %struct.trace_entry** %8, align 8
  %20 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %21 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %20, i32 0, i32 1
  store %struct.trace_seq* %21, %struct.trace_seq** %9, align 8
  %22 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %23 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.fgraph_data*, %struct.fgraph_data** %7, align 8
  %26 = icmp ne %struct.fgraph_data* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %2
  %28 = load %struct.fgraph_data*, %struct.fgraph_data** %7, align 8
  %29 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.TYPE_2__* @per_cpu_ptr(i32 %30, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %27
  %37 = load %struct.fgraph_data*, %struct.fgraph_data** %7, align 8
  %38 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call %struct.TYPE_2__* @per_cpu_ptr(i32 %39, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %43, i32* %3, align 4
  br label %127

44:                                               ; preds = %27, %2
  %45 = load %struct.fgraph_data*, %struct.fgraph_data** %7, align 8
  %46 = icmp ne %struct.fgraph_data* %45, null
  br i1 %46, label %47, label %91

47:                                               ; preds = %44
  %48 = load %struct.fgraph_data*, %struct.fgraph_data** %7, align 8
  %49 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %91

52:                                               ; preds = %47
  %53 = load %struct.fgraph_data*, %struct.fgraph_data** %7, align 8
  %54 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %53, i32 0, i32 2
  %55 = bitcast %struct.ftrace_graph_ret_entry* %54 to %struct.ftrace_graph_ent_entry*
  store %struct.ftrace_graph_ent_entry* %55, %struct.ftrace_graph_ent_entry** %6, align 8
  %56 = load %struct.fgraph_data*, %struct.fgraph_data** %7, align 8
  %57 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %60 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %6, align 8
  %62 = bitcast %struct.ftrace_graph_ent_entry* %61 to %struct.ftrace_graph_ret_entry*
  %63 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %64 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @print_graph_entry(%struct.ftrace_graph_ret_entry* %62, %struct.trace_seq* %63, %struct.trace_iterator* %64, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %52
  %71 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %72 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = load %struct.fgraph_data*, %struct.fgraph_data** %7, align 8
  %78 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %81 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call %struct.TYPE_2__* @per_cpu_ptr(i32 %79, i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 4
  %85 = load i32, i32* @TRACE_TYPE_NO_CONSUME, align 4
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %76, %70, %52
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %89 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %3, align 4
  br label %127

91:                                               ; preds = %47, %44
  %92 = load %struct.trace_entry*, %struct.trace_entry** %8, align 8
  %93 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  switch i32 %94, label %121 [
    i32 130, label %95
    i32 129, label %108
    i32 128, label %119
    i32 131, label %119
  ]

95:                                               ; preds = %91
  %96 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %6, align 8
  %97 = bitcast %struct.ftrace_graph_ent_entry* %96 to %struct.ftrace_graph_ret_entry*
  %98 = load %struct.trace_entry*, %struct.trace_entry** %8, align 8
  %99 = call i32 @trace_assign_type(%struct.ftrace_graph_ret_entry* %97, %struct.trace_entry* %98)
  %100 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %6, align 8
  %101 = bitcast %struct.ftrace_graph_ent_entry* %12 to i8*
  %102 = bitcast %struct.ftrace_graph_ent_entry* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 4 %102, i64 4, i1 false)
  %103 = bitcast %struct.ftrace_graph_ent_entry* %12 to %struct.ftrace_graph_ret_entry*
  %104 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %105 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @print_graph_entry(%struct.ftrace_graph_ret_entry* %103, %struct.trace_seq* %104, %struct.trace_iterator* %105, i32 %106)
  store i32 %107, i32* %3, align 4
  br label %127

108:                                              ; preds = %91
  %109 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %13, align 8
  %110 = load %struct.trace_entry*, %struct.trace_entry** %8, align 8
  %111 = call i32 @trace_assign_type(%struct.ftrace_graph_ret_entry* %109, %struct.trace_entry* %110)
  %112 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %13, align 8
  %113 = getelementptr inbounds %struct.ftrace_graph_ret_entry, %struct.ftrace_graph_ret_entry* %112, i32 0, i32 0
  %114 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %115 = load %struct.trace_entry*, %struct.trace_entry** %8, align 8
  %116 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @print_graph_return(i32* %113, %struct.trace_seq* %114, %struct.trace_entry* %115, %struct.trace_iterator* %116, i32 %117)
  store i32 %118, i32* %3, align 4
  br label %127

119:                                              ; preds = %91, %91
  %120 = load i32, i32* @TRACE_TYPE_UNHANDLED, align 4
  store i32 %120, i32* %3, align 4
  br label %127

121:                                              ; preds = %91
  %122 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %123 = load %struct.trace_entry*, %struct.trace_entry** %8, align 8
  %124 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @print_graph_comment(%struct.trace_seq* %122, %struct.trace_entry* %123, %struct.trace_iterator* %124, i32 %125)
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %121, %119, %108, %95, %86, %36
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_2__* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @print_graph_entry(%struct.ftrace_graph_ret_entry*, %struct.trace_seq*, %struct.trace_iterator*, i32) #1

declare dso_local i32 @trace_assign_type(%struct.ftrace_graph_ret_entry*, %struct.trace_entry*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @print_graph_return(i32*, %struct.trace_seq*, %struct.trace_entry*, %struct.trace_iterator*, i32) #1

declare dso_local i32 @print_graph_comment(%struct.trace_seq*, %struct.trace_entry*, %struct.trace_iterator*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
