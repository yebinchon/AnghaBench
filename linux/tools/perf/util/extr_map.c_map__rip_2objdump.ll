; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map__rip_2objdump.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map__rip_2objdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { i64, {}*, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i32 }
%struct.kmap = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }

@DSO_TYPE_USER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @map__rip_2objdump(%struct.map* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.map*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kmap*, align 8
  %7 = alloca %struct.map*, align 8
  store %struct.map* %0, %struct.map** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.map*, %struct.map** %4, align 8
  %9 = call %struct.kmap* @__map__kmap(%struct.map* %8)
  store %struct.kmap* %9, %struct.kmap** %6, align 8
  %10 = load %struct.kmap*, %struct.kmap** %6, align 8
  %11 = icmp ne %struct.kmap* %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %2
  %13 = load %struct.kmap*, %struct.kmap** %6, align 8
  %14 = getelementptr inbounds %struct.kmap, %struct.kmap* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @is_entry_trampoline(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %12
  %19 = load %struct.kmap*, %struct.kmap** %6, align 8
  %20 = getelementptr inbounds %struct.kmap, %struct.kmap* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct.kmap*, %struct.kmap** %6, align 8
  %25 = getelementptr inbounds %struct.kmap, %struct.kmap* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load %struct.kmap*, %struct.kmap** %6, align 8
  %32 = getelementptr inbounds %struct.kmap, %struct.kmap* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call %struct.map* @machine__kernel_map(i64 %35)
  store %struct.map* %36, %struct.map** %7, align 8
  %37 = load %struct.map*, %struct.map** %7, align 8
  %38 = icmp ne %struct.map* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load %struct.map*, %struct.map** %7, align 8
  store %struct.map* %40, %struct.map** %4, align 8
  br label %41

41:                                               ; preds = %39, %30
  br label %42

42:                                               ; preds = %41, %23, %18, %12, %2
  %43 = load %struct.map*, %struct.map** %4, align 8
  %44 = getelementptr inbounds %struct.map, %struct.map* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  %50 = load i64, i64* %5, align 8
  store i64 %50, i64* %3, align 8
  br label %92

51:                                               ; preds = %42
  %52 = load %struct.map*, %struct.map** %4, align 8
  %53 = getelementptr inbounds %struct.map, %struct.map* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.map*, %struct.map** %4, align 8
  %61 = getelementptr inbounds %struct.map, %struct.map* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  store i64 %63, i64* %3, align 8
  br label %92

64:                                               ; preds = %51
  %65 = load %struct.map*, %struct.map** %4, align 8
  %66 = getelementptr inbounds %struct.map, %struct.map* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DSO_TYPE_USER, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %64
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.map*, %struct.map** %4, align 8
  %75 = getelementptr inbounds %struct.map, %struct.map* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %73, %78
  store i64 %79, i64* %3, align 8
  br label %92

80:                                               ; preds = %64
  %81 = load %struct.map*, %struct.map** %4, align 8
  %82 = getelementptr inbounds %struct.map, %struct.map* %81, i32 0, i32 1
  %83 = bitcast {}** %82 to i64 (%struct.map*, i64)**
  %84 = load i64 (%struct.map*, i64)*, i64 (%struct.map*, i64)** %83, align 8
  %85 = load %struct.map*, %struct.map** %4, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i64 %84(%struct.map* %85, i64 %86)
  %88 = load %struct.map*, %struct.map** %4, align 8
  %89 = getelementptr inbounds %struct.map, %struct.map* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %87, %90
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %80, %72, %58, %49
  %93 = load i64, i64* %3, align 8
  ret i64 %93
}

declare dso_local %struct.kmap* @__map__kmap(%struct.map*) #1

declare dso_local i64 @is_entry_trampoline(i32) #1

declare dso_local %struct.map* @machine__kernel_map(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
