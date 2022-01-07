; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_synthetic-events.c_perf_event__synthesize_namespaces.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_synthetic-events.c_perf_event__synthesize_namespaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_tool = type { i32 }
%union.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, %struct.perf_ns_link_info*, i8*, i8* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.perf_ns_link_info = type { i32 }
%struct.machine = type { i64 }

@NR_NAMESPACES = common dso_local global i32 0, align 4
@PERF_RECORD_NAMESPACES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_event__synthesize_namespaces(%struct.perf_tool* %0, %union.perf_event* %1, i8* %2, i8* %3, i32 %4, %struct.machine* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_tool*, align 8
  %9 = alloca %union.perf_event*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.machine*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.perf_ns_link_info*, align 8
  store %struct.perf_tool* %0, %struct.perf_tool** %8, align 8
  store %union.perf_event* %1, %union.perf_event** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.machine* %5, %struct.machine** %13, align 8
  %16 = load %struct.perf_tool*, %struct.perf_tool** %8, align 8
  %17 = icmp ne %struct.perf_tool* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %6
  %19 = load %struct.perf_tool*, %struct.perf_tool** %8, align 8
  %20 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %6
  store i32 0, i32* %7, align 4
  br label %97

24:                                               ; preds = %18
  %25 = load %union.perf_event*, %union.perf_event** %9, align 8
  %26 = bitcast %union.perf_event* %25 to %struct.TYPE_4__*
  %27 = load i32, i32* @NR_NAMESPACES, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = add i64 48, %29
  %31 = load %struct.machine*, %struct.machine** %13, align 8
  %32 = getelementptr inbounds %struct.machine, %struct.machine* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %30, %33
  %35 = call i32 @memset(%struct.TYPE_4__* %26, i32 0, i64 %34)
  %36 = load i8*, i8** %11, align 8
  %37 = load %union.perf_event*, %union.perf_event** %9, align 8
  %38 = bitcast %union.perf_event* %37 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  store i8* %36, i8** %39, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load %union.perf_event*, %union.perf_event** %9, align 8
  %42 = bitcast %union.perf_event* %41 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  store i8* %40, i8** %43, align 8
  %44 = load i32, i32* @NR_NAMESPACES, align 4
  %45 = load %union.perf_event*, %union.perf_event** %9, align 8
  %46 = bitcast %union.perf_event* %45 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %union.perf_event*, %union.perf_event** %9, align 8
  %49 = bitcast %union.perf_event* %48 to %struct.TYPE_4__*
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load %struct.perf_ns_link_info*, %struct.perf_ns_link_info** %50, align 8
  store %struct.perf_ns_link_info* %51, %struct.perf_ns_link_info** %15, align 8
  store i64 0, i64* %14, align 8
  br label %52

52:                                               ; preds = %68, %24
  %53 = load i64, i64* %14, align 8
  %54 = load %union.perf_event*, %union.perf_event** %9, align 8
  %55 = bitcast %union.perf_event* %54 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %53, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %52
  %61 = load i8*, i8** %10, align 8
  %62 = load i64, i64* %14, align 8
  %63 = call i32 @perf_ns__name(i64 %62)
  %64 = load %struct.perf_ns_link_info*, %struct.perf_ns_link_info** %15, align 8
  %65 = load i64, i64* %14, align 8
  %66 = getelementptr inbounds %struct.perf_ns_link_info, %struct.perf_ns_link_info* %64, i64 %65
  %67 = call i32 @perf_event__get_ns_link_info(i8* %61, i32 %63, %struct.perf_ns_link_info* %66)
  br label %68

68:                                               ; preds = %60
  %69 = load i64, i64* %14, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %14, align 8
  br label %52

71:                                               ; preds = %52
  %72 = load i32, i32* @PERF_RECORD_NAMESPACES, align 4
  %73 = load %union.perf_event*, %union.perf_event** %9, align 8
  %74 = bitcast %union.perf_event* %73 to %struct.TYPE_4__*
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 %72, i32* %76, align 8
  %77 = load i32, i32* @NR_NAMESPACES, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = add i64 48, %79
  %81 = load %struct.machine*, %struct.machine** %13, align 8
  %82 = getelementptr inbounds %struct.machine, %struct.machine* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %80, %83
  %85 = load %union.perf_event*, %union.perf_event** %9, align 8
  %86 = bitcast %union.perf_event* %85 to %struct.TYPE_4__*
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i64 %84, i64* %88, align 8
  %89 = load %struct.perf_tool*, %struct.perf_tool** %8, align 8
  %90 = load %union.perf_event*, %union.perf_event** %9, align 8
  %91 = load %struct.machine*, %struct.machine** %13, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i64 @perf_tool__process_synth_event(%struct.perf_tool* %89, %union.perf_event* %90, %struct.machine* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %71
  store i32 -1, i32* %7, align 4
  br label %97

96:                                               ; preds = %71
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %96, %95, %23
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i64) #1

declare dso_local i32 @perf_event__get_ns_link_info(i8*, i32, %struct.perf_ns_link_info*) #1

declare dso_local i32 @perf_ns__name(i64) #1

declare dso_local i64 @perf_tool__process_synth_event(%struct.perf_tool*, %union.perf_event*, %struct.machine*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
