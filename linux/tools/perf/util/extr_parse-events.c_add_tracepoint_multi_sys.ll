; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_add_tracepoint_multi_sys.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_add_tracepoint_multi_sys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_events_error = type { i32 }
%struct.list_head = type { i32 }
%struct.dirent = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"header_event\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"header_page\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i32*, i8*, i8*, %struct.parse_events_error*, %struct.list_head*)* @add_tracepoint_multi_sys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_tracepoint_multi_sys(%struct.list_head* %0, i32* %1, i8* %2, i8* %3, %struct.parse_events_error* %4, %struct.list_head* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.parse_events_error*, align 8
  %13 = alloca %struct.list_head*, align 8
  %14 = alloca %struct.dirent*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.parse_events_error* %4, %struct.parse_events_error** %12, align 8
  store %struct.list_head* %5, %struct.list_head** %13, align 8
  store i32 0, i32* %16, align 4
  %17 = call i32* (...) @tracing_events__opendir()
  store i32* %17, i32** %15, align 8
  %18 = load i32*, i32** %15, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %6
  %21 = load %struct.parse_events_error*, %struct.parse_events_error** %12, align 8
  %22 = load i32, i32* @errno, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @tracepoint_error(%struct.parse_events_error* %21, i32 %22, i8* %23, i8* %24)
  store i32 -1, i32* %7, align 4
  br label %89

26:                                               ; preds = %6
  br label %27

27:                                               ; preds = %75, %74, %66, %26
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %15, align 8
  %32 = call %struct.dirent* @readdir(i32* %31)
  store %struct.dirent* %32, %struct.dirent** %14, align 8
  %33 = icmp ne %struct.dirent* %32, null
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  br i1 %35, label %36, label %85

36:                                               ; preds = %34
  %37 = load %struct.dirent*, %struct.dirent** %14, align 8
  %38 = getelementptr inbounds %struct.dirent, %struct.dirent* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strcmp(i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %36
  %43 = load %struct.dirent*, %struct.dirent** %14, align 8
  %44 = getelementptr inbounds %struct.dirent, %struct.dirent* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strcmp(i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  %49 = load %struct.dirent*, %struct.dirent** %14, align 8
  %50 = getelementptr inbounds %struct.dirent, %struct.dirent* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @strcmp(i32 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %48
  %55 = load %struct.dirent*, %struct.dirent** %14, align 8
  %56 = getelementptr inbounds %struct.dirent, %struct.dirent* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @strcmp(i32 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.dirent*, %struct.dirent** %14, align 8
  %62 = getelementptr inbounds %struct.dirent, %struct.dirent* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @strcmp(i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60, %54, %48, %42, %36
  br label %27

67:                                               ; preds = %60
  %68 = load %struct.dirent*, %struct.dirent** %14, align 8
  %69 = getelementptr inbounds %struct.dirent, %struct.dirent* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @strglobmatch(i32 %70, i8* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  br label %27

75:                                               ; preds = %67
  %76 = load %struct.list_head*, %struct.list_head** %8, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.dirent*, %struct.dirent** %14, align 8
  %79 = getelementptr inbounds %struct.dirent, %struct.dirent* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %11, align 8
  %82 = load %struct.parse_events_error*, %struct.parse_events_error** %12, align 8
  %83 = load %struct.list_head*, %struct.list_head** %13, align 8
  %84 = call i32 @add_tracepoint_event(%struct.list_head* %76, i32* %77, i32 %80, i8* %81, %struct.parse_events_error* %82, %struct.list_head* %83)
  store i32 %84, i32* %16, align 4
  br label %27

85:                                               ; preds = %34
  %86 = load i32*, i32** %15, align 8
  %87 = call i32 @closedir(i32* %86)
  %88 = load i32, i32* %16, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %85, %20
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32* @tracing_events__opendir(...) #1

declare dso_local i32 @tracepoint_error(%struct.parse_events_error*, i32, i8*, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @strglobmatch(i32, i8*) #1

declare dso_local i32 @add_tracepoint_event(%struct.list_head*, i32*, i32, i8*, %struct.parse_events_error*, %struct.list_head*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
