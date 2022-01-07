; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-events.c_test_pmu_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-events.c_test_pmu_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.dirent = type { i8* }
%struct.evlist_test = type { i8*, i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s/bus/event_source/devices/cpu/events/\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"omitting PMU cpu events tests\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"can't open pmu event dir\00", align 1
@NAME_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"cpu/event=%s/u\00", align 1
@test__checkevent_pmu_events = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"%s:u,cpu/event=%s/u\00", align 1
@test__checkevent_pmu_events_mix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_pmu_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_pmu_events() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.stat, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.evlist_test, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = call i8* (...) @sysfs__mountpoint()
  %18 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = call i32 @stat(i8* %15, %struct.stat* %2)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %0
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %90

24:                                               ; preds = %0
  %25 = call i32* @opendir(i8* %15)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %90

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %85, %82, %30
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32*, i32** %6, align 8
  %36 = call %struct.dirent* @readdir(i32* %35)
  store %struct.dirent* %36, %struct.dirent** %5, align 8
  %37 = icmp ne %struct.dirent* %36, null
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ false, %31 ], [ %37, %34 ]
  br i1 %39, label %40, label %86

40:                                               ; preds = %38
  %41 = bitcast %struct.evlist_test* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %41, i8 0, i64 16, i1 false)
  %42 = load i32, i32* @NAME_MAX, align 4
  %43 = mul nsw i32 2, %42
  %44 = add nsw i32 %43, 1
  %45 = add nsw i32 %44, 12
  %46 = add nsw i32 %45, 3
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %10, align 8
  %49 = alloca i8, i64 %47, align 16
  store i64 %47, i64* %11, align 8
  %50 = load %struct.dirent*, %struct.dirent** %5, align 8
  %51 = getelementptr inbounds %struct.dirent, %struct.dirent* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strchr(i8* %52, i8 signext 46)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  store i32 2, i32* %8, align 4
  br label %82

56:                                               ; preds = %40
  %57 = trunc i64 %47 to i32
  %58 = load %struct.dirent*, %struct.dirent** %5, align 8
  %59 = getelementptr inbounds %struct.dirent, %struct.dirent* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %49, i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  %62 = getelementptr inbounds %struct.evlist_test, %struct.evlist_test* %9, i32 0, i32 0
  store i8* %49, i8** %62, align 8
  %63 = load i32, i32* @test__checkevent_pmu_events, align 4
  %64 = getelementptr inbounds %struct.evlist_test, %struct.evlist_test* %9, i32 0, i32 1
  store i32 %63, i32* %64, align 8
  %65 = call i32 @test_event(%struct.evlist_test* %9)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  store i32 3, i32* %8, align 4
  br label %82

69:                                               ; preds = %56
  %70 = trunc i64 %47 to i32
  %71 = load %struct.dirent*, %struct.dirent** %5, align 8
  %72 = getelementptr inbounds %struct.dirent, %struct.dirent* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.dirent*, %struct.dirent** %5, align 8
  %75 = getelementptr inbounds %struct.dirent, %struct.dirent* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %49, i32 %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %73, i8* %76)
  %78 = getelementptr inbounds %struct.evlist_test, %struct.evlist_test* %9, i32 0, i32 0
  store i8* %49, i8** %78, align 8
  %79 = load i32, i32* @test__checkevent_pmu_events_mix, align 4
  %80 = getelementptr inbounds %struct.evlist_test, %struct.evlist_test* %9, i32 0, i32 1
  store i32 %79, i32* %80, align 8
  %81 = call i32 @test_event(%struct.evlist_test* %9)
  store i32 %81, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %69, %68, %55
  %83 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %8, align 4
  switch i32 %84, label %93 [
    i32 0, label %85
    i32 2, label %31
    i32 3, label %86
  ]

85:                                               ; preds = %82
  br label %31

86:                                               ; preds = %82, %38
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @closedir(i32* %87)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %90

90:                                               ; preds = %86, %28, %22
  %91 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %1, align 4
  ret i32 %92

93:                                               ; preds = %82
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i8* @sysfs__mountpoint(...) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @pr_debug(i8*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i32 @test_event(%struct.evlist_test*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @closedir(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
