; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_perf_data__size.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_perf_data__size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_data = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.perf_data_file* }
%struct.perf_data_file = type { i64 }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @perf_data__size(%struct.perf_data* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.perf_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_data_file*, align 8
  store %struct.perf_data* %0, %struct.perf_data** %3, align 8
  %7 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %8 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %12 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* %2, align 8
  br label %43

17:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %38, %17
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %21 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %18
  %26 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %27 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.perf_data_file*, %struct.perf_data_file** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.perf_data_file, %struct.perf_data_file* %29, i64 %31
  store %struct.perf_data_file* %32, %struct.perf_data_file** %6, align 8
  %33 = load %struct.perf_data_file*, %struct.perf_data_file** %6, align 8
  %34 = getelementptr inbounds %struct.perf_data_file, %struct.perf_data_file* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %18

41:                                               ; preds = %18
  %42 = load i64, i64* %4, align 8
  store i64 %42, i64* %2, align 8
  br label %43

43:                                               ; preds = %41, %15
  %44 = load i64, i64* %2, align 8
  ret i64 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
