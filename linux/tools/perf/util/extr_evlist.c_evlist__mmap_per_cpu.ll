; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_evlist__mmap_per_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_evlist__mmap_per_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mmap_params = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"perf event ring buffer mmapped per cpu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*, %struct.mmap_params*)* @evlist__mmap_per_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evlist__mmap_per_cpu(%struct.evlist* %0, %struct.mmap_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evlist*, align 8
  %5 = alloca %struct.mmap_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %4, align 8
  store %struct.mmap_params* %1, %struct.mmap_params** %5, align 8
  %12 = load %struct.evlist*, %struct.evlist** %4, align 8
  %13 = getelementptr inbounds %struct.evlist, %struct.evlist* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @perf_cpu_map__nr(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.evlist*, %struct.evlist** %4, align 8
  %18 = getelementptr inbounds %struct.evlist, %struct.evlist* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @perf_thread_map__nr(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = call i32 @pr_debug2(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %51, %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %23
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %28 = load %struct.mmap_params*, %struct.mmap_params** %5, align 8
  %29 = getelementptr inbounds %struct.mmap_params, %struct.mmap_params* %28, i32 0, i32 0
  %30 = load %struct.evlist*, %struct.evlist** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @auxtrace_mmap_params__set_idx(i32* %29, %struct.evlist* %30, i32 %31, i32 1)
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %47, %27
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load %struct.evlist*, %struct.evlist** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.mmap_params*, %struct.mmap_params** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @evlist__mmap_per_evsel(%struct.evlist* %38, i32 %39, %struct.mmap_params* %40, i32 %41, i32 %42, i32* %10, i32* %11)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %55

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %33

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %23

54:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %58

55:                                               ; preds = %45
  %56 = load %struct.evlist*, %struct.evlist** %4, align 8
  %57 = call i32 @evlist__munmap_nofree(%struct.evlist* %56)
  store i32 -1, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %54
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @perf_cpu_map__nr(i32) #1

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
