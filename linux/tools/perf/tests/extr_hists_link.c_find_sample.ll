; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_hists_link.c_find_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_hists_link.c_find_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sample = type { %struct.symbol*, %struct.map*, %struct.thread* }
%struct.thread = type { i32 }
%struct.map = type { i32 }
%struct.symbol = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sample*, i64, %struct.thread*, %struct.map*, %struct.symbol*)* @find_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_sample(%struct.sample* %0, i64 %1, %struct.thread* %2, %struct.map* %3, %struct.symbol* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sample*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.map*, align 8
  %11 = alloca %struct.symbol*, align 8
  store %struct.sample* %0, %struct.sample** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.thread* %2, %struct.thread** %9, align 8
  store %struct.map* %3, %struct.map** %10, align 8
  store %struct.symbol* %4, %struct.symbol** %11, align 8
  br label %12

12:                                               ; preds = %35, %5
  %13 = load i64, i64* %8, align 8
  %14 = add i64 %13, -1
  store i64 %14, i64* %8, align 8
  %15 = icmp ne i64 %13, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load %struct.sample*, %struct.sample** %7, align 8
  %18 = getelementptr inbounds %struct.sample, %struct.sample* %17, i32 0, i32 2
  %19 = load %struct.thread*, %struct.thread** %18, align 8
  %20 = load %struct.thread*, %struct.thread** %9, align 8
  %21 = icmp eq %struct.thread* %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.sample*, %struct.sample** %7, align 8
  %24 = getelementptr inbounds %struct.sample, %struct.sample* %23, i32 0, i32 1
  %25 = load %struct.map*, %struct.map** %24, align 8
  %26 = load %struct.map*, %struct.map** %10, align 8
  %27 = icmp eq %struct.map* %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.sample*, %struct.sample** %7, align 8
  %30 = getelementptr inbounds %struct.sample, %struct.sample* %29, i32 0, i32 0
  %31 = load %struct.symbol*, %struct.symbol** %30, align 8
  %32 = load %struct.symbol*, %struct.symbol** %11, align 8
  %33 = icmp eq %struct.symbol* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* %6, align 4
  br label %39

35:                                               ; preds = %28, %22, %16
  %36 = load %struct.sample*, %struct.sample** %7, align 8
  %37 = getelementptr inbounds %struct.sample, %struct.sample* %36, i32 1
  store %struct.sample* %37, %struct.sample** %7, align 8
  br label %12

38:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
