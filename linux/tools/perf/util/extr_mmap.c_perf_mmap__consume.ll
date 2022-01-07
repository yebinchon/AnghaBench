; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_mmap.c_perf_mmap__consume.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_mmap.c_perf_mmap__consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_mmap__consume(%struct.mmap* %0) #0 {
  %2 = alloca %struct.mmap*, align 8
  %3 = alloca i32, align 4
  store %struct.mmap* %0, %struct.mmap** %2, align 8
  %4 = load %struct.mmap*, %struct.mmap** %2, align 8
  %5 = getelementptr inbounds %struct.mmap, %struct.mmap* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = load %struct.mmap*, %struct.mmap** %2, align 8
  %11 = getelementptr inbounds %struct.mmap, %struct.mmap* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load %struct.mmap*, %struct.mmap** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @perf_mmap__write_tail(%struct.mmap* %14, i32 %15)
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.mmap*, %struct.mmap** %2, align 8
  %19 = getelementptr inbounds %struct.mmap, %struct.mmap* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @refcount_read(i32* %20)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.mmap*, %struct.mmap** %2, align 8
  %25 = call i64 @perf_mmap__empty(%struct.mmap* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.mmap*, %struct.mmap** %2, align 8
  %29 = call i32 @perf_mmap__put(%struct.mmap* %28)
  br label %30

30:                                               ; preds = %27, %23, %17
  ret void
}

declare dso_local i32 @perf_mmap__write_tail(%struct.mmap*, i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i64 @perf_mmap__empty(%struct.mmap*) #1

declare dso_local i32 @perf_mmap__put(%struct.mmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
