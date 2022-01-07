; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_mmap.c_perf_mmap__read_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_mmap.c_perf_mmap__read_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { i32 }
%struct.mmap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.perf_event* @perf_mmap__read_event(%struct.mmap* %0) #0 {
  %2 = alloca %union.perf_event*, align 8
  %3 = alloca %struct.mmap*, align 8
  %4 = alloca %union.perf_event*, align 8
  store %struct.mmap* %0, %struct.mmap** %3, align 8
  %5 = load %struct.mmap*, %struct.mmap** %3, align 8
  %6 = getelementptr inbounds %struct.mmap, %struct.mmap* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 4
  %8 = call i32 @refcount_read(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %union.perf_event* null, %union.perf_event** %2, align 8
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.mmap*, %struct.mmap** %3, align 8
  %13 = getelementptr inbounds %struct.mmap, %struct.mmap* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.mmap*, %struct.mmap** %3, align 8
  %19 = call i32 @perf_mmap__read_head(%struct.mmap* %18)
  %20 = load %struct.mmap*, %struct.mmap** %3, align 8
  %21 = getelementptr inbounds %struct.mmap, %struct.mmap* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 4
  br label %23

23:                                               ; preds = %17, %11
  %24 = load %struct.mmap*, %struct.mmap** %3, align 8
  %25 = load %struct.mmap*, %struct.mmap** %3, align 8
  %26 = getelementptr inbounds %struct.mmap, %struct.mmap* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.mmap*, %struct.mmap** %3, align 8
  %29 = getelementptr inbounds %struct.mmap, %struct.mmap* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call %union.perf_event* @perf_mmap__read(%struct.mmap* %24, i32* %27, i32 %31)
  store %union.perf_event* %32, %union.perf_event** %4, align 8
  %33 = load %struct.mmap*, %struct.mmap** %3, align 8
  %34 = getelementptr inbounds %struct.mmap, %struct.mmap* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %23
  %39 = load %struct.mmap*, %struct.mmap** %3, align 8
  %40 = getelementptr inbounds %struct.mmap, %struct.mmap* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mmap*, %struct.mmap** %3, align 8
  %44 = getelementptr inbounds %struct.mmap, %struct.mmap* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %38, %23
  %47 = load %union.perf_event*, %union.perf_event** %4, align 8
  store %union.perf_event* %47, %union.perf_event** %2, align 8
  br label %48

48:                                               ; preds = %46, %10
  %49 = load %union.perf_event*, %union.perf_event** %2, align 8
  ret %union.perf_event* %49
}

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @perf_mmap__read_head(%struct.mmap*) #1

declare dso_local %union.perf_event* @perf_mmap__read(%struct.mmap*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
