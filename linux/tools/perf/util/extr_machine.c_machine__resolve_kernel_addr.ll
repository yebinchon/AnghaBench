; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__resolve_kernel_addr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__resolve_kernel_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%struct.map = type { i64 (%struct.map*, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.symbol = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @machine__resolve_kernel_addr(i8* %0, i64* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.machine*, align 8
  %9 = alloca %struct.map*, align 8
  %10 = alloca %struct.symbol*, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.machine*
  store %struct.machine* %12, %struct.machine** %8, align 8
  %13 = load %struct.machine*, %struct.machine** %8, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.symbol* @machine__find_kernel_symbol(%struct.machine* %13, i64 %15, %struct.map** %9)
  store %struct.symbol* %16, %struct.symbol** %10, align 8
  %17 = load %struct.symbol*, %struct.symbol** %10, align 8
  %18 = icmp eq %struct.symbol* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %47

20:                                               ; preds = %3
  %21 = load %struct.map*, %struct.map** %9, align 8
  %22 = call i64 @__map__is_kmodule(%struct.map* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.map*, %struct.map** %9, align 8
  %26 = getelementptr inbounds %struct.map, %struct.map* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  br label %32

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %24
  %33 = phi i8* [ %30, %24 ], [ null, %31 ]
  %34 = load i8**, i8*** %7, align 8
  store i8* %33, i8** %34, align 8
  %35 = load %struct.map*, %struct.map** %9, align 8
  %36 = getelementptr inbounds %struct.map, %struct.map* %35, i32 0, i32 0
  %37 = load i64 (%struct.map*, i32)*, i64 (%struct.map*, i32)** %36, align 8
  %38 = load %struct.map*, %struct.map** %9, align 8
  %39 = load %struct.symbol*, %struct.symbol** %10, align 8
  %40 = getelementptr inbounds %struct.symbol, %struct.symbol* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 %37(%struct.map* %38, i32 %41)
  %43 = load i64*, i64** %6, align 8
  store i64 %42, i64* %43, align 8
  %44 = load %struct.symbol*, %struct.symbol** %10, align 8
  %45 = getelementptr inbounds %struct.symbol, %struct.symbol* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %4, align 8
  br label %47

47:                                               ; preds = %32, %19
  %48 = load i8*, i8** %4, align 8
  ret i8* %48
}

declare dso_local %struct.symbol* @machine__find_kernel_symbol(%struct.machine*, i64, %struct.map**) #1

declare dso_local i64 @__map__is_kmodule(%struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
