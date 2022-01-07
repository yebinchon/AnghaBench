; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-kmem.c_perf_evsel__process_alloc_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-kmem.c_perf_evsel__process_alloc_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32 }
%struct.perf_sample = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"call_site\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"bytes_req\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"bytes_alloc\00", align 1
@total_requested = common dso_local global i32 0, align 4
@total_allocated = common dso_local global i32 0, align 4
@nr_allocs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, %struct.perf_sample*)* @perf_evsel__process_alloc_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__process_alloc_event(%struct.evsel* %0, %struct.perf_sample* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %struct.perf_sample*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.evsel* %0, %struct.evsel** %4, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %5, align 8
  %10 = load %struct.evsel*, %struct.evsel** %4, align 8
  %11 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %12 = call i8* @perf_evsel__intval(%struct.evsel* %10, %struct.perf_sample* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %13 = ptrtoint i8* %12 to i64
  store i64 %13, i64* %6, align 8
  %14 = load %struct.evsel*, %struct.evsel** %4, align 8
  %15 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %16 = call i8* @perf_evsel__intval(%struct.evsel* %14, %struct.perf_sample* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %17 = ptrtoint i8* %16 to i64
  store i64 %17, i64* %7, align 8
  %18 = load %struct.evsel*, %struct.evsel** %4, align 8
  %19 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %20 = call i8* @perf_evsel__intval(%struct.evsel* %18, %struct.perf_sample* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load %struct.evsel*, %struct.evsel** %4, align 8
  %23 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %24 = call i8* @perf_evsel__intval(%struct.evsel* %22, %struct.perf_sample* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %31 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @insert_alloc_stat(i64 %26, i64 %27, i32 %28, i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %2
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @insert_caller_stat(i64 %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %2
  store i32 -1, i32* %3, align 4
  br label %51

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @total_requested, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* @total_requested, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @total_allocated, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* @total_allocated, align 4
  %49 = load i32, i32* @nr_allocs, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @nr_allocs, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %42, %41
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i8* @perf_evsel__intval(%struct.evsel*, %struct.perf_sample*, i8*) #1

declare dso_local i64 @insert_alloc_stat(i64, i64, i32, i32, i32) #1

declare dso_local i64 @insert_caller_stat(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
