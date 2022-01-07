; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map_groups__find_symbol.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map_groups__find_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.map_groups = type { i32 }
%struct.map = type { i32 (%struct.map*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @map_groups__find_symbol(%struct.map_groups* %0, i32 %1, %struct.map** %2) #0 {
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca %struct.map_groups*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.map**, align 8
  %8 = alloca %struct.map*, align 8
  store %struct.map_groups* %0, %struct.map_groups** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.map** %2, %struct.map*** %7, align 8
  %9 = load %struct.map_groups*, %struct.map_groups** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.map* @map_groups__find(%struct.map_groups* %9, i32 %10)
  store %struct.map* %11, %struct.map** %8, align 8
  %12 = load %struct.map*, %struct.map** %8, align 8
  %13 = icmp ne %struct.map* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %3
  %15 = load %struct.map*, %struct.map** %8, align 8
  %16 = call i64 @map__load(%struct.map* %15)
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load %struct.map**, %struct.map*** %7, align 8
  %20 = icmp ne %struct.map** %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.map*, %struct.map** %8, align 8
  %23 = load %struct.map**, %struct.map*** %7, align 8
  store %struct.map* %22, %struct.map** %23, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.map*, %struct.map** %8, align 8
  %26 = load %struct.map*, %struct.map** %8, align 8
  %27 = getelementptr inbounds %struct.map, %struct.map* %26, i32 0, i32 0
  %28 = load i32 (%struct.map*, i32)*, i32 (%struct.map*, i32)** %27, align 8
  %29 = load %struct.map*, %struct.map** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 %28(%struct.map* %29, i32 %30)
  %32 = call %struct.symbol* @map__find_symbol(%struct.map* %25, i32 %31)
  store %struct.symbol* %32, %struct.symbol** %4, align 8
  br label %34

33:                                               ; preds = %14, %3
  store %struct.symbol* null, %struct.symbol** %4, align 8
  br label %34

34:                                               ; preds = %33, %24
  %35 = load %struct.symbol*, %struct.symbol** %4, align 8
  ret %struct.symbol* %35
}

declare dso_local %struct.map* @map_groups__find(%struct.map_groups*, i32) #1

declare dso_local i64 @map__load(%struct.map*) #1

declare dso_local %struct.symbol* @map__find_symbol(%struct.map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
