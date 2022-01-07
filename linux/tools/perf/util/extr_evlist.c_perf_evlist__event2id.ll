; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__event2id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__event2id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i64, i64 }
%union.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32* }

@PERF_RECORD_SAMPLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*, %union.perf_event*, i32*)* @perf_evlist__event2id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evlist__event2id(%struct.evlist* %0, %union.perf_event* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evlist*, align 8
  %6 = alloca %union.perf_event*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.evlist* %0, %struct.evlist** %5, align 8
  store %union.perf_event* %1, %union.perf_event** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %union.perf_event*, %union.perf_event** %6, align 8
  %11 = bitcast %union.perf_event* %10 to %struct.TYPE_3__*
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load %union.perf_event*, %union.perf_event** %6, align 8
  %15 = bitcast %union.perf_event* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = sub i64 %18, 16
  %20 = lshr i64 %19, 3
  store i64 %20, i64* %9, align 8
  %21 = load %union.perf_event*, %union.perf_event** %6, align 8
  %22 = bitcast %union.perf_event* %21 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PERF_RECORD_SAMPLE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %3
  %28 = load %struct.evlist*, %struct.evlist** %5, align 8
  %29 = getelementptr inbounds %struct.evlist, %struct.evlist* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %61

34:                                               ; preds = %27
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.evlist*, %struct.evlist** %5, align 8
  %37 = getelementptr inbounds %struct.evlist, %struct.evlist* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  br label %60

42:                                               ; preds = %3
  %43 = load %struct.evlist*, %struct.evlist** %5, align 8
  %44 = getelementptr inbounds %struct.evlist, %struct.evlist* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %61

49:                                               ; preds = %42
  %50 = load %struct.evlist*, %struct.evlist** %5, align 8
  %51 = getelementptr inbounds %struct.evlist, %struct.evlist* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %9, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %49, %34
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %48, %33
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
