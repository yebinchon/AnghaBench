; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_convert_to_trace_point.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_convert_to_trace_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_trace_point = type { i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to get entry address of %s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get end address of %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Offset specified is greater than size of %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to find symbol at 0x%lx\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [90 x i8] c"Failed to find \22%s%%return\22,\0A because %s is an inlined function and has no return point.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i32, i8*, %struct.probe_trace_point*)* @convert_to_trace_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_trace_point(i32* %0, i32* %1, i64 %2, i32 %3, i8* %4, %struct.probe_trace_point* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.probe_trace_point*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_3__, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store %struct.probe_trace_point* %5, %struct.probe_trace_point** %13, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i64 @dwarf_entrypc(i32* %18, i64* %14)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %6
  %22 = load i32*, i32** %8, align 8
  %23 = call i8* @dwarf_diename(i32* %22)
  %24 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %103

27:                                               ; preds = %6
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @dwarf_highpc(i32* %28, i64* %15)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = call i8* @dwarf_diename(i32* %32)
  %34 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %103

37:                                               ; preds = %27
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %15, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32*, i32** %8, align 8
  %43 = call i8* @dwarf_diename(i32* %42)
  %44 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %103

47:                                               ; preds = %37
  %48 = load i32*, i32** %8, align 8
  %49 = call i8* @dwarf_diename(i32* %48)
  store i8* %49, i8** %17, align 8
  %50 = load i8*, i8** %17, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %66, label %52

52:                                               ; preds = %47
  %53 = load i32*, i32** %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i8* @dwfl_module_addrsym(i32* %53, i64 %54, %struct.TYPE_3__* %16, i32* null)
  store i8* %55, i8** %17, align 8
  %56 = load i8*, i8** %17, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = load i64, i64* %10, align 8
  %60 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %103

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %14, align 8
  br label %66

66:                                               ; preds = %63, %47
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %14, align 8
  %69 = sub nsw i64 %67, %68
  %70 = load %struct.probe_trace_point*, %struct.probe_trace_point** %13, align 8
  %71 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.probe_trace_point*, %struct.probe_trace_point** %13, align 8
  %74 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load i8*, i8** %17, align 8
  %76 = call i32 @strdup(i8* %75)
  %77 = load %struct.probe_trace_point*, %struct.probe_trace_point** %13, align 8
  %78 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.probe_trace_point*, %struct.probe_trace_point** %13, align 8
  %80 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %66
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  br label %103

86:                                               ; preds = %66
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* %10, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i8*, i8** %12, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.4, i64 0, i64 0), i8* %94, i8* %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %7, align 4
  br label %103

99:                                               ; preds = %89
  %100 = load %struct.probe_trace_point*, %struct.probe_trace_point** %13, align 8
  %101 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %100, i32 0, i32 2
  store i32 1, i32* %101, align 8
  br label %102

102:                                              ; preds = %99, %86
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %102, %93, %83, %58, %41, %31, %21
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i64 @dwarf_entrypc(i32*, i64*) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i8* @dwarf_diename(i32*) #1

declare dso_local i64 @dwarf_highpc(i32*, i64*) #1

declare dso_local i8* @dwfl_module_addrsym(i32*, i64, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
