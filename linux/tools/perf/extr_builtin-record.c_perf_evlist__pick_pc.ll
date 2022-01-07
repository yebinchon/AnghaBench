; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_perf_evlist__pick_pc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_perf_evlist__pick_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_mmap_page = type { i32 }
%struct.evlist = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.perf_event_mmap_page* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.perf_event_mmap_page* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_event_mmap_page* (%struct.evlist*)* @perf_evlist__pick_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_event_mmap_page* @perf_evlist__pick_pc(%struct.evlist* %0) #0 {
  %2 = alloca %struct.perf_event_mmap_page*, align 8
  %3 = alloca %struct.evlist*, align 8
  store %struct.evlist* %0, %struct.evlist** %3, align 8
  %4 = load %struct.evlist*, %struct.evlist** %3, align 8
  %5 = icmp ne %struct.evlist* %4, null
  br i1 %5, label %6, label %51

6:                                                ; preds = %1
  %7 = load %struct.evlist*, %struct.evlist** %3, align 8
  %8 = getelementptr inbounds %struct.evlist, %struct.evlist* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  %12 = load %struct.evlist*, %struct.evlist** %3, align 8
  %13 = getelementptr inbounds %struct.evlist, %struct.evlist* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %17, align 8
  %19 = icmp ne %struct.perf_event_mmap_page* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %11
  %21 = load %struct.evlist*, %struct.evlist** %3, align 8
  %22 = getelementptr inbounds %struct.evlist, %struct.evlist* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %26, align 8
  store %struct.perf_event_mmap_page* %27, %struct.perf_event_mmap_page** %2, align 8
  br label %52

28:                                               ; preds = %11, %6
  %29 = load %struct.evlist*, %struct.evlist** %3, align 8
  %30 = getelementptr inbounds %struct.evlist, %struct.evlist* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = icmp ne %struct.TYPE_8__* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.evlist*, %struct.evlist** %3, align 8
  %35 = getelementptr inbounds %struct.evlist, %struct.evlist* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %39, align 8
  %41 = icmp ne %struct.perf_event_mmap_page* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %33
  %43 = load %struct.evlist*, %struct.evlist** %3, align 8
  %44 = getelementptr inbounds %struct.evlist, %struct.evlist* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %48, align 8
  store %struct.perf_event_mmap_page* %49, %struct.perf_event_mmap_page** %2, align 8
  br label %52

50:                                               ; preds = %33, %28
  br label %51

51:                                               ; preds = %50, %1
  store %struct.perf_event_mmap_page* null, %struct.perf_event_mmap_page** %2, align 8
  br label %52

52:                                               ; preds = %51, %42, %20
  %53 = load %struct.perf_event_mmap_page*, %struct.perf_event_mmap_page** %2, align 8
  ret %struct.perf_event_mmap_page* %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
