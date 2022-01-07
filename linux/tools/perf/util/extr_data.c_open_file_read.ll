; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_open_file_read.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_open_file_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.stat = type { i64, i64 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to open %s: %s\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"perf.data\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"  (try 'perf record' first)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"File %s not owned by current user or root (use -f to override)\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"zero-sized data (%s), nothing to do!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_data*)* @open_file_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_file_read(%struct.perf_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_data*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.perf_data* %0, %struct.perf_data** %3, align 8
  %10 = load i32, i32* @STRERR_BUFSIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %15 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = call i32 @open(i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %1
  %23 = load i32, i32* @errno, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %25 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = trunc i64 %11 to i32
  %30 = call i32 @str_error_r(i32 %28, i8* %13, i32 %29)
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @ENOENT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %22
  %36 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %37 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @strcmp(i32 %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %35, %22
  %45 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %93

48:                                               ; preds = %1
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @fstat(i32 %49, %struct.stat* %4)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %90

53:                                               ; preds = %48
  %54 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %55 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 (...) @geteuid()
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %69 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  br label %90

73:                                               ; preds = %62, %58, %53
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %79 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  br label %90

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %87 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i64 %85, i64* %88, align 8
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %93

90:                                               ; preds = %77, %67, %52
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @close(i32 %91)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %93

93:                                               ; preds = %90, %83, %44
  %94 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i32, i32) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i32 @str_error_r(i32, i8*, i32) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i64 @geteuid(...) #2

declare dso_local i32 @pr_info(i8*, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
