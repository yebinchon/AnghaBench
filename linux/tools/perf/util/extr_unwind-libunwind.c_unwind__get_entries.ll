; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libunwind.c_unwind__get_entries.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libunwind.c_unwind__get_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.perf_sample = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unwind__get_entries(i32 %0, i8* %1, %struct.thread* %2, %struct.perf_sample* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.perf_sample*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store %struct.thread* %2, %struct.thread** %9, align 8
  store %struct.perf_sample* %3, %struct.perf_sample** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.thread*, %struct.thread** %9, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %5
  %19 = load %struct.thread*, %struct.thread** %9, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (i32, i8*, %struct.thread*, %struct.perf_sample*, i32)**
  %26 = load i32 (i32, i8*, %struct.thread*, %struct.perf_sample*, i32)*, i32 (i32, i8*, %struct.thread*, %struct.perf_sample*, i32)** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.thread*, %struct.thread** %9, align 8
  %30 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 %26(i32 %27, i8* %28, %struct.thread* %29, %struct.perf_sample* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %34

33:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %18
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
