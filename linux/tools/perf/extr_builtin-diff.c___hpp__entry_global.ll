; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c___hpp__entry_global.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c___hpp__entry_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i32 }
%struct.diff_hpp_fmt = type { i32 }

@PERF_HPP_DIFF__BASELINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_entry*, %struct.diff_hpp_fmt*, i8*, i64)* @__hpp__entry_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__hpp__entry_global(%struct.hist_entry* %0, %struct.diff_hpp_fmt* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca %struct.diff_hpp_fmt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hist_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.hist_entry* %0, %struct.hist_entry** %5, align 8
  store %struct.diff_hpp_fmt* %1, %struct.diff_hpp_fmt** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %12 = load %struct.diff_hpp_fmt*, %struct.diff_hpp_fmt** %6, align 8
  %13 = call %struct.hist_entry* @get_pair_fmt(%struct.hist_entry* %11, %struct.diff_hpp_fmt* %12)
  store %struct.hist_entry* %13, %struct.hist_entry** %9, align 8
  %14 = load %struct.diff_hpp_fmt*, %struct.diff_hpp_fmt** %6, align 8
  %15 = getelementptr inbounds %struct.diff_hpp_fmt, %struct.diff_hpp_fmt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @PERF_HPP_DIFF__BASELINE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @hpp__entry_baseline(%struct.hist_entry* %21, i8* %22, i64 %23)
  br label %42

25:                                               ; preds = %4
  %26 = load %struct.hist_entry*, %struct.hist_entry** %9, align 8
  %27 = icmp ne %struct.hist_entry* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %30 = load %struct.hist_entry*, %struct.hist_entry** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @hpp__entry_pair(%struct.hist_entry* %29, %struct.hist_entry* %30, i32 %31, i8* %32, i64 %33)
  br label %41

35:                                               ; preds = %25
  %36 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @hpp__entry_unpair(%struct.hist_entry* %36, i32 %37, i8* %38, i64 %39)
  br label %41

41:                                               ; preds = %35, %28
  br label %42

42:                                               ; preds = %41, %20
  ret void
}

declare dso_local %struct.hist_entry* @get_pair_fmt(%struct.hist_entry*, %struct.diff_hpp_fmt*) #1

declare dso_local i32 @hpp__entry_baseline(%struct.hist_entry*, i8*, i64) #1

declare dso_local i32 @hpp__entry_pair(%struct.hist_entry*, %struct.hist_entry*, i32, i8*, i64) #1

declare dso_local i32 @hpp__entry_unpair(%struct.hist_entry*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
