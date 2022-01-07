; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___sort_dimension__alloc_hpp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___sort_dimension__alloc_hpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpp_sort_entry = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sort_dimension = type { %struct.TYPE_3__* }

@.str = private unnamed_addr constant [26 x i8] c"Memory allocation failed\0A\00", align 1
@__sort__hpp_header = common dso_local global i32 0, align 4
@__sort__hpp_width = common dso_local global i32 0, align 4
@__sort__hpp_entry = common dso_local global i32 0, align 4
@__sort__hpp_cmp = common dso_local global i32 0, align 4
@__sort__hpp_collapse = common dso_local global i32 0, align 4
@__sort__hpp_sort = common dso_local global i32 0, align 4
@__sort__hpp_equal = common dso_local global i32 0, align 4
@hse_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hpp_sort_entry* (%struct.sort_dimension*, i32)* @__sort_dimension__alloc_hpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hpp_sort_entry* @__sort_dimension__alloc_hpp(%struct.sort_dimension* %0, i32 %1) #0 {
  %3 = alloca %struct.hpp_sort_entry*, align 8
  %4 = alloca %struct.sort_dimension*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hpp_sort_entry*, align 8
  store %struct.sort_dimension* %0, %struct.sort_dimension** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call %struct.hpp_sort_entry* @malloc(i32 88)
  store %struct.hpp_sort_entry* %7, %struct.hpp_sort_entry** %6, align 8
  %8 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %6, align 8
  %9 = icmp eq %struct.hpp_sort_entry* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.hpp_sort_entry* null, %struct.hpp_sort_entry** %3, align 8
  br label %83

12:                                               ; preds = %2
  %13 = load %struct.sort_dimension*, %struct.sort_dimension** %4, align 8
  %14 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %6, align 8
  %17 = getelementptr inbounds %struct.hpp_sort_entry, %struct.hpp_sort_entry* %16, i32 0, i32 1
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %17, align 8
  %18 = load %struct.sort_dimension*, %struct.sort_dimension** %4, align 8
  %19 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %6, align 8
  %24 = getelementptr inbounds %struct.hpp_sort_entry, %struct.hpp_sort_entry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 15
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @__sort__hpp_header, align 4
  %27 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %6, align 8
  %28 = getelementptr inbounds %struct.hpp_sort_entry, %struct.hpp_sort_entry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 14
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @__sort__hpp_width, align 4
  %31 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %6, align 8
  %32 = getelementptr inbounds %struct.hpp_sort_entry, %struct.hpp_sort_entry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 13
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @__sort__hpp_entry, align 4
  %35 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %6, align 8
  %36 = getelementptr inbounds %struct.hpp_sort_entry, %struct.hpp_sort_entry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 12
  store i32 %34, i32* %37, align 8
  %38 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %6, align 8
  %39 = getelementptr inbounds %struct.hpp_sort_entry, %struct.hpp_sort_entry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 11
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* @__sort__hpp_cmp, align 4
  %42 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %6, align 8
  %43 = getelementptr inbounds %struct.hpp_sort_entry, %struct.hpp_sort_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 10
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @__sort__hpp_collapse, align 4
  %46 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %6, align 8
  %47 = getelementptr inbounds %struct.hpp_sort_entry, %struct.hpp_sort_entry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 9
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @__sort__hpp_sort, align 4
  %50 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %6, align 8
  %51 = getelementptr inbounds %struct.hpp_sort_entry, %struct.hpp_sort_entry* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 8
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* @__sort__hpp_equal, align 4
  %54 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %6, align 8
  %55 = getelementptr inbounds %struct.hpp_sort_entry, %struct.hpp_sort_entry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 7
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @hse_free, align 4
  %58 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %6, align 8
  %59 = getelementptr inbounds %struct.hpp_sort_entry, %struct.hpp_sort_entry* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 6
  store i32 %57, i32* %60, align 8
  %61 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %6, align 8
  %62 = getelementptr inbounds %struct.hpp_sort_entry, %struct.hpp_sort_entry* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 5
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %6, align 8
  %66 = getelementptr inbounds %struct.hpp_sort_entry, %struct.hpp_sort_entry* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %6, align 8
  %70 = getelementptr inbounds %struct.hpp_sort_entry, %struct.hpp_sort_entry* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %6, align 8
  %73 = getelementptr inbounds %struct.hpp_sort_entry, %struct.hpp_sort_entry* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %6, align 8
  %76 = getelementptr inbounds %struct.hpp_sort_entry, %struct.hpp_sort_entry* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %6, align 8
  %80 = getelementptr inbounds %struct.hpp_sort_entry, %struct.hpp_sort_entry* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %6, align 8
  store %struct.hpp_sort_entry* %82, %struct.hpp_sort_entry** %3, align 8
  br label %83

83:                                               ; preds = %12, %10
  %84 = load %struct.hpp_sort_entry*, %struct.hpp_sort_entry** %3, align 8
  ret %struct.hpp_sort_entry* %84
}

declare dso_local %struct.hpp_sort_entry* @malloc(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
