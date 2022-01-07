; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map__new2.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map__new2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { i32 }
%struct.dso = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.map* @map__new2(i32 %0, %struct.dso* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dso*, align 8
  %5 = alloca %struct.map*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.dso* %1, %struct.dso** %4, align 8
  %6 = load %struct.dso*, %struct.dso** %4, align 8
  %7 = getelementptr inbounds %struct.dso, %struct.dso* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i64 4, i64 0
  %12 = add i64 4, %11
  %13 = trunc i64 %12 to i32
  %14 = call %struct.map* @calloc(i32 1, i32 %13)
  store %struct.map* %14, %struct.map** %5, align 8
  %15 = load %struct.map*, %struct.map** %5, align 8
  %16 = icmp ne %struct.map* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.map*, %struct.map** %5, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.dso*, %struct.dso** %4, align 8
  %21 = call i32 @map__init(%struct.map* %18, i32 %19, i32 0, i32 0, %struct.dso* %20)
  br label %22

22:                                               ; preds = %17, %2
  %23 = load %struct.map*, %struct.map** %5, align 8
  ret %struct.map* %23
}

declare dso_local %struct.map* @calloc(i32, i32) #1

declare dso_local i32 @map__init(%struct.map*, i32, i32, i32, %struct.dso*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
