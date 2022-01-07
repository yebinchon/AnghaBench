; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_setup_sorting.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_setup_sorting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32 }

@parent_pattern = common dso_local global i64 0, align 8
@default_parent_pattern = common dso_local global i64 0, align 8
@perf_hpp_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@sort__mode = common dso_local global i64 0, align 8
@SORT_MODE__DIFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_sorting(%struct.evlist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evlist*, align 8
  %4 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %3, align 8
  %5 = load %struct.evlist*, %struct.evlist** %3, align 8
  %6 = call i32 @__setup_sorting(%struct.evlist* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %44

11:                                               ; preds = %1
  %12 = load i64, i64* @parent_pattern, align 8
  %13 = load i64, i64* @default_parent_pattern, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load %struct.evlist*, %struct.evlist** %3, align 8
  %17 = call i32 @sort_dimension__add(i32* @perf_hpp_list, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.evlist* %16, i32 -1)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %44

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %11
  %24 = call i32 (...) @reset_dimensions()
  %25 = load i64, i64* @sort__mode, align 8
  %26 = load i64, i64* @SORT_MODE__DIFF, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (...) @perf_hpp__init()
  br label %30

30:                                               ; preds = %28, %23
  %31 = call i32 (...) @__setup_output_field()
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %44

36:                                               ; preds = %30
  %37 = call i32 @perf_hpp__setup_output_field(i32* @perf_hpp_list)
  %38 = call i32 @perf_hpp__append_sort_keys(i32* @perf_hpp_list)
  %39 = load %struct.evlist*, %struct.evlist** %3, align 8
  %40 = call i64 @perf_hpp__setup_hists_formats(i32* @perf_hpp_list, %struct.evlist* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 -1, i32* %2, align 4
  br label %44

43:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %42, %34, %20, %9
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @__setup_sorting(%struct.evlist*) #1

declare dso_local i32 @sort_dimension__add(i32*, i8*, %struct.evlist*, i32) #1

declare dso_local i32 @reset_dimensions(...) #1

declare dso_local i32 @perf_hpp__init(...) #1

declare dso_local i32 @__setup_output_field(...) #1

declare dso_local i32 @perf_hpp__setup_output_field(i32*) #1

declare dso_local i32 @perf_hpp__append_sort_keys(i32*) #1

declare dso_local i64 @perf_hpp__setup_hists_formats(i32*, %struct.evlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
