; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_get_elide.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_get_elide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dso\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@sort__mode = common dso_local global i64 0, align 8
@SORT_MODE__BRANCH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"sym_from\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"sym_to\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"dso_from\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"dso_to\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @get_elide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_elide(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %19 [
    i32 130, label %7
    i32 133, label %11
    i32 134, label %15
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 6), align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @__get_elide(i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %10, i32* %3, align 4
  br label %45

11:                                               ; preds = %2
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 5), align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @__get_elide(i32 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  store i32 %14, i32* %3, align 4
  br label %45

15:                                               ; preds = %2
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 4), align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @__get_elide(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %17)
  store i32 %18, i32* %3, align 4
  br label %45

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19
  %21 = load i64, i64* @sort__mode, align 8
  %22 = load i64, i64* @SORT_MODE__BRANCH, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %45

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %43 [
    i32 129, label %27
    i32 128, label %31
    i32 132, label %35
    i32 131, label %39
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 3), align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @__get_elide(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %29)
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %25
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 2), align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @__get_elide(i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %33)
  store i32 %34, i32* %3, align 4
  br label %45

35:                                               ; preds = %25
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 1), align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @__get_elide(i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %37)
  store i32 %38, i32* %3, align 4
  br label %45

39:                                               ; preds = %25
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @__get_elide(i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* %41)
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %25
  br label %44

44:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %39, %35, %31, %27, %24, %15, %11, %7
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @__get_elide(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
