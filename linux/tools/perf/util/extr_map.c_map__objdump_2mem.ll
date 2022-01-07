; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map__objdump_2mem.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map__objdump_2mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { i64, %struct.TYPE_2__*, {}*, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@DSO_TYPE_USER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @map__objdump_2mem(%struct.map* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.map*, align 8
  %5 = alloca i64, align 8
  store %struct.map* %0, %struct.map** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.map*, %struct.map** %4, align 8
  %7 = getelementptr inbounds %struct.map, %struct.map* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load %struct.map*, %struct.map** %4, align 8
  %14 = getelementptr inbounds %struct.map, %struct.map* %13, i32 0, i32 2
  %15 = bitcast {}** %14 to i64 (%struct.map*, i64)**
  %16 = load i64 (%struct.map*, i64)*, i64 (%struct.map*, i64)** %15, align 8
  %17 = load %struct.map*, %struct.map** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i64 %16(%struct.map* %17, i64 %18)
  store i64 %19, i64* %3, align 8
  br label %67

20:                                               ; preds = %2
  %21 = load %struct.map*, %struct.map** %4, align 8
  %22 = getelementptr inbounds %struct.map, %struct.map* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %20
  %28 = load %struct.map*, %struct.map** %4, align 8
  %29 = getelementptr inbounds %struct.map, %struct.map* %28, i32 0, i32 2
  %30 = bitcast {}** %29 to i64 (%struct.map*, i64)**
  %31 = load i64 (%struct.map*, i64)*, i64 (%struct.map*, i64)** %30, align 8
  %32 = load %struct.map*, %struct.map** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.map*, %struct.map** %4, align 8
  %35 = getelementptr inbounds %struct.map, %struct.map* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = call i64 %31(%struct.map* %32, i64 %37)
  store i64 %38, i64* %3, align 8
  br label %67

39:                                               ; preds = %20
  %40 = load %struct.map*, %struct.map** %4, align 8
  %41 = getelementptr inbounds %struct.map, %struct.map* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DSO_TYPE_USER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %39
  %48 = load %struct.map*, %struct.map** %4, align 8
  %49 = getelementptr inbounds %struct.map, %struct.map* %48, i32 0, i32 2
  %50 = bitcast {}** %49 to i64 (%struct.map*, i64)**
  %51 = load i64 (%struct.map*, i64)*, i64 (%struct.map*, i64)** %50, align 8
  %52 = load %struct.map*, %struct.map** %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.map*, %struct.map** %4, align 8
  %55 = getelementptr inbounds %struct.map, %struct.map* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %53, %58
  %60 = call i64 %51(%struct.map* %52, i64 %59)
  store i64 %60, i64* %3, align 8
  br label %67

61:                                               ; preds = %39
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.map*, %struct.map** %4, align 8
  %64 = getelementptr inbounds %struct.map, %struct.map* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %61, %47, %27, %12
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
