; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___alloc_dynamic_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___alloc_dynamic_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpp_dynamic_entry = type { %struct.TYPE_2__, i64, %struct.tep_format_field*, %struct.evsel* }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i32, i32, i32, i32, i8*, i8*, i8*, i32*, i32, i32, i32, i32 }
%struct.evsel = type { i32 }
%struct.tep_format_field = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Memory allocation failed\0A\00", align 1
@__sort__hde_header = common dso_local global i32 0, align 4
@__sort__hde_width = common dso_local global i32 0, align 4
@__sort__hde_entry = common dso_local global i32 0, align 4
@__sort__hde_cmp = common dso_local global i8* null, align 8
@__sort__hde_equal = common dso_local global i32 0, align 4
@hde_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hpp_dynamic_entry* (%struct.evsel*, %struct.tep_format_field*, i32)* @__alloc_dynamic_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hpp_dynamic_entry* @__alloc_dynamic_entry(%struct.evsel* %0, %struct.tep_format_field* %1, i32 %2) #0 {
  %4 = alloca %struct.hpp_dynamic_entry*, align 8
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca %struct.tep_format_field*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hpp_dynamic_entry*, align 8
  store %struct.evsel* %0, %struct.evsel** %5, align 8
  store %struct.tep_format_field* %1, %struct.tep_format_field** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call %struct.hpp_dynamic_entry* @malloc(i32 112)
  store %struct.hpp_dynamic_entry* %9, %struct.hpp_dynamic_entry** %8, align 8
  %10 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %8, align 8
  %11 = icmp eq %struct.hpp_dynamic_entry* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.hpp_dynamic_entry* null, %struct.hpp_dynamic_entry** %4, align 8
  br label %86

14:                                               ; preds = %3
  %15 = load %struct.evsel*, %struct.evsel** %5, align 8
  %16 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %8, align 8
  %17 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %16, i32 0, i32 3
  store %struct.evsel* %15, %struct.evsel** %17, align 8
  %18 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  %19 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %8, align 8
  %20 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %19, i32 0, i32 2
  store %struct.tep_format_field* %18, %struct.tep_format_field** %20, align 8
  %21 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %8, align 8
  %22 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.tep_format_field*, %struct.tep_format_field** %6, align 8
  %24 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %8, align 8
  %27 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 15
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @__sort__hde_header, align 4
  %30 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %8, align 8
  %31 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 14
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @__sort__hde_width, align 4
  %34 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %8, align 8
  %35 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 13
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @__sort__hde_entry, align 4
  %38 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %8, align 8
  %39 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 12
  store i32 %37, i32* %40, align 8
  %41 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %8, align 8
  %42 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 11
  store i32* null, i32** %43, align 8
  %44 = load i8*, i8** @__sort__hde_cmp, align 8
  %45 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %8, align 8
  %46 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 10
  store i8* %44, i8** %47, align 8
  %48 = load i8*, i8** @__sort__hde_cmp, align 8
  %49 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %8, align 8
  %50 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 9
  store i8* %48, i8** %51, align 8
  %52 = load i8*, i8** @__sort__hde_cmp, align 8
  %53 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %8, align 8
  %54 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 8
  store i8* %52, i8** %55, align 8
  %56 = load i32, i32* @__sort__hde_equal, align 4
  %57 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %8, align 8
  %58 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 7
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @hde_free, align 4
  %61 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %8, align 8
  %62 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 6
  store i32 %60, i32* %63, align 8
  %64 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %8, align 8
  %65 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 5
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %8, align 8
  %69 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 4
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  %72 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %8, align 8
  %73 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %8, align 8
  %76 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %8, align 8
  %79 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %8, align 8
  %83 = getelementptr inbounds %struct.hpp_dynamic_entry, %struct.hpp_dynamic_entry* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %8, align 8
  store %struct.hpp_dynamic_entry* %85, %struct.hpp_dynamic_entry** %4, align 8
  br label %86

86:                                               ; preds = %14, %12
  %87 = load %struct.hpp_dynamic_entry*, %struct.hpp_dynamic_entry** %4, align 8
  ret %struct.hpp_dynamic_entry* %87
}

declare dso_local %struct.hpp_dynamic_entry* @malloc(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
