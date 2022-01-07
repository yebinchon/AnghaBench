; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_alloc_elts.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_alloc_elts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_map = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tracing_map*)* @tracing_map_alloc_elts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_map_alloc_elts(%struct.tracing_map* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tracing_map*, align 8
  %4 = alloca i32, align 4
  store %struct.tracing_map* %0, %struct.tracing_map** %3, align 8
  %5 = load %struct.tracing_map*, %struct.tracing_map** %3, align 8
  %6 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @tracing_map_array_alloc(i32 %7, i32 8)
  %9 = load %struct.tracing_map*, %struct.tracing_map** %3, align 8
  %10 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.tracing_map*, %struct.tracing_map** %3, align 8
  %12 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %56

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %52, %18
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.tracing_map*, %struct.tracing_map** %3, align 8
  %22 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %19
  %26 = load %struct.tracing_map*, %struct.tracing_map** %3, align 8
  %27 = call i32* @tracing_map_elt_alloc(%struct.tracing_map* %26)
  %28 = load %struct.tracing_map*, %struct.tracing_map** %3, align 8
  %29 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32** @TRACING_MAP_ELT(i32 %30, i32 %31)
  store i32* %27, i32** %32, align 8
  %33 = load %struct.tracing_map*, %struct.tracing_map** %3, align 8
  %34 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32** @TRACING_MAP_ELT(i32 %35, i32 %36)
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @IS_ERR(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %25
  %42 = load %struct.tracing_map*, %struct.tracing_map** %3, align 8
  %43 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32** @TRACING_MAP_ELT(i32 %44, i32 %45)
  store i32* null, i32** %46, align 8
  %47 = load %struct.tracing_map*, %struct.tracing_map** %3, align 8
  %48 = call i32 @tracing_map_free_elts(%struct.tracing_map* %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %56

51:                                               ; preds = %25
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %19

55:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %41, %15
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @tracing_map_array_alloc(i32, i32) #1

declare dso_local i32* @tracing_map_elt_alloc(%struct.tracing_map*) #1

declare dso_local i32** @TRACING_MAP_ELT(i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @tracing_map_free_elts(%struct.tracing_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
