; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map__find_symbol_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map__find_symbol_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @map__find_symbol_by_name(%struct.map* %0, i8* %1) #0 {
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.map*, align 8
  %5 = alloca i8*, align 8
  store %struct.map* %0, %struct.map** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.map*, %struct.map** %4, align 8
  %7 = call i64 @map__load(%struct.map* %6)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.symbol* null, %struct.symbol** %3, align 8
  br label %27

10:                                               ; preds = %2
  %11 = load %struct.map*, %struct.map** %4, align 8
  %12 = getelementptr inbounds %struct.map, %struct.map* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dso__sorted_by_name(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = load %struct.map*, %struct.map** %4, align 8
  %18 = getelementptr inbounds %struct.map, %struct.map* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dso__sort_by_name(i32 %19)
  br label %21

21:                                               ; preds = %16, %10
  %22 = load %struct.map*, %struct.map** %4, align 8
  %23 = getelementptr inbounds %struct.map, %struct.map* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call %struct.symbol* @dso__find_symbol_by_name(i32 %24, i8* %25)
  store %struct.symbol* %26, %struct.symbol** %3, align 8
  br label %27

27:                                               ; preds = %21, %9
  %28 = load %struct.symbol*, %struct.symbol** %3, align 8
  ret %struct.symbol* %28
}

declare dso_local i64 @map__load(%struct.map*) #1

declare dso_local i32 @dso__sorted_by_name(i32) #1

declare dso_local i32 @dso__sort_by_name(i32) #1

declare dso_local %struct.symbol* @dso__find_symbol_by_name(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
