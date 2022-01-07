; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__compute_deltas.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__compute_deltas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.perf_counts_values }
%struct.perf_counts_values = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_evsel__compute_deltas(%struct.evsel* %0, i32 %1, i32 %2, %struct.perf_counts_values* %3) #0 {
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_counts_values*, align 8
  %9 = alloca %struct.perf_counts_values, align 8
  store %struct.evsel* %0, %struct.evsel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.perf_counts_values* %3, %struct.perf_counts_values** %8, align 8
  %10 = load %struct.evsel*, %struct.evsel** %5, align 8
  %11 = getelementptr inbounds %struct.evsel, %struct.evsel* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %75

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load %struct.evsel*, %struct.evsel** %5, align 8
  %20 = getelementptr inbounds %struct.evsel, %struct.evsel* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast %struct.perf_counts_values* %9 to i8*
  %24 = bitcast %struct.perf_counts_values* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 24, i1 false)
  %25 = load %struct.evsel*, %struct.evsel** %5, align 8
  %26 = getelementptr inbounds %struct.evsel, %struct.evsel* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.perf_counts_values*, %struct.perf_counts_values** %8, align 8
  %30 = bitcast %struct.perf_counts_values* %28 to i8*
  %31 = bitcast %struct.perf_counts_values* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 24, i1 false)
  br label %50

32:                                               ; preds = %15
  %33 = load %struct.evsel*, %struct.evsel** %5, align 8
  %34 = getelementptr inbounds %struct.evsel, %struct.evsel* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call %struct.perf_counts_values* @perf_counts(%struct.TYPE_2__* %35, i32 %36, i32 %37)
  %39 = bitcast %struct.perf_counts_values* %9 to i8*
  %40 = bitcast %struct.perf_counts_values* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 24, i1 false)
  %41 = load %struct.evsel*, %struct.evsel** %5, align 8
  %42 = getelementptr inbounds %struct.evsel, %struct.evsel* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call %struct.perf_counts_values* @perf_counts(%struct.TYPE_2__* %43, i32 %44, i32 %45)
  %47 = load %struct.perf_counts_values*, %struct.perf_counts_values** %8, align 8
  %48 = bitcast %struct.perf_counts_values* %46 to i8*
  %49 = bitcast %struct.perf_counts_values* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 24, i1 false)
  br label %50

50:                                               ; preds = %32, %18
  %51 = load %struct.perf_counts_values*, %struct.perf_counts_values** %8, align 8
  %52 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %9, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %53, %55
  %57 = load %struct.perf_counts_values*, %struct.perf_counts_values** %8, align 8
  %58 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load %struct.perf_counts_values*, %struct.perf_counts_values** %8, align 8
  %60 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %9, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %61, %63
  %65 = load %struct.perf_counts_values*, %struct.perf_counts_values** %8, align 8
  %66 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.perf_counts_values*, %struct.perf_counts_values** %8, align 8
  %68 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %9, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %69, %71
  %73 = load %struct.perf_counts_values*, %struct.perf_counts_values** %8, align 8
  %74 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %50, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.perf_counts_values* @perf_counts(%struct.TYPE_2__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
