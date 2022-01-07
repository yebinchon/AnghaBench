; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_data__hpp_register.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_data__hpp_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data__file = type { %struct.diff_hpp_fmt* }
%struct.diff_hpp_fmt = type { i32, %struct.perf_hpp_fmt }
%struct.perf_hpp_fmt = type { i8*, i8*, i8*, i8*, i32, i32, i32 }

@hpp__header = common dso_local global i32 0, align 4
@hpp__width = common dso_local global i32 0, align 4
@hpp__entry_global = common dso_local global i32 0, align 4
@hist_entry__cmp_nop = common dso_local global i8* null, align 8
@hpp__color_baseline = common dso_local global i8* null, align 8
@hist_entry__cmp_baseline = common dso_local global i8* null, align 8
@hpp__color_delta = common dso_local global i8* null, align 8
@hist_entry__cmp_delta = common dso_local global i8* null, align 8
@hpp__color_ratio = common dso_local global i8* null, align 8
@hist_entry__cmp_ratio = common dso_local global i8* null, align 8
@hpp__color_wdiff = common dso_local global i8* null, align 8
@hist_entry__cmp_wdiff = common dso_local global i8* null, align 8
@hist_entry__cmp_delta_abs = common dso_local global i8* null, align 8
@hpp__color_cycles = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data__file*, i32)* @data__hpp_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @data__hpp_register(%struct.data__file* %0, i32 %1) #0 {
  %3 = alloca %struct.data__file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.diff_hpp_fmt*, align 8
  %6 = alloca %struct.perf_hpp_fmt*, align 8
  store %struct.data__file* %0, %struct.data__file** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.data__file*, %struct.data__file** %3, align 8
  %8 = getelementptr inbounds %struct.data__file, %struct.data__file* %7, i32 0, i32 0
  %9 = load %struct.diff_hpp_fmt*, %struct.diff_hpp_fmt** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.diff_hpp_fmt, %struct.diff_hpp_fmt* %9, i64 %11
  store %struct.diff_hpp_fmt* %12, %struct.diff_hpp_fmt** %5, align 8
  %13 = load %struct.diff_hpp_fmt*, %struct.diff_hpp_fmt** %5, align 8
  %14 = getelementptr inbounds %struct.diff_hpp_fmt, %struct.diff_hpp_fmt* %13, i32 0, i32 1
  store %struct.perf_hpp_fmt* %14, %struct.perf_hpp_fmt** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.diff_hpp_fmt*, %struct.diff_hpp_fmt** %5, align 8
  %17 = getelementptr inbounds %struct.diff_hpp_fmt, %struct.diff_hpp_fmt* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @hpp__header, align 4
  %19 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %20 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @hpp__width, align 4
  %22 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %23 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @hpp__entry_global, align 4
  %25 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %26 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load i8*, i8** @hist_entry__cmp_nop, align 8
  %28 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %29 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @hist_entry__cmp_nop, align 8
  %31 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %32 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %4, align 4
  switch i32 %33, label %76 [
    i32 133, label %34
    i32 131, label %41
    i32 129, label %48
    i32 128, label %55
    i32 130, label %62
    i32 132, label %69
  ]

34:                                               ; preds = %2
  %35 = load i8*, i8** @hpp__color_baseline, align 8
  %36 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %37 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @hist_entry__cmp_baseline, align 8
  %39 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %40 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %80

41:                                               ; preds = %2
  %42 = load i8*, i8** @hpp__color_delta, align 8
  %43 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %44 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @hist_entry__cmp_delta, align 8
  %46 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %47 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %80

48:                                               ; preds = %2
  %49 = load i8*, i8** @hpp__color_ratio, align 8
  %50 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %51 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @hist_entry__cmp_ratio, align 8
  %53 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %54 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  br label %80

55:                                               ; preds = %2
  %56 = load i8*, i8** @hpp__color_wdiff, align 8
  %57 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %58 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @hist_entry__cmp_wdiff, align 8
  %60 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %61 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  br label %80

62:                                               ; preds = %2
  %63 = load i8*, i8** @hpp__color_delta, align 8
  %64 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %65 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @hist_entry__cmp_delta_abs, align 8
  %67 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %68 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  br label %80

69:                                               ; preds = %2
  %70 = load i8*, i8** @hpp__color_cycles, align 8
  %71 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %72 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** @hist_entry__cmp_nop, align 8
  %74 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %75 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  br label %80

76:                                               ; preds = %2
  %77 = load i8*, i8** @hist_entry__cmp_nop, align 8
  %78 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %79 = getelementptr inbounds %struct.perf_hpp_fmt, %struct.perf_hpp_fmt* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %76, %69, %62, %55, %48, %41, %34
  %81 = load %struct.data__file*, %struct.data__file** %3, align 8
  %82 = load %struct.diff_hpp_fmt*, %struct.diff_hpp_fmt** %5, align 8
  %83 = call i32 @init_header(%struct.data__file* %81, %struct.diff_hpp_fmt* %82)
  %84 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %85 = call i32 @perf_hpp__column_register(%struct.perf_hpp_fmt* %84)
  %86 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %6, align 8
  %87 = call i32 @perf_hpp__register_sort_field(%struct.perf_hpp_fmt* %86)
  ret void
}

declare dso_local i32 @init_header(%struct.data__file*, %struct.diff_hpp_fmt*) #1

declare dso_local i32 @perf_hpp__column_register(%struct.perf_hpp_fmt*) #1

declare dso_local i32 @perf_hpp__register_sort_field(%struct.perf_hpp_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
