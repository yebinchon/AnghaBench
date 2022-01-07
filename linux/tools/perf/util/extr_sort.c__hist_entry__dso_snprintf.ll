; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c__hist_entry__dso_snprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c__hist_entry__dso_snprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%-*.*s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"[unknown]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map*, i8*, i64, i32)* @_hist_entry__dso_snprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_hist_entry__dso_snprintf(%struct.map* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.map*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.map* %0, %struct.map** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.map*, %struct.map** %6, align 8
  %12 = icmp ne %struct.map* %11, null
  br i1 %12, label %13, label %41

13:                                               ; preds = %4
  %14 = load %struct.map*, %struct.map** %6, align 8
  %15 = getelementptr inbounds %struct.map, %struct.map* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %13
  %19 = load i64, i64* @verbose, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.map*, %struct.map** %6, align 8
  %23 = getelementptr inbounds %struct.map, %struct.map* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  br label %33

27:                                               ; preds = %18
  %28 = load %struct.map*, %struct.map** %6, align 8
  %29 = getelementptr inbounds %struct.map, %struct.map* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi i8* [ %26, %21 ], [ %32, %27 ]
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @repsep_snprintf(i8* %35, i64 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i8* %39)
  store i32 %40, i32* %5, align 4
  br label %47

41:                                               ; preds = %13, %4
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @repsep_snprintf(i8* %42, i64 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %41, %33
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @repsep_snprintf(i8*, i64, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
