; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_find_variable.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_find_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_finder = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_5__ = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Searching '%s' variable in context.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to find '%s' in this function.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.probe_finder*)* @find_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_variable(i32* %0, %struct.probe_finder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.probe_finder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.probe_finder* %1, %struct.probe_finder** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %11 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @is_c_varname(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %19 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %18, i32 0, i32 3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %22 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i32 @copy_to_probe_trace_arg(%struct.TYPE_5__* %20, %struct.TYPE_4__* %23)
  store i32 %24, i32* %3, align 4
  br label %122

25:                                               ; preds = %2
  %26 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %27 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %34 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i8* @strdup(i64 %37)
  %39 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %40 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %39, i32 0, i32 3
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i8* %38, i8** %42, align 8
  br label %66

43:                                               ; preds = %25
  %44 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %45 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = call i8* @synthesize_perf_probe_arg(%struct.TYPE_4__* %46)
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %122

53:                                               ; preds = %43
  %54 = load i8*, i8** %7, align 8
  %55 = call i8* @strchr(i8* %54, i8 signext 58)
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i8*, i8** %8, align 8
  store i8 95, i8* %59, align 1
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %63 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %62, i32 0, i32 3
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i8* %61, i8** %65, align 8
  br label %66

66:                                               ; preds = %60, %32
  %67 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %68 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %67, i32 0, i32 3
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %122

76:                                               ; preds = %66
  %77 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %78 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %85 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %90 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @die_find_variable_at(i32* %83, i32 %88, i32 %91, i32* %6)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %114, label %94

94:                                               ; preds = %76
  %95 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %96 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %95, i32 0, i32 1
  %97 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %98 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @die_find_variable_at(i32* %96, i32 %101, i32 0, i32* %6)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %94
  %105 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %106 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @pr_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @ENOENT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %104, %94
  br label %114

114:                                              ; preds = %113, %76
  %115 = load i32, i32* %9, align 4
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %119 = call i32 @convert_variable(i32* %6, %struct.probe_finder* %118)
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %73, %50, %17
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @is_c_varname(i32) #1

declare dso_local i32 @copy_to_probe_trace_arg(%struct.TYPE_5__*, %struct.TYPE_4__*) #1

declare dso_local i8* @strdup(i64) #1

declare dso_local i8* @synthesize_perf_probe_arg(%struct.TYPE_4__*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @die_find_variable_at(i32*, i32, i32, i32*) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @convert_variable(i32*, %struct.probe_finder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
