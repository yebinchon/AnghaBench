; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_backward-ring-buffer.c_count_samples.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_backward-ring-buffer.c_count_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { %struct.mmap*, %struct.TYPE_4__ }
%struct.mmap = type { i32 }
%struct.TYPE_4__ = type { i32 }
%union.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Unexpected record of type %d\0A\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@TEST_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*, i32*, i32*)* @count_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_samples(%struct.evlist* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evlist*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mmap*, align 8
  %10 = alloca %union.perf_event*, align 8
  %11 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %54, %3
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.evlist*, %struct.evlist** %5, align 8
  %15 = getelementptr inbounds %struct.evlist, %struct.evlist* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %57

19:                                               ; preds = %12
  %20 = load %struct.evlist*, %struct.evlist** %5, align 8
  %21 = getelementptr inbounds %struct.evlist, %struct.evlist* %20, i32 0, i32 0
  %22 = load %struct.mmap*, %struct.mmap** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mmap, %struct.mmap* %22, i64 %24
  store %struct.mmap* %25, %struct.mmap** %9, align 8
  %26 = load %struct.mmap*, %struct.mmap** %9, align 8
  %27 = call i32 @perf_mmap__read_init(%struct.mmap* %26)
  br label %28

28:                                               ; preds = %50, %19
  %29 = load %struct.mmap*, %struct.mmap** %9, align 8
  %30 = call %union.perf_event* @perf_mmap__read_event(%struct.mmap* %29)
  store %union.perf_event* %30, %union.perf_event** %10, align 8
  %31 = icmp ne %union.perf_event* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load %union.perf_event*, %union.perf_event** %10, align 8
  %34 = bitcast %union.perf_event* %33 to %struct.TYPE_3__*
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  switch i32 %37, label %46 [
    i32 128, label %38
    i32 129, label %42
  ]

38:                                               ; preds = %32
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %50

42:                                               ; preds = %32
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %50

46:                                               ; preds = %32
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @TEST_FAIL, align 4
  store i32 %49, i32* %4, align 4
  br label %59

50:                                               ; preds = %42, %38
  br label %28

51:                                               ; preds = %28
  %52 = load %struct.mmap*, %struct.mmap** %9, align 8
  %53 = call i32 @perf_mmap__read_done(%struct.mmap* %52)
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %12

57:                                               ; preds = %12
  %58 = load i32, i32* @TEST_OK, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %46
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @perf_mmap__read_init(%struct.mmap*) #1

declare dso_local %union.perf_event* @perf_mmap__read_event(%struct.mmap*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @perf_mmap__read_done(%struct.mmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
