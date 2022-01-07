; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map__kmaps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map__kmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_groups = type { i32 }
%struct.map = type { i32 }
%struct.kmap = type { %struct.map_groups* }

@.str = private unnamed_addr constant [50 x i8] c"Internal error: map__kmaps with a non-kernel map\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.map_groups* @map__kmaps(%struct.map* %0) #0 {
  %2 = alloca %struct.map_groups*, align 8
  %3 = alloca %struct.map*, align 8
  %4 = alloca %struct.kmap*, align 8
  store %struct.map* %0, %struct.map** %3, align 8
  %5 = load %struct.map*, %struct.map** %3, align 8
  %6 = call %struct.kmap* @map__kmap(%struct.map* %5)
  store %struct.kmap* %6, %struct.kmap** %4, align 8
  %7 = load %struct.kmap*, %struct.kmap** %4, align 8
  %8 = icmp ne %struct.kmap* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.kmap*, %struct.kmap** %4, align 8
  %11 = getelementptr inbounds %struct.kmap, %struct.kmap* %10, i32 0, i32 0
  %12 = load %struct.map_groups*, %struct.map_groups** %11, align 8
  %13 = icmp ne %struct.map_groups* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9, %1
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store %struct.map_groups* null, %struct.map_groups** %2, align 8
  br label %20

16:                                               ; preds = %9
  %17 = load %struct.kmap*, %struct.kmap** %4, align 8
  %18 = getelementptr inbounds %struct.kmap, %struct.kmap* %17, i32 0, i32 0
  %19 = load %struct.map_groups*, %struct.map_groups** %18, align 8
  store %struct.map_groups* %19, %struct.map_groups** %2, align 8
  br label %20

20:                                               ; preds = %16, %14
  %21 = load %struct.map_groups*, %struct.map_groups** %2, align 8
  ret %struct.map_groups* %21
}

declare dso_local %struct.kmap* @map__kmap(%struct.map*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
