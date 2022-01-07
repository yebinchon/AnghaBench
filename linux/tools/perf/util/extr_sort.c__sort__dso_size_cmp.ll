; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c__sort__dso_size_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c__sort__dso_size_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.map*, %struct.map*)* @_sort__dso_size_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_sort__dso_size_cmp(%struct.map* %0, %struct.map* %1) #0 {
  %3 = alloca %struct.map*, align 8
  %4 = alloca %struct.map*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.map* %0, %struct.map** %3, align 8
  store %struct.map* %1, %struct.map** %4, align 8
  %7 = load %struct.map*, %struct.map** %3, align 8
  %8 = icmp ne %struct.map* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.map*, %struct.map** %3, align 8
  %11 = call i64 @map__size(%struct.map* %10)
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi i64 [ %11, %9 ], [ 0, %12 ]
  store i64 %14, i64* %5, align 8
  %15 = load %struct.map*, %struct.map** %4, align 8
  %16 = icmp ne %struct.map* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.map*, %struct.map** %4, align 8
  %19 = call i64 @map__size(%struct.map* %18)
  br label %21

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi i64 [ %19, %17 ], [ 0, %20 ]
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %33

27:                                               ; preds = %21
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 1
  br label %33

33:                                               ; preds = %27, %26
  %34 = phi i32 [ -1, %26 ], [ %32, %27 ]
  %35 = sext i32 %34 to i64
  ret i64 %35
}

declare dso_local i64 @map__size(%struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
