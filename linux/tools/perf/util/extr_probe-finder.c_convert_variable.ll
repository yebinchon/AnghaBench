; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_convert_variable.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_convert_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_finder = type { %struct.TYPE_4__*, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Converting variable %s into trace event.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [164 x i8] c"Failed to find the location of the '%s' variable at this address.\0A Perhaps it has been optimized out.\0A Use -V with the --range option to show '%s' location range.\0A\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Sorry, we don't support this variable location yet.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.probe_finder*)* @convert_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_variable(i32* %0, %struct.probe_finder* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.probe_finder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.probe_finder* %1, %struct.probe_finder** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @dwarf_diename(i32* %7)
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %12 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %15 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %18 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %17, i32 0, i32 3
  %19 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %20 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %23 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = call i32 @convert_variable_location(i32* %10, i32 %13, i32 %16, i32* %18, i32 %21, %struct.TYPE_5__* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %30, %2
  %36 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %37 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %42 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %45)
  br label %88

47:                                               ; preds = %30
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @ENOTSUP, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %87

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %86

57:                                               ; preds = %54
  %58 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %59 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %57
  %65 = load i32*, i32** %3, align 8
  %66 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %67 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %72 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %77 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %81 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @convert_variable_fields(i32* %65, i32 %70, i64 %75, i32* %79, i32* %5, i32 %84)
  store i32 %85, i32* %6, align 4
  store i32* %5, i32** %3, align 8
  br label %86

86:                                               ; preds = %64, %57, %54
  br label %87

87:                                               ; preds = %86, %52
  br label %88

88:                                               ; preds = %87, %35
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %88
  %92 = load i32*, i32** %3, align 8
  %93 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %94 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %93, i32 0, i32 1
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %97 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.probe_finder*, %struct.probe_finder** %4, align 8
  %102 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @convert_variable_type(i32* %92, %struct.TYPE_5__* %95, i32 %100, i32 %105)
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %91, %88
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dwarf_diename(i32*) #1

declare dso_local i32 @convert_variable_location(i32*, i32, i32, i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @convert_variable_fields(i32*, i32, i64, i32*, i32*, i32) #1

declare dso_local i32 @convert_variable_type(i32*, %struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
