; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_add_tracepoint_multi_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_add_tracepoint_multi_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_events_error = type { i32 }
%struct.list_head = type { i32 }
%struct.dirent = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i32*, i8*, i8*, %struct.parse_events_error*, %struct.list_head*)* @add_tracepoint_multi_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_tracepoint_multi_event(%struct.list_head* %0, i32* %1, i8* %2, i8* %3, %struct.parse_events_error* %4, %struct.list_head* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.parse_events_error*, align 8
  %13 = alloca %struct.list_head*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.dirent*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.parse_events_error* %4, %struct.parse_events_error** %12, align 8
  store %struct.list_head* %5, %struct.list_head** %13, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = call i8* @get_events_file(i8* %19)
  store i8* %20, i8** %14, align 8
  %21 = load i8*, i8** %14, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %6
  %24 = load %struct.parse_events_error*, %struct.parse_events_error** %12, align 8
  %25 = load i32, i32* @errno, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @tracepoint_error(%struct.parse_events_error* %24, i32 %25, i8* %26, i8* %27)
  store i32 -1, i32* %7, align 4
  br label %112

29:                                               ; preds = %6
  %30 = load i8*, i8** %14, align 8
  %31 = call i32* @opendir(i8* %30)
  store i32* %31, i32** %16, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %14, align 8
  %36 = call i32 @put_events_file(i8* %35)
  %37 = load %struct.parse_events_error*, %struct.parse_events_error** %12, align 8
  %38 = load i32, i32* @errno, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @tracepoint_error(%struct.parse_events_error* %37, i32 %38, i8* %39, i8* %40)
  store i32 -1, i32* %7, align 4
  br label %112

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %85, %84, %76, %42
  %44 = load i32, i32* %17, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i32*, i32** %16, align 8
  %48 = call %struct.dirent* @readdir(i32* %47)
  store %struct.dirent* %48, %struct.dirent** %15, align 8
  %49 = icmp ne %struct.dirent* %48, null
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi i1 [ false, %43 ], [ %49, %46 ]
  br i1 %51, label %52, label %97

52:                                               ; preds = %50
  %53 = load %struct.dirent*, %struct.dirent** %15, align 8
  %54 = getelementptr inbounds %struct.dirent, %struct.dirent* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strcmp(i32 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %52
  %59 = load %struct.dirent*, %struct.dirent** %15, align 8
  %60 = getelementptr inbounds %struct.dirent, %struct.dirent* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @strcmp(i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load %struct.dirent*, %struct.dirent** %15, align 8
  %66 = getelementptr inbounds %struct.dirent, %struct.dirent* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @strcmp(i32 %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.dirent*, %struct.dirent** %15, align 8
  %72 = getelementptr inbounds %struct.dirent, %struct.dirent* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @strcmp(i32 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70, %64, %58, %52
  br label %43

77:                                               ; preds = %70
  %78 = load %struct.dirent*, %struct.dirent** %15, align 8
  %79 = getelementptr inbounds %struct.dirent, %struct.dirent* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %11, align 8
  %82 = call i32 @strglobmatch(i32 %80, i8* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  br label %43

85:                                               ; preds = %77
  %86 = load i32, i32* %18, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %18, align 4
  %88 = load %struct.list_head*, %struct.list_head** %8, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load %struct.dirent*, %struct.dirent** %15, align 8
  %92 = getelementptr inbounds %struct.dirent, %struct.dirent* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.parse_events_error*, %struct.parse_events_error** %12, align 8
  %95 = load %struct.list_head*, %struct.list_head** %13, align 8
  %96 = call i32 @add_tracepoint(%struct.list_head* %88, i32* %89, i8* %90, i32 %93, %struct.parse_events_error* %94, %struct.list_head* %95)
  store i32 %96, i32* %17, align 4
  br label %43

97:                                               ; preds = %50
  %98 = load i32, i32* %18, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  %101 = load %struct.parse_events_error*, %struct.parse_events_error** %12, align 8
  %102 = load i32, i32* @ENOENT, align 4
  %103 = load i8*, i8** %10, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 @tracepoint_error(%struct.parse_events_error* %101, i32 %102, i8* %103, i8* %104)
  store i32 -1, i32* %17, align 4
  br label %106

106:                                              ; preds = %100, %97
  %107 = load i8*, i8** %14, align 8
  %108 = call i32 @put_events_file(i8* %107)
  %109 = load i32*, i32** %16, align 8
  %110 = call i32 @closedir(i32* %109)
  %111 = load i32, i32* %17, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %106, %34, %23
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i8* @get_events_file(i8*) #1

declare dso_local i32 @tracepoint_error(%struct.parse_events_error*, i32, i8*, i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @put_events_file(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @strglobmatch(i32, i8*) #1

declare dso_local i32 @add_tracepoint(%struct.list_head*, i32*, i8*, i32, %struct.parse_events_error*, %struct.list_head*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
