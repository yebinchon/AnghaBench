; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_bench_numa.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_bench_numa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@p0 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"main,\00", align 1
@options = common dso_local global i32 0, align 4
@bench_numa_usage = common dso_local global i32 0, align 4
@numa_usage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bench_numa(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i8**, i8*** %5, align 8
  %8 = call i32 @init_params(%struct.TYPE_3__* @p0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %6, i8** %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = load i32, i32* @options, align 4
  %12 = load i32, i32* @bench_numa_usage, align 4
  %13 = call i32 @parse_options(i32 %9, i8** %10, i32 %11, i32 %12, i32 0)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %27

17:                                               ; preds = %2
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @p0, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (...) @bench_all()
  store i32 %21, i32* %3, align 4
  br label %31

22:                                               ; preds = %17
  %23 = call i64 @__bench_numa(i32* null)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %27

26:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %31

27:                                               ; preds = %25, %16
  %28 = load i32, i32* @numa_usage, align 4
  %29 = load i32, i32* @options, align 4
  %30 = call i32 @usage_with_options(i32 %28, i32 %29)
  store i32 -1, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %26, %20
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @init_params(%struct.TYPE_3__*, i8*, i32, i8**) #1

declare dso_local i32 @parse_options(i32, i8**, i32, i32, i32) #1

declare dso_local i32 @bench_all(...) #1

declare dso_local i64 @__bench_numa(i32*) #1

declare dso_local i32 @usage_with_options(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
