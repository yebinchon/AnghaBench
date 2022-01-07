; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_get_return_for_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_get_return_for_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_graph_ret_entry = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.trace_iterator = type { i32, %struct.TYPE_6__*, %struct.fgraph_data* }
%struct.TYPE_6__ = type { i32 }
%struct.fgraph_data = type { %struct.ftrace_graph_ret_entry, %struct.ftrace_graph_ent_entry, i64 }
%struct.ftrace_graph_ent_entry = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.ring_buffer_iter = type { i32 }
%struct.ring_buffer_event = type { i32 }

@TRACE_GRAPH_RET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ftrace_graph_ret_entry* (%struct.trace_iterator*, %struct.ftrace_graph_ent_entry*)* @get_return_for_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ftrace_graph_ret_entry* @get_return_for_leaf(%struct.trace_iterator* %0, %struct.ftrace_graph_ent_entry* %1) #0 {
  %3 = alloca %struct.ftrace_graph_ret_entry*, align 8
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca %struct.ftrace_graph_ent_entry*, align 8
  %6 = alloca %struct.fgraph_data*, align 8
  %7 = alloca %struct.ring_buffer_iter*, align 8
  %8 = alloca %struct.ring_buffer_event*, align 8
  %9 = alloca %struct.ftrace_graph_ret_entry*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store %struct.ftrace_graph_ent_entry* %1, %struct.ftrace_graph_ent_entry** %5, align 8
  %10 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %11 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %10, i32 0, i32 2
  %12 = load %struct.fgraph_data*, %struct.fgraph_data** %11, align 8
  store %struct.fgraph_data* %12, %struct.fgraph_data** %6, align 8
  store %struct.ring_buffer_iter* null, %struct.ring_buffer_iter** %7, align 8
  %13 = load %struct.fgraph_data*, %struct.fgraph_data** %6, align 8
  %14 = icmp ne %struct.fgraph_data* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.fgraph_data*, %struct.fgraph_data** %6, align 8
  %17 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.fgraph_data*, %struct.fgraph_data** %6, align 8
  %22 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %21, i32 0, i32 1
  store %struct.ftrace_graph_ent_entry* %22, %struct.ftrace_graph_ent_entry** %5, align 8
  %23 = load %struct.fgraph_data*, %struct.fgraph_data** %6, align 8
  %24 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %23, i32 0, i32 0
  store %struct.ftrace_graph_ret_entry* %24, %struct.ftrace_graph_ret_entry** %9, align 8
  br label %93

25:                                               ; preds = %15, %2
  %26 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %27 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %28 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.ring_buffer_iter* @trace_buffer_iter(%struct.trace_iterator* %26, i32 %29)
  store %struct.ring_buffer_iter* %30, %struct.ring_buffer_iter** %7, align 8
  %31 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %7, align 8
  %32 = icmp ne %struct.ring_buffer_iter* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %7, align 8
  %35 = call %struct.ring_buffer_event* @ring_buffer_iter_peek(%struct.ring_buffer_iter* %34, i32* null)
  store %struct.ring_buffer_event* %35, %struct.ring_buffer_event** %8, align 8
  br label %55

36:                                               ; preds = %25
  %37 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %38 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %43 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ring_buffer_consume(i32 %41, i32 %44, i32* null, i32* null)
  %46 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %47 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %52 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.ring_buffer_event* @ring_buffer_peek(i32 %50, i32 %53, i32* null, i32* null)
  store %struct.ring_buffer_event* %54, %struct.ring_buffer_event** %8, align 8
  br label %55

55:                                               ; preds = %36, %33
  %56 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %57 = icmp ne %struct.ring_buffer_event* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store %struct.ftrace_graph_ret_entry* null, %struct.ftrace_graph_ret_entry** %3, align 8
  br label %130

59:                                               ; preds = %55
  %60 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %61 = call %struct.ftrace_graph_ret_entry* @ring_buffer_event_data(%struct.ring_buffer_event* %60)
  store %struct.ftrace_graph_ret_entry* %61, %struct.ftrace_graph_ret_entry** %9, align 8
  %62 = load %struct.fgraph_data*, %struct.fgraph_data** %6, align 8
  %63 = icmp ne %struct.fgraph_data* %62, null
  br i1 %63, label %64, label %92

