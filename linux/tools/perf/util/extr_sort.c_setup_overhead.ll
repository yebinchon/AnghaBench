; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_setup_overhead.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_setup_overhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@sort__mode = common dso_local global i64 0, align 8
@SORT_MODE__DIFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"overhead\00", align 1
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"overhead_children\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @setup_overhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @setup_overhead(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i64, i64* @sort__mode, align 8
  %5 = load i64, i64* @SORT_MODE__DIFF, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %2, align 8
  br label %19

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i8* @prefix_if_not_in(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i8* %11, i8** %3, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @prefix_if_not_in(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  store i8* %16, i8** %3, align 8
  br label %17

17:                                               ; preds = %14, %9
  %18 = load i8*, i8** %3, align 8
  store i8* %18, i8** %2, align 8
  br label %19

19:                                               ; preds = %17, %7
  %20 = load i8*, i8** %2, align 8
  ret i8* %20
}

declare dso_local i8* @prefix_if_not_in(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
