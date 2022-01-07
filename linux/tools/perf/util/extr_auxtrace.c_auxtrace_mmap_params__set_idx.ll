; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_mmap_params__set_idx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_mmap_params__set_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_mmap_params = type { i32, i32, i32 }
%struct.evlist = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @auxtrace_mmap_params__set_idx(%struct.auxtrace_mmap_params* %0, %struct.evlist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.auxtrace_mmap_params*, align 8
  %6 = alloca %struct.evlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.auxtrace_mmap_params* %0, %struct.auxtrace_mmap_params** %5, align 8
  store %struct.evlist* %1, %struct.evlist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.auxtrace_mmap_params*, %struct.auxtrace_mmap_params** %5, align 8
  %11 = getelementptr inbounds %struct.auxtrace_mmap_params, %struct.auxtrace_mmap_params* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %4
  %15 = load %struct.evlist*, %struct.evlist** %6, align 8
  %16 = getelementptr inbounds %struct.evlist, %struct.evlist* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.auxtrace_mmap_params*, %struct.auxtrace_mmap_params** %5, align 8
  %26 = getelementptr inbounds %struct.auxtrace_mmap_params, %struct.auxtrace_mmap_params* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.evlist*, %struct.evlist** %6, align 8
  %28 = getelementptr inbounds %struct.evlist, %struct.evlist* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %14
  %33 = load %struct.evlist*, %struct.evlist** %6, align 8
  %34 = getelementptr inbounds %struct.evlist, %struct.evlist* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i8* @perf_thread_map__pid(i64 %36, i32 0)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.auxtrace_mmap_params*, %struct.auxtrace_mmap_params** %5, align 8
  %40 = getelementptr inbounds %struct.auxtrace_mmap_params, %struct.auxtrace_mmap_params* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  br label %44

41:                                               ; preds = %14
  %42 = load %struct.auxtrace_mmap_params*, %struct.auxtrace_mmap_params** %5, align 8
  %43 = getelementptr inbounds %struct.auxtrace_mmap_params, %struct.auxtrace_mmap_params* %42, i32 0, i32 2
  store i32 -1, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %32
  br label %57

45:                                               ; preds = %4
  %46 = load %struct.auxtrace_mmap_params*, %struct.auxtrace_mmap_params** %5, align 8
  %47 = getelementptr inbounds %struct.auxtrace_mmap_params, %struct.auxtrace_mmap_params* %46, i32 0, i32 1
  store i32 -1, i32* %47, align 4
  %48 = load %struct.evlist*, %struct.evlist** %6, align 8
  %49 = getelementptr inbounds %struct.evlist, %struct.evlist* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i8* @perf_thread_map__pid(i64 %51, i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.auxtrace_mmap_params*, %struct.auxtrace_mmap_params** %5, align 8
  %56 = getelementptr inbounds %struct.auxtrace_mmap_params, %struct.auxtrace_mmap_params* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %45, %44
  ret void
}

declare dso_local i8* @perf_thread_map__pid(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
