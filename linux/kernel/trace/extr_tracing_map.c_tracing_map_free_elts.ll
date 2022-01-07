; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_free_elts.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_free_elts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_map = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tracing_map*)* @tracing_map_free_elts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tracing_map_free_elts(%struct.tracing_map* %0) #0 {
  %2 = alloca %struct.tracing_map*, align 8
  %3 = alloca i32, align 4
  store %struct.tracing_map* %0, %struct.tracing_map** %2, align 8
  %4 = load %struct.tracing_map*, %struct.tracing_map** %2, align 8
  %5 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %39

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %29, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.tracing_map*, %struct.tracing_map** %2, align 8
  %13 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %10
  %17 = load %struct.tracing_map*, %struct.tracing_map** %2, align 8
  %18 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32** @TRACING_MAP_ELT(i32* %19, i32 %20)
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @tracing_map_elt_free(i32* %22)
  %24 = load %struct.tracing_map*, %struct.tracing_map** %2, align 8
  %25 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32** @TRACING_MAP_ELT(i32* %26, i32 %27)
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %10

32:                                               ; preds = %10
  %33 = load %struct.tracing_map*, %struct.tracing_map** %2, align 8
  %34 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @tracing_map_array_free(i32* %35)
  %37 = load %struct.tracing_map*, %struct.tracing_map** %2, align 8
  %38 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %32, %8
  ret void
}

declare dso_local i32 @tracing_map_elt_free(i32*) #1

declare dso_local i32** @TRACING_MAP_ELT(i32*, i32) #1

declare dso_local i32 @tracing_map_array_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
