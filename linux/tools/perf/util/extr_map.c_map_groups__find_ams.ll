; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map_groups__find_ams.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map_groups__find_ams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addr_map_symbol = type { i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32 (%struct.TYPE_4__*, i64)*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @map_groups__find_ams(%struct.addr_map_symbol* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.addr_map_symbol*, align 8
  store %struct.addr_map_symbol* %0, %struct.addr_map_symbol** %3, align 8
  %4 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %3, align 8
  %5 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %3, align 8
  %8 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %6, %11
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  %14 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %3, align 8
  %15 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %3, align 8
  %18 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %16, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %13, %1
  %24 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %3, align 8
  %25 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %79

31:                                               ; preds = %23
  %32 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %3, align 8
  %33 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %3, align 8
  %38 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call %struct.TYPE_4__* @map_groups__find(i32* %36, i64 %39)
  %41 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %3, align 8
  %42 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %41, i32 0, i32 3
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %42, align 8
  %43 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %3, align 8
  %44 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp eq %struct.TYPE_4__* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  store i32 -1, i32* %2, align 4
  br label %79

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48, %13
  %50 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %3, align 8
  %51 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32 (%struct.TYPE_4__*, i64)*, i32 (%struct.TYPE_4__*, i64)** %53, align 8
  %55 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %3, align 8
  %56 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %3, align 8
  %59 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 %54(%struct.TYPE_4__* %57, i64 %60)
  %62 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %3, align 8
  %63 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %3, align 8
  %65 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %64, i32 0, i32 3
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %3, align 8
  %68 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @map__find_symbol(%struct.TYPE_4__* %66, i32 %69)
  %71 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %3, align 8
  %72 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %3, align 8
  %74 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 0, i32 -1
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %49, %47, %30
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_4__* @map_groups__find(i32*, i64) #1

declare dso_local i64 @map__find_symbol(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
