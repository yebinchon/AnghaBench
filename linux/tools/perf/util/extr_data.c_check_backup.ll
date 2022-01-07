; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_check_backup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_check_backup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_data = type { i8* }
%struct.stat = type { i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s.old\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Can't remove old data: %s (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Unknown file found\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Can't move data: %s (%s to %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_data*)* @check_backup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_backup(%struct.perf_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_data*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.perf_data* %0, %struct.perf_data** %3, align 8
  %9 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %10 = call i64 @perf_data__is_read(%struct.perf_data* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

13:                                               ; preds = %1
  %14 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %15 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @stat(i8* %16, %struct.stat* %4)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %64, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %19
  %24 = load i32, i32* @PATH_MAX, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %5, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %6, align 8
  %28 = trunc i64 %25 to i32
  %29 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %30 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @snprintf(i8* %27, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = call i32 @rm_rf_perf_data(i8* %27)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %23
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, -2
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @errno, align 4
  %42 = call i8* @strerror(i32 %41)
  br label %43

43:                                               ; preds = %40, %39
  %44 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), %39 ], [ %42, %40 ]
  %45 = call i32 (i8*, i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %44, i8* %27)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %60

46:                                               ; preds = %23
  %47 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %48 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @rename(i8* %49, i8* %27)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* @errno, align 4
  %54 = call i8* @strerror(i32 %53)
  %55 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %56 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %54, i8* %57, i8* %27)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %60

59:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %59, %52, %43
  %61 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %8, align 4
  switch i32 %62, label %67 [
    i32 0, label %63
    i32 1, label %65
  ]

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %63, %19, %13
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %60, %12
  %66 = load i32, i32* %2, align 4
  ret i32 %66

67:                                               ; preds = %60
  unreachable
}

declare dso_local i64 @perf_data__is_read(%struct.perf_data*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @rm_rf_perf_data(i8*) #1

declare dso_local i32 @pr_err(i8*, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @rename(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
