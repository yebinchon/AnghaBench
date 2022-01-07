; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_perf_top__mmap_read_idx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_perf_top__mmap_read_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_top = type { %struct.TYPE_2__, %struct.evlist*, %struct.record_opts }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.evlist = type { %struct.mmap*, %struct.mmap* }
%struct.mmap = type { i32 }
%struct.record_opts = type { i64 }
%union.perf_event = type { i32 }

@last_timestamp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_top*, i32)* @perf_top__mmap_read_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_top__mmap_read_idx(%struct.perf_top* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_top*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.record_opts*, align 8
  %6 = alloca %struct.evlist*, align 8
  %7 = alloca %struct.mmap*, align 8
  %8 = alloca %union.perf_event*, align 8
  %9 = alloca i32, align 4
  store %struct.perf_top* %0, %struct.perf_top** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %11 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %10, i32 0, i32 2
  store %struct.record_opts* %11, %struct.record_opts** %5, align 8
  %12 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %13 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %12, i32 0, i32 1
  %14 = load %struct.evlist*, %struct.evlist** %13, align 8
  store %struct.evlist* %14, %struct.evlist** %6, align 8
  %15 = load %struct.record_opts*, %struct.record_opts** %5, align 8
  %16 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.evlist*, %struct.evlist** %6, align 8
  %21 = getelementptr inbounds %struct.evlist, %struct.evlist* %20, i32 0, i32 1
  %22 = load %struct.mmap*, %struct.mmap** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mmap, %struct.mmap* %22, i64 %24
  br label %33

26:                                               ; preds = %2
  %27 = load %struct.evlist*, %struct.evlist** %6, align 8
  %28 = getelementptr inbounds %struct.evlist, %struct.evlist* %27, i32 0, i32 0
  %29 = load %struct.mmap*, %struct.mmap** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mmap, %struct.mmap* %29, i64 %31
  br label %33

33:                                               ; preds = %26, %19
  %34 = phi %struct.mmap* [ %25, %19 ], [ %32, %26 ]
  store %struct.mmap* %34, %struct.mmap** %7, align 8
  %35 = load %struct.mmap*, %struct.mmap** %7, align 8
  %36 = call i64 @perf_mmap__read_init(%struct.mmap* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %93

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %89, %39
  %41 = load %struct.mmap*, %struct.mmap** %7, align 8
  %42 = call %union.perf_event* @perf_mmap__read_event(%struct.mmap* %41)
  store %union.perf_event* %42, %union.perf_event** %8, align 8
  %43 = icmp ne %union.perf_event* %42, null
  br i1 %43, label %44, label %90

44:                                               ; preds = %40
  %45 = load %struct.evlist*, %struct.evlist** %6, align 8
  %46 = load %union.perf_event*, %union.perf_event** %8, align 8
  %47 = call i32 @perf_evlist__parse_sample_timestamp(%struct.evlist* %45, %union.perf_event* %46, i32* @last_timestamp)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %90

54:                                               ; preds = %50, %44
  %55 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %56 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %union.perf_event*, %union.perf_event** %8, align 8
  %60 = load i32, i32* @last_timestamp, align 4
  %61 = call i32 @ordered_events__queue(i32 %58, %union.perf_event* %59, i32 %60, i32 0)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %90

65:                                               ; preds = %54
  %66 = load %struct.mmap*, %struct.mmap** %7, align 8
  %67 = call i32 @perf_mmap__consume(%struct.mmap* %66)
  %68 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %69 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %65
  %74 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %75 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = call i32 @pthread_mutex_lock(i32* %76)
  %78 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %79 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %82 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = call i32 @pthread_cond_signal(i32* %83)
  %85 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %86 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = call i32 @pthread_mutex_unlock(i32* %87)
  br label %89

89:                                               ; preds = %73, %65
  br label %40

90:                                               ; preds = %64, %53, %40
  %91 = load %struct.mmap*, %struct.mmap** %7, align 8
  %92 = call i32 @perf_mmap__read_done(%struct.mmap* %91)
  br label %93

93:                                               ; preds = %90, %38
  ret void
}

declare dso_local i64 @perf_mmap__read_init(%struct.mmap*) #1

declare dso_local %union.perf_event* @perf_mmap__read_event(%struct.mmap*) #1

declare dso_local i32 @perf_evlist__parse_sample_timestamp(%struct.evlist*, %union.perf_event*, i32*) #1

declare dso_local i32 @ordered_events__queue(i32, %union.perf_event*, i32, i32) #1

declare dso_local i32 @perf_mmap__consume(%struct.mmap*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @perf_mmap__read_done(%struct.mmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
