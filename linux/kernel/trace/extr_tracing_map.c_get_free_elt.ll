; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_get_free_elt.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_get_free_elt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_map_elt = type { i32 }
%struct.tracing_map = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.tracing_map_elt*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tracing_map_elt* (%struct.tracing_map*)* @get_free_elt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tracing_map_elt* @get_free_elt(%struct.tracing_map* %0) #0 {
  %2 = alloca %struct.tracing_map*, align 8
  %3 = alloca %struct.tracing_map_elt*, align 8
  %4 = alloca i32, align 4
  store %struct.tracing_map* %0, %struct.tracing_map** %2, align 8
  store %struct.tracing_map_elt* null, %struct.tracing_map_elt** %3, align 8
  %5 = load %struct.tracing_map*, %struct.tracing_map** %2, align 8
  %6 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %5, i32 0, i32 3
  %7 = call i32 @atomic_inc_return(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.tracing_map*, %struct.tracing_map** %2, align 8
  %10 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %1
  %14 = load %struct.tracing_map*, %struct.tracing_map** %2, align 8
  %15 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.tracing_map_elt** @TRACING_MAP_ELT(i32 %16, i32 %17)
  %19 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %18, align 8
  store %struct.tracing_map_elt* %19, %struct.tracing_map_elt** %3, align 8
  %20 = load %struct.tracing_map*, %struct.tracing_map** %2, align 8
  %21 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %13
  %25 = load %struct.tracing_map*, %struct.tracing_map** %2, align 8
  %26 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.tracing_map_elt*)*, i32 (%struct.tracing_map_elt*)** %28, align 8
  %30 = icmp ne i32 (%struct.tracing_map_elt*)* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.tracing_map*, %struct.tracing_map** %2, align 8
  %33 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.tracing_map_elt*)*, i32 (%struct.tracing_map_elt*)** %35, align 8
  %37 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %3, align 8
  %38 = call i32 %36(%struct.tracing_map_elt* %37)
  br label %39

39:                                               ; preds = %31, %24, %13
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %3, align 8
  ret %struct.tracing_map_elt* %41
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local %struct.tracing_map_elt** @TRACING_MAP_ELT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
