; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { i32, i32, i32*, i32, i32, i32, i32, i64, i8*, i8*, i8* }
%struct.dso = type { i32 }

@map__map_ip = common dso_local global i32 0, align 4
@map__unmap_ip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @map__init(%struct.map* %0, i8* %1, i8* %2, i8* %3, %struct.dso* %4) #0 {
  %6 = alloca %struct.map*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dso*, align 8
  store %struct.map* %0, %struct.map** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.dso* %4, %struct.dso** %10, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load %struct.map*, %struct.map** %6, align 8
  %13 = getelementptr inbounds %struct.map, %struct.map* %12, i32 0, i32 10
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.map*, %struct.map** %6, align 8
  %16 = getelementptr inbounds %struct.map, %struct.map* %15, i32 0, i32 9
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load %struct.map*, %struct.map** %6, align 8
  %19 = getelementptr inbounds %struct.map, %struct.map* %18, i32 0, i32 8
  store i8* %17, i8** %19, align 8
  %20 = load %struct.map*, %struct.map** %6, align 8
  %21 = getelementptr inbounds %struct.map, %struct.map* %20, i32 0, i32 7
  store i64 0, i64* %21, align 8
  %22 = load %struct.dso*, %struct.dso** %10, align 8
  %23 = call i32 @dso__get(%struct.dso* %22)
  %24 = load %struct.map*, %struct.map** %6, align 8
  %25 = getelementptr inbounds %struct.map, %struct.map* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @map__map_ip, align 4
  %27 = load %struct.map*, %struct.map** %6, align 8
  %28 = getelementptr inbounds %struct.map, %struct.map* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @map__unmap_ip, align 4
  %30 = load %struct.map*, %struct.map** %6, align 8
  %31 = getelementptr inbounds %struct.map, %struct.map* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.map*, %struct.map** %6, align 8
  %33 = getelementptr inbounds %struct.map, %struct.map* %32, i32 0, i32 3
  %34 = call i32 @RB_CLEAR_NODE(i32* %33)
  %35 = load %struct.map*, %struct.map** %6, align 8
  %36 = getelementptr inbounds %struct.map, %struct.map* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load %struct.map*, %struct.map** %6, align 8
  %38 = getelementptr inbounds %struct.map, %struct.map* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.map*, %struct.map** %6, align 8
  %40 = getelementptr inbounds %struct.map, %struct.map* %39, i32 0, i32 1
  %41 = call i32 @refcount_set(i32* %40, i32 1)
  ret void
}

declare dso_local i32 @dso__get(%struct.dso*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
