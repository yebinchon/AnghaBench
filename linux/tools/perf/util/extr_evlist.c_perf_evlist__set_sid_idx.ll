; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__set_sid_idx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__set_sid_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.evsel = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.perf_sample_id = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evlist*, %struct.evsel*, i32, i32, i32)* @perf_evlist__set_sid_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_evlist__set_sid_idx(%struct.evlist* %0, %struct.evsel* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.evlist*, align 8
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.perf_sample_id*, align 8
  store %struct.evlist* %0, %struct.evlist** %6, align 8
  store %struct.evsel* %1, %struct.evsel** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.evsel*, %struct.evsel** %7, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call %struct.perf_sample_id* @SID(%struct.evsel* %12, i32 %13, i32 %14)
  store %struct.perf_sample_id* %15, %struct.perf_sample_id** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.perf_sample_id*, %struct.perf_sample_id** %11, align 8
  %18 = getelementptr inbounds %struct.perf_sample_id, %struct.perf_sample_id* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.evlist*, %struct.evlist** %6, align 8
  %20 = getelementptr inbounds %struct.evlist, %struct.evlist* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %5
  %25 = load i32, i32* %9, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load %struct.evlist*, %struct.evlist** %6, align 8
  %29 = getelementptr inbounds %struct.evlist, %struct.evlist* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.perf_sample_id*, %struct.perf_sample_id** %11, align 8
  %39 = getelementptr inbounds %struct.perf_sample_id, %struct.perf_sample_id* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %43

40:                                               ; preds = %24, %5
  %41 = load %struct.perf_sample_id*, %struct.perf_sample_id** %11, align 8
  %42 = getelementptr inbounds %struct.perf_sample_id, %struct.perf_sample_id* %41, i32 0, i32 1
  store i32 -1, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %27
  %44 = load %struct.evsel*, %struct.evsel** %7, align 8
  %45 = getelementptr inbounds %struct.evsel, %struct.evsel* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %43
  %50 = load %struct.evlist*, %struct.evlist** %6, align 8
  %51 = getelementptr inbounds %struct.evlist, %struct.evlist* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load i32, i32* %10, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load %struct.evlist*, %struct.evlist** %6, align 8
  %60 = getelementptr inbounds %struct.evlist, %struct.evlist* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @perf_thread_map__pid(i64 %62, i32 %63)
  %65 = load %struct.perf_sample_id*, %struct.perf_sample_id** %11, align 8
  %66 = getelementptr inbounds %struct.perf_sample_id, %struct.perf_sample_id* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  br label %70

67:                                               ; preds = %55, %49, %43
  %68 = load %struct.perf_sample_id*, %struct.perf_sample_id** %11, align 8
  %69 = getelementptr inbounds %struct.perf_sample_id, %struct.perf_sample_id* %68, i32 0, i32 2
  store i32 -1, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %58
  ret void
}

declare dso_local %struct.perf_sample_id* @SID(%struct.evsel*, i32, i32) #1

declare dso_local i32 @perf_thread_map__pid(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
