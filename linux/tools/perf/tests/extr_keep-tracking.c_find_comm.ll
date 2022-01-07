; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_keep-tracking.c_find_comm.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_keep-tracking.c_find_comm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { %struct.mmap*, %struct.TYPE_4__ }
%struct.mmap = type { i32 }
%struct.TYPE_4__ = type { i32 }
%union.perf_event = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { i64 }

@PERF_RECORD_COMM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*, i8*)* @find_comm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_comm(%struct.evlist* %0, i8* %1) #0 {
  %3 = alloca %struct.evlist*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca %struct.mmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %70, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.evlist*, %struct.evlist** %3, align 8
  %12 = getelementptr inbounds %struct.evlist, %struct.evlist* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %73

16:                                               ; preds = %9
  %17 = load %struct.evlist*, %struct.evlist** %3, align 8
  %18 = getelementptr inbounds %struct.evlist, %struct.evlist* %17, i32 0, i32 0
  %19 = load %struct.mmap*, %struct.mmap** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mmap, %struct.mmap* %19, i64 %21
  store %struct.mmap* %22, %struct.mmap** %6, align 8
  %23 = load %struct.mmap*, %struct.mmap** %6, align 8
  %24 = call i64 @perf_mmap__read_init(%struct.mmap* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %70

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %64, %27
  %29 = load %struct.mmap*, %struct.mmap** %6, align 8
  %30 = call %union.perf_event* @perf_mmap__read_event(%struct.mmap* %29)
  store %union.perf_event* %30, %union.perf_event** %5, align 8
  %31 = icmp ne %union.perf_event* %30, null
  br i1 %31, label %32, label %67

32:                                               ; preds = %28
  %33 = load %union.perf_event*, %union.perf_event** %5, align 8
  %34 = bitcast %union.perf_event* %33 to %struct.TYPE_5__*
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PERF_RECORD_COMM, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %32
  %40 = load %union.perf_event*, %union.perf_event** %5, align 8
  %41 = bitcast %union.perf_event* %40 to %struct.TYPE_6__*
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i64 (...) @getpid()
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %39
  %47 = load %union.perf_event*, %union.perf_event** %5, align 8
  %48 = bitcast %union.perf_event* %47 to %struct.TYPE_6__*
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i64 (...) @getpid()
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load %union.perf_event*, %union.perf_event** %5, align 8
  %55 = bitcast %union.perf_event* %54 to %struct.TYPE_6__*
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = call i64 @strcmp(i32 %57, i8* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %61, %53, %46, %39, %32
  %65 = load %struct.mmap*, %struct.mmap** %6, align 8
  %66 = call i32 @perf_mmap__consume(%struct.mmap* %65)
  br label %28

67:                                               ; preds = %28
  %68 = load %struct.mmap*, %struct.mmap** %6, align 8
  %69 = call i32 @perf_mmap__read_done(%struct.mmap* %68)
  br label %70

70:                                               ; preds = %67, %26
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %9

73:                                               ; preds = %9
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i64 @perf_mmap__read_init(%struct.mmap*) #1

declare dso_local %union.perf_event* @perf_mmap__read_event(%struct.mmap*) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @perf_mmap__consume(%struct.mmap*) #1

declare dso_local i32 @perf_mmap__read_done(%struct.mmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