64:                                               ; preds = %59
  %65 = load %struct.fgraph_data*, %struct.fgraph_data** %6, align 8
  %66 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %65, i32 0, i32 1
  %67 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %5, align 8
  %68 = bitcast %struct.ftrace_graph_ent_entry* %66 to i8*
  %69 = bitcast %struct.ftrace_graph_ent_entry* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 16, i1 false)
  %70 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %9, align 8
  %71 = getelementptr inbounds %struct.ftrace_graph_ret_entry, %struct.ftrace_graph_ret_entry* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TRACE_GRAPH_RET, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %64
  %77 = load %struct.fgraph_data*, %struct.fgraph_data** %6, align 8
  %78 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %77, i32 0, i32 0
  %79 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %9, align 8
  %80 = bitcast %struct.ftrace_graph_ret_entry* %78 to i8*
  %81 = bitcast %struct.ftrace_graph_ret_entry* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 24, i1 false)
  br label %91

82:                                               ; preds = %64
  %83 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %9, align 8
  %84 = getelementptr inbounds %struct.ftrace_graph_ret_entry, %struct.ftrace_graph_ret_entry* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.fgraph_data*, %struct.fgraph_data** %6, align 8
  %88 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.ftrace_graph_ret_entry, %struct.ftrace_graph_ret_entry* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i64 %86, i64* %90, align 8
  br label %91

91:                                               ; preds = %82, %76
  br label %92

92:                                               ; preds = %91, %59
  br label %93

93:                                               ; preds = %92, %20
  %94 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %9, align 8
  %95 = getelementptr inbounds %struct.ftrace_graph_ret_entry, %struct.ftrace_graph_ret_entry* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @TRACE_GRAPH_RET, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  store %struct.ftrace_graph_ret_entry* null, %struct.ftrace_graph_ret_entry** %3, align 8
  br label %130

101:                                              ; preds = %93
  %102 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %5, align 8
  %103 = getelementptr inbounds %struct.ftrace_graph_ent_entry, %struct.ftrace_graph_ent_entry* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %9, align 8
  %107 = getelementptr inbounds %struct.ftrace_graph_ret_entry, %struct.ftrace_graph_ret_entry* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %105, %109
  br i1 %110, label %121, label %111

111:                                              ; preds = %101
  %112 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %5, align 8
  %113 = getelementptr inbounds %struct.ftrace_graph_ent_entry, %struct.ftrace_graph_ent_entry* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %9, align 8
  %117 = getelementptr inbounds %struct.ftrace_graph_ret_entry, %struct.ftrace_graph_ret_entry* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %115, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %111, %101
  store %struct.ftrace_graph_ret_entry* null, %struct.ftrace_graph_ret_entry** %3, align 8
  br label %130

122:                                              ; preds = %111
  %123 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %7, align 8
  %124 = icmp ne %struct.ring_buffer_iter* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %7, align 8
  %127 = call i32 @ring_buffer_read(%struct.ring_buffer_iter* %126, i32* null)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %9, align 8
  store %struct.ftrace_graph_ret_entry* %129, %struct.ftrace_graph_ret_entry** %3, align 8
  br label %130

130:                                              ; preds = %128, %121, %100, %58
  %131 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %3, align 8
  ret %struct.ftrace_graph_ret_entry* %131
}

declare dso_local %struct.ring_buffer_iter* @trace_buffer_iter(%struct.trace_iterator*, i32) #1

declare dso_local %struct.ring_buffer_event* @ring_buffer_iter_peek(%struct.ring_buffer_iter*, i32*) #1

declare dso_local i32 @ring_buffer_consume(i32, i32, i32*, i32*) #1

declare dso_local %struct.ring_buffer_event* @ring_buffer_peek(i32, i32, i32*, i32*) #1

declare dso_local %struct.ftrace_graph_ret_entry* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ring_buffer_read(%struct.ring_buffer_iter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
