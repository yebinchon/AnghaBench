; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_deliver_sample_group.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_deliver_sample_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32 }
%struct.perf_tool = type { i32 }
%union.perf_event = type { i32 }
%struct.perf_sample = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32* }
%struct.machine = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*, %struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.machine*)* @deliver_sample_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deliver_sample_group(%struct.evlist* %0, %struct.perf_tool* %1, %union.perf_event* %2, %struct.perf_sample* %3, %struct.machine* %4) #0 {
  %6 = alloca %struct.evlist*, align 8
  %7 = alloca %struct.perf_tool*, align 8
  %8 = alloca %union.perf_event*, align 8
  %9 = alloca %struct.perf_sample*, align 8
  %10 = alloca %struct.machine*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.evlist* %0, %struct.evlist** %6, align 8
  store %struct.perf_tool* %1, %struct.perf_tool** %7, align 8
  store %union.perf_event* %2, %union.perf_event** %8, align 8
  store %struct.perf_sample* %3, %struct.perf_sample** %9, align 8
  store %struct.machine* %4, %struct.machine** %10, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %15

15:                                               ; preds = %41, %5
  %16 = load i64, i64* %12, align 8
  %17 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %18 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %16, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %15
  %24 = load %struct.evlist*, %struct.evlist** %6, align 8
  %25 = load %struct.perf_tool*, %struct.perf_tool** %7, align 8
  %26 = load %union.perf_event*, %union.perf_event** %8, align 8
  %27 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %28 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %29 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load %struct.machine*, %struct.machine** %10, align 8
  %36 = call i32 @deliver_sample_value(%struct.evlist* %24, %struct.perf_tool* %25, %union.perf_event* %26, %struct.perf_sample* %27, i32* %34, %struct.machine* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  br label %44

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %12, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %12, align 8
  br label %15

44:                                               ; preds = %39, %15
  %45 = load i32, i32* %11, align 4
  ret i32 %45
}

declare dso_local i32 @deliver_sample_value(%struct.evlist*, %struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, i32*, %struct.machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
