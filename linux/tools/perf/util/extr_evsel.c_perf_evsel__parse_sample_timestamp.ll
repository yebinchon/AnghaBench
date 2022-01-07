; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__parse_sample_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__parse_sample_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { i64 }
%struct.evsel = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%union.perf_event = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i64 }

@PERF_SAMPLE_TIME = common dso_local global i32 0, align 4
@PERF_RECORD_SAMPLE = common dso_local global i64 0, align 8
@__const.perf_evsel__parse_sample_timestamp.data = private unnamed_addr constant %struct.perf_sample { i64 -1 }, align 8
@EFAULT = common dso_local global i32 0, align 4
@PERF_SAMPLE_IDENTIFIER = common dso_local global i32 0, align 4
@PERF_SAMPLE_IP = common dso_local global i32 0, align 4
@PERF_SAMPLE_TID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evsel__parse_sample_timestamp(%struct.evsel* %0, %union.perf_event* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca %union.perf_event*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.perf_sample, align 8
  store %struct.evsel* %0, %struct.evsel** %5, align 8
  store %union.perf_event* %1, %union.perf_event** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.evsel*, %struct.evsel** %5, align 8
  %12 = getelementptr inbounds %struct.evsel, %struct.evsel* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @PERF_SAMPLE_TIME, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %96

21:                                               ; preds = %3
  %22 = load %union.perf_event*, %union.perf_event** %6, align 8
  %23 = bitcast %union.perf_event* %22 to %struct.TYPE_5__*
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PERF_RECORD_SAMPLE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %21
  %29 = bitcast %struct.perf_sample* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 bitcast (%struct.perf_sample* @__const.perf_evsel__parse_sample_timestamp.data to i8*), i64 8, i1 false)
  %30 = load %struct.evsel*, %struct.evsel** %5, align 8
  %31 = getelementptr inbounds %struct.evsel, %struct.evsel* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %96

37:                                               ; preds = %28
  %38 = load %struct.evsel*, %struct.evsel** %5, align 8
  %39 = load %union.perf_event*, %union.perf_event** %6, align 8
  %40 = call i64 @perf_evsel__parse_id_sample(%struct.evsel* %38, %union.perf_event* %39, %struct.perf_sample* %10)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %96

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %10, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %4, align 4
  br label %96

48:                                               ; preds = %21
  %49 = load %union.perf_event*, %union.perf_event** %6, align 8
  %50 = bitcast %union.perf_event* %49 to %struct.TYPE_6__*
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %9, align 8
  %53 = load %union.perf_event*, %union.perf_event** %6, align 8
  %54 = load %struct.evsel*, %struct.evsel** %5, align 8
  %55 = getelementptr inbounds %struct.evsel, %struct.evsel* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @perf_event__check_size(%union.perf_event* %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i32, i32* @EFAULT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %96

62:                                               ; preds = %48
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @PERF_SAMPLE_IDENTIFIER, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %9, align 8
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @PERF_SAMPLE_IP, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %9, align 8
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @PERF_SAMPLE_TID, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %9, align 8
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @PERF_SAMPLE_TIME, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %91, %86
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %59, %43, %42, %36, %20
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @perf_evsel__parse_id_sample(%struct.evsel*, %union.perf_event*, %struct.perf_sample*) #2

declare dso_local i64 @perf_event__check_size(%union.perf_event*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
