; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_probe_point_lazy_walker.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_probe_point_lazy_walker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_finder = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Probe line found: line:%d addr:0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to find scope of probe point.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i8*)* @probe_point_lazy_walker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_point_lazy_walker(i8* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.probe_finder*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.probe_finder*
  store %struct.probe_finder* %15, %struct.probe_finder** %10, align 8
  %16 = load %struct.probe_finder*, %struct.probe_finder** %10, align 8
  %17 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @intlist__has_entry(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.probe_finder*, %struct.probe_finder** %10, align 8
  %25 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @strtailcmp(i8* %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %4
  store i32 0, i32* %5, align 4
  br label %59

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %32)
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.probe_finder*, %struct.probe_finder** %10, align 8
  %36 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.probe_finder*, %struct.probe_finder** %10, align 8
  %39 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.probe_finder*, %struct.probe_finder** %10, align 8
  %41 = call i32* @find_best_scope(%struct.probe_finder* %40, i32* %12)
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %30
  %45 = call i32 @pr_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %59

48:                                               ; preds = %30
  %49 = load i32*, i32** %11, align 8
  %50 = load %struct.probe_finder*, %struct.probe_finder** %10, align 8
  %51 = call i32 @call_probe_finder(i32* %49, %struct.probe_finder* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %13, align 4
  br label %57

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ]
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %44, %29
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @intlist__has_entry(i32, i32) #1

declare dso_local i64 @strtailcmp(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local i32* @find_best_scope(%struct.probe_finder*, i32*) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @call_probe_finder(i32*, %struct.probe_finder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
