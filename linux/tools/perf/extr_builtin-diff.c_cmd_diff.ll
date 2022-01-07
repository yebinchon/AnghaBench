; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_cmd_diff.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_cmd_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@diff__config = common dso_local global i32 0, align 4
@options = common dso_local global i32 0, align 4
@diff_usage = common dso_local global i32 0, align 4
@quiet = common dso_local global i64 0, align 8
@compute = common dso_local global i64 0, align 8
@COMPUTE_CYCLES = common dso_local global i64 0, align 8
@pdiff = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SORT_MODE__DIFF = common dso_local global i32 0, align 4
@sort__mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_diff(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (...) @hists__init()
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %3, align 4
  br label %63

12:                                               ; preds = %2
  %13 = load i32, i32* @diff__config, align 4
  %14 = call i32 @perf_config(i32 %13, i32* null)
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = load i32, i32* @options, align 4
  %18 = load i32, i32* @diff_usage, align 4
  %19 = call i32 @parse_options(i32 %15, i8** %16, i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %4, align 4
  %20 = load i64, i64* @quiet, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = call i32 (...) @perf_quiet_option()
  br label %24

24:                                               ; preds = %22, %12
  %25 = call i32 (...) @symbol__annotation_init()
  %26 = call i64 @symbol__init(i32* null)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %63

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = call i64 @data_init(i32 %30, i8** %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %63

35:                                               ; preds = %29
  %36 = call i64 (...) @check_file_brstack()
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %63

39:                                               ; preds = %35
  %40 = load i64, i64* @compute, align 8
  %41 = load i64, i64* @COMPUTE_CYCLES, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pdiff, i32 0, i32 0), align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 -1, i32* %3, align 4
  br label %63

47:                                               ; preds = %43, %39
  %48 = call i64 (...) @ui_init()
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 -1, i32* %3, align 4
  br label %63

51:                                               ; preds = %47
  %52 = load i32, i32* @SORT_MODE__DIFF, align 4
  store i32 %52, i32* @sort__mode, align 4
  %53 = call i64 @setup_sorting(i32* null)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @diff_usage, align 4
  %57 = load i32, i32* @options, align 4
  %58 = call i32 @usage_with_options(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %51
  %60 = call i32 (...) @setup_pager()
  %61 = call i32 @sort__setup_elide(i32* null)
  %62 = call i32 (...) @__cmd_diff()
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %50, %46, %38, %34, %28, %10
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @hists__init(...) #1

declare dso_local i32 @perf_config(i32, i32*) #1

declare dso_local i32 @parse_options(i32, i8**, i32, i32, i32) #1

declare dso_local i32 @perf_quiet_option(...) #1

declare dso_local i32 @symbol__annotation_init(...) #1

declare dso_local i64 @symbol__init(i32*) #1

declare dso_local i64 @data_init(i32, i8**) #1

declare dso_local i64 @check_file_brstack(...) #1

declare dso_local i64 @ui_init(...) #1

declare dso_local i64 @setup_sorting(i32*) #1

declare dso_local i32 @usage_with_options(i32, i32) #1

declare dso_local i32 @setup_pager(...) #1

declare dso_local i32 @sort__setup_elide(i32*) #1

declare dso_local i32 @__cmd_diff(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
