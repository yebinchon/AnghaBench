; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_call_path_from_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_call_path_from_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.call_path = type { i32 }
%struct.db_export = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.call_path }
%struct.machine = type { i32 }
%struct.thread = type { i32 }
%struct.perf_sample = type { i32 }
%struct.evsel = type { i32 }
%struct.callchain_cursor_node = type { i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.addr_location = type { i64, i32, %struct.TYPE_5__*, %struct.machine* }

@callchain_param = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@symbol_conf = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ORDER_CALLER = common dso_local global i32 0, align 4
@callchain_cursor = common dso_local global i32 0, align 4
@PERF_MAX_STACK_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.call_path* (%struct.db_export*, %struct.machine*, %struct.thread*, %struct.perf_sample*, %struct.evsel*)* @call_path_from_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.call_path* @call_path_from_sample(%struct.db_export* %0, %struct.machine* %1, %struct.thread* %2, %struct.perf_sample* %3, %struct.evsel* %4) #0 {
  %6 = alloca %struct.call_path*, align 8
  %7 = alloca %struct.db_export*, align 8
  %8 = alloca %struct.machine*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.perf_sample*, align 8
  %11 = alloca %struct.evsel*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.call_path*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.callchain_cursor_node*, align 8
  %17 = alloca %struct.addr_location, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.db_export* %0, %struct.db_export** %7, align 8
  store %struct.machine* %1, %struct.machine** %8, align 8
  store %struct.thread* %2, %struct.thread** %9, align 8
  store %struct.perf_sample* %3, %struct.perf_sample** %10, align 8
  store %struct.evsel* %4, %struct.evsel** %11, align 8
  %21 = load %struct.machine*, %struct.machine** %8, align 8
  %22 = call i32 @machine__kernel_start(%struct.machine* %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.db_export*, %struct.db_export** %7, align 8
  %24 = getelementptr inbounds %struct.db_export, %struct.db_export* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store %struct.call_path* %26, %struct.call_path** %13, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @callchain_param, i32 0, i32 0), align 4
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @symbol_conf, i32 0, i32 0), align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %5
  %31 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %32 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30, %5
  store %struct.call_path* null, %struct.call_path** %6, align 8
  br label %112

36:                                               ; preds = %30
  %37 = load i32, i32* @ORDER_CALLER, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @callchain_param, i32 0, i32 0), align 4
  %38 = load %struct.thread*, %struct.thread** %9, align 8
  %39 = load %struct.evsel*, %struct.evsel** %11, align 8
  %40 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %41 = load i32, i32* @PERF_MAX_STACK_DEPTH, align 4
  %42 = call i32 @thread__resolve_callchain(%struct.thread* %38, i32* @callchain_cursor, %struct.evsel* %39, %struct.perf_sample* %40, i32* null, i32* null, i32 %41)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @callchain_param, i32 0, i32 0), align 4
  store %struct.call_path* null, %struct.call_path** %6, align 8
  br label %112

47:                                               ; preds = %36
  %48 = call i32 @callchain_cursor_commit(i32* @callchain_cursor)
  br label %49

49:                                               ; preds = %47, %86
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %50 = call i32 @memset(%struct.addr_location* %17, i32 0, i32 32)
  %51 = call %struct.callchain_cursor_node* @callchain_cursor_current(i32* @callchain_cursor)
  store %struct.callchain_cursor_node* %51, %struct.callchain_cursor_node** %16, align 8
  %52 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %16, align 8
  %53 = icmp ne %struct.callchain_cursor_node* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %101

55:                                               ; preds = %49
  %56 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %16, align 8
  %57 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  store i64 %58, i64* %59, align 8
  %60 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %16, align 8
  %61 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 2
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %63, align 8
  %64 = load %struct.machine*, %struct.machine** %8, align 8
  %65 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 3
  store %struct.machine* %64, %struct.machine** %65, align 8
  %66 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %16, align 8
  %67 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 1
  store i32 %68, i32* %69, align 8
  %70 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = icmp ne %struct.TYPE_5__* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %55
  %74 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 2
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @dso__find_symbol(i32 %81, i32 %83)
  %85 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  store i64 %84, i64* %85, align 8
  br label %86

86:                                               ; preds = %77, %73, %55
  %87 = load %struct.db_export*, %struct.db_export** %7, align 8
  %88 = call i32 @db_ids_from_al(%struct.db_export* %87, %struct.addr_location* %17, i32* %18, i32* %19, i32* %20)
  %89 = load %struct.db_export*, %struct.db_export** %7, align 8
  %90 = getelementptr inbounds %struct.db_export, %struct.db_export* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load %struct.call_path*, %struct.call_path** %13, align 8
  %93 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %17, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %16, align 8
  %96 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call %struct.call_path* @call_path__findnew(%struct.TYPE_8__* %91, %struct.call_path* %92, i64 %94, i32 %97, i32 %98)
  store %struct.call_path* %99, %struct.call_path** %13, align 8
  %100 = call i32 @callchain_cursor_advance(i32* @callchain_cursor)
  br label %49

101:                                              ; preds = %54
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @callchain_param, i32 0, i32 0), align 4
  %103 = load %struct.call_path*, %struct.call_path** %13, align 8
  %104 = load %struct.db_export*, %struct.db_export** %7, align 8
  %105 = getelementptr inbounds %struct.db_export, %struct.db_export* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = icmp eq %struct.call_path* %103, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  store %struct.call_path* null, %struct.call_path** %6, align 8
  br label %112

110:                                              ; preds = %101
  %111 = load %struct.call_path*, %struct.call_path** %13, align 8
  store %struct.call_path* %111, %struct.call_path** %6, align 8
  br label %112

112:                                              ; preds = %110, %109, %45, %35
  %113 = load %struct.call_path*, %struct.call_path** %6, align 8
  ret %struct.call_path* %113
}

declare dso_local i32 @machine__kernel_start(%struct.machine*) #1

declare dso_local i32 @thread__resolve_callchain(%struct.thread*, i32*, %struct.evsel*, %struct.perf_sample*, i32*, i32*, i32) #1

declare dso_local i32 @callchain_cursor_commit(i32*) #1

declare dso_local i32 @memset(%struct.addr_location*, i32, i32) #1

declare dso_local %struct.callchain_cursor_node* @callchain_cursor_current(i32*) #1

declare dso_local i64 @dso__find_symbol(i32, i32) #1

declare dso_local i32 @db_ids_from_al(%struct.db_export*, %struct.addr_location*, i32*, i32*, i32*) #1

declare dso_local %struct.call_path* @call_path__findnew(%struct.TYPE_8__*, %struct.call_path*, i64, i32, i32) #1

declare dso_local i32 @callchain_cursor_advance(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
