; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-inject.c_has_tracking.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-inject.c_has_tracking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*)* @has_tracking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_tracking(%struct.evsel* %0) #0 {
  %2 = alloca %struct.evsel*, align 8
  store %struct.evsel* %0, %struct.evsel** %2, align 8
  %3 = load %struct.evsel*, %struct.evsel** %2, align 8
  %4 = getelementptr inbounds %struct.evsel, %struct.evsel* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %1
  %10 = load %struct.evsel*, %struct.evsel** %2, align 8
  %11 = getelementptr inbounds %struct.evsel, %struct.evsel* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %9
  %17 = load %struct.evsel*, %struct.evsel** %2, align 8
  %18 = getelementptr inbounds %struct.evsel, %struct.evsel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.evsel*, %struct.evsel** %2, align 8
  %25 = getelementptr inbounds %struct.evsel, %struct.evsel* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %23, %16, %9, %1
  %31 = phi i1 [ true, %16 ], [ true, %9 ], [ true, %1 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
