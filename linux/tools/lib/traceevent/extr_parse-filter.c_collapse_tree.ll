; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_collapse_tree.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_collapse_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_filter_arg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@TEP_FILTER_ARG_BOOLEAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to allocate filter arg\00", align 1
@TEP_ERRNO__MEM_ALLOC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_filter_arg*, %struct.tep_filter_arg**, i8*)* @collapse_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collapse_tree(%struct.tep_filter_arg* %0, %struct.tep_filter_arg** %1, i8* %2) #0 {
  %4 = alloca %struct.tep_filter_arg*, align 8
  %5 = alloca %struct.tep_filter_arg**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.tep_filter_arg* %0, %struct.tep_filter_arg** %4, align 8
  store %struct.tep_filter_arg** %1, %struct.tep_filter_arg*** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %9 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @test_arg(%struct.tep_filter_arg* %8, %struct.tep_filter_arg* %9, i8* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %35 [
    i32 129, label %13
    i32 128, label %14
    i32 130, label %14
  ]

13:                                               ; preds = %3
  br label %38

14:                                               ; preds = %3, %3
  %15 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %16 = call i32 @free_arg(%struct.tep_filter_arg* %15)
  %17 = call %struct.tep_filter_arg* (...) @allocate_arg()
  store %struct.tep_filter_arg* %17, %struct.tep_filter_arg** %4, align 8
  %18 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %19 = icmp ne %struct.tep_filter_arg* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load i32, i32* @TEP_FILTER_ARG_BOOLEAN, align 4
  %22 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %23 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 128
  %26 = zext i1 %25 to i32
  %27 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %28 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  br label %34

30:                                               ; preds = %14
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @show_error(i8* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @TEP_ERRNO__MEM_ALLOC_FAILED, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %20
  br label %38

35:                                               ; preds = %3
  %36 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %37 = call i32 @free_arg(%struct.tep_filter_arg* %36)
  store %struct.tep_filter_arg* null, %struct.tep_filter_arg** %4, align 8
  br label %38

38:                                               ; preds = %35, %34, %13
  %39 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %40 = load %struct.tep_filter_arg**, %struct.tep_filter_arg*** %5, align 8
  store %struct.tep_filter_arg* %39, %struct.tep_filter_arg** %40, align 8
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @test_arg(%struct.tep_filter_arg*, %struct.tep_filter_arg*, i8*) #1

declare dso_local i32 @free_arg(%struct.tep_filter_arg*) #1

declare dso_local %struct.tep_filter_arg* @allocate_arg(...) #1

declare dso_local i32 @show_error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
