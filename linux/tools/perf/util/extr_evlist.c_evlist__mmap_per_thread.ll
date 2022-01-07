; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_evlist__mmap_per_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_evlist__mmap_per_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mmap_params = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"perf event ring buffer mmapped per thread\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*, %struct.mmap_params*)* @evlist__mmap_per_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evlist__mmap_per_thread(%struct.evlist* %0, %struct.mmap_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evlist*, align 8
  %5 = alloca %struct.mmap_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %4, align 8
  store %struct.mmap_params* %1, %struct.mmap_params** %5, align 8
  %10 = load %struct.evlist*, %struct.evlist** %4, align 8
  %11 = getelementptr inbounds %struct.evlist, %struct.evlist* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @perf_thread_map__nr(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = call i32 @pr_debug2(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %34, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %21 = load %struct.mmap_params*, %struct.mmap_params** %5, align 8
  %22 = getelementptr inbounds %struct.mmap_params, %struct.mmap_params* %21, i32 0, i32 0
  %23 = load %struct.evlist*, %struct.evlist** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @auxtrace_mmap_params__set_idx(i32* %22, %struct.evlist* %23, i32 %24, i32 0)
  %26 = load %struct.evlist*, %struct.evlist** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.mmap_params*, %struct.mmap_params** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @evlist__mmap_per_evsel(%struct.evlist* %26, i32 %27, %struct.mmap_params* %28, i32 0, i32 %29, i32* %8, i32* %9)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %38

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %16

37:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %41

38:                                               ; preds = %32
  %39 = load %struct.evlist*, %struct.evlist** %4, align 8
  %40 = call i32 @evlist__munmap_nofree(%struct.evlist* %39)
  store i32 -1, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %37
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @perf_thread_map__nr(i32) #1

declare dso_local i32 @pr_debug2(i8*) #1

declare dso_local i32 @auxtrace_mmap_params__set_idx(i32*, %struct.evlist*, i32, i32) #1

declare dso_local i64 @evlist__mmap_per_evsel(%struct.evlist*, i32, %struct.mmap_params*, i32, i32, i32*, i32*) #1

declare dso_local i32 @evlist__munmap_nofree(%struct.evlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
