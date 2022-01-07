; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_event-times.c_attach__enable_on_exec.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_event-times.c_attach__enable_on_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32 }
%struct.evsel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.target = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@__const.attach__enable_on_exec.argv = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"attaching to spawned child, enable on exec\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Not enough memory to create thread/cpu maps\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Couldn't run the workload!\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"perf_evlist__open: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@TEST_OK = common dso_local global i32 0, align 4
@TEST_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*)* @attach__enable_on_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach__enable_on_exec(%struct.evlist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evlist*, align 8
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %struct.target, align 4
  %6 = alloca [2 x i8*], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %3, align 8
  %11 = load %struct.evlist*, %struct.evlist** %3, align 8
  %12 = call %struct.evsel* @evlist__last(%struct.evlist* %11)
  store %struct.evsel* %12, %struct.evsel** %4, align 8
  %13 = getelementptr inbounds %struct.target, %struct.target* %5, i32 0, i32 0
  %14 = load i32, i32* @UINT_MAX, align 4
  store i32 %14, i32* %13, align 4
  %15 = bitcast [2 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([2 x i8*]* @__const.attach__enable_on_exec.argv to i8*), i64 16, i1 false)
  %16 = load i32, i32* @STRERR_BUFSIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.evlist*, %struct.evlist** %3, align 8
  %22 = call i32 @perf_evlist__create_maps(%struct.evlist* %21, %struct.target* %5)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %62

28:                                               ; preds = %1
  %29 = load %struct.evlist*, %struct.evlist** %3, align 8
  %30 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %31 = call i32 @perf_evlist__prepare_workload(%struct.evlist* %29, %struct.target* %5, i8** %30, i32 0, i32* null)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %62

37:                                               ; preds = %28
  %38 = load %struct.evsel*, %struct.evsel** %4, align 8
  %39 = getelementptr inbounds %struct.evsel, %struct.evsel* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load %struct.evlist*, %struct.evlist** %3, align 8
  %43 = call i32 @evlist__open(%struct.evlist* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load i32, i32* @errno, align 4
  %48 = trunc i64 %17 to i32
  %49 = call i32 @str_error_r(i32 %47, i8* %19, i32 %48)
  %50 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %62

52:                                               ; preds = %37
  %53 = load %struct.evlist*, %struct.evlist** %3, align 8
  %54 = call i32 @perf_evlist__start_workload(%struct.evlist* %53)
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @TEST_OK, align 4
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @TEST_FAIL, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %62

62:                                               ; preds = %60, %46, %34, %25
  %63 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.evsel* @evlist__last(%struct.evlist*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @perf_evlist__create_maps(%struct.evlist*, %struct.target*) #1

declare dso_local i32 @perf_evlist__prepare_workload(%struct.evlist*, %struct.target*, i8**, i32, i32*) #1

declare dso_local i32 @evlist__open(%struct.evlist*) #1

declare dso_local i32 @str_error_r(i32, i8*, i32) #1

declare dso_local i32 @perf_evlist__start_workload(%struct.evlist*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
