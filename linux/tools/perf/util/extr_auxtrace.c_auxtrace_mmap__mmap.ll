; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_mmap__mmap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_mmap__mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_mmap = type { i32*, i32, i32, i32, i64, i64, i32, i8* }
%struct.auxtrace_mmap_params = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.perf_event_mmap_page = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Uninitialized auxtrace_mmap\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot use AUX area tracing mmaps\0A\00", align 1
@MAP_FAILED = common dso_local global i32* null, align 8
@MAP_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auxtrace_mmap__mmap(%struct.auxtrace_mmap* %0, %struct.auxtrace_mmap_params* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.auxtrace_mmap*, align 8
  %7 = alloca %struct.auxtrace_mmap_params*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.perf_event_mmap_page*, align 8
  store %struct.auxtrace_mmap* %0, %struct.auxtrace_mmap** %6, align 8
  store %struct.auxtrace_mmap_params* %1, %struct.auxtrace_mmap_params** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.perf_event_mmap_page*
  store %struct.perf_event_mmap_page* %12, %struct.perf_event_mmap_page** %10, align 8
  %13 = load %struct.auxtrace_mmap*, %struct.auxtrace_mmap** %6, align 8
  %14 = getelementptr inbounds %struct.auxtrace_mmap, %struct.auxtrace_mmap* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @WARN_ONCE(i32* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.auxtrace_mmap*, %struct.auxtrace_mmap** %6, align 8
  %19 = getelementptr inbounds %struct.auxtrace_mmap, %struct.auxtrace_mmap* %18, i32 0, i32 7
  store i8* %17, i8** %19, align 8
  %20 = load %struct.auxtrace_mmap_params*, %struct.auxtrace_mmap_params** %7, align 8
  %21 = getelementptr inbounds %struct.auxtrace_mmap_params, %struct.auxtrace_mmap_params* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.auxtrace_mmap*, %struct.auxtrace_mmap** %6, align 8
  %24 = getelementptr inbounds %struct.auxtrace_mmap, %struct.auxtrace_mmap* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load %struct.auxtrace_mmap_params*, %struct.auxtrace_mmap_params** %7, align 8
  %26 = getelementptr inbounds %struct.auxtrace_mmap_params, %struct.auxtrace_mmap_params* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.auxtrace_mmap*, %struct.auxtrace_mmap** %6, align 8
  %29 = getelementptr inbounds %struct.auxtrace_mmap, %struct.auxtrace_mmap* %28, i32 0, i32 5
  store i64 %27, i64* %29, align 8
  %30 = load %struct.auxtrace_mmap*, %struct.auxtrace_mmap** %6, align 8
  %31 = getelementptr inbounds %struct.auxtrace_mmap, %struct.auxtrace_mmap* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.auxtrace_mmap_params*, %struct.auxtrace_mmap_params** %7, align 8
  %33 = getelementptr inbounds %struct.auxtrace_mmap_params, %struct.auxtrace_mmap_params* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.auxtrace_mmap*, %struct.auxtrace_mmap** %6, align 8
  %36 = getelementptr inbounds %struct.auxtrace_mmap, %struct.auxtrace_mmap* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.auxtrace_mmap_params*, %struct.auxtrace_mmap_params** %7, align 8
  %38 = getelementptr inbounds %struct.auxtrace_mmap_params, %struct.auxtrace_mmap_params* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.auxtrace_mmap*, %struct.auxtrace_mmap** %6, align 8
  %41 = getelementptr inbounds %struct.auxtrace_mmap, %struct.auxtrace_mmap* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.auxtrace_mmap_params*, %struct.auxtrace_mmap_params** %7, align 8
  %43 = getelementptr inbounds %struct.auxtrace_mmap_params, %struct.auxtrace_mmap_params* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.auxtrace_mmap*, %struct.auxtrace_mmap** %6, align 8
  %46 = getelementptr inbounds %struct.auxtrace_mmap, %struct.auxtrace_mmap* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.auxtrace_mmap_params*, %struct.auxtrace_mmap_params** %7, align 8
  %48 = getelementptr inbounds %struct.auxtrace_mmap_params, %struct.auxtrace_mmap_params* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %4
  %52 = load %struct.auxtrace_mmap*, %struct.auxtrace_mmap** %6, align 8
  %53 = getelementptr inbounds %struct.auxtrace_mmap, %struct.auxtrace_mmap* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  store i32 0, i32* %5, align 4
  br label %56

54:                                               ; preds = %4
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @WARN_ONCE(i32*, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
