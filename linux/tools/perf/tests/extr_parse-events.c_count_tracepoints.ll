; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-events.c_count_tracepoints.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-events.c_count_tracepoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Can't open events dir\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"header_event\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"header_page\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Can't get sys path\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Can't open sys dir\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @count_tracepoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_tracepoints() #0 {
  %1 = alloca %struct.dirent*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  %7 = call i8* (...) @tracing_events__opendir()
  store i8* %7, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %8)
  br label %10

10:                                               ; preds = %88, %44, %0
  %11 = load i8*, i8** %2, align 8
  %12 = call %struct.dirent* @readdir(i8* %11)
  store %struct.dirent* %12, %struct.dirent** %1, align 8
  %13 = icmp ne %struct.dirent* %12, null
  br i1 %13, label %14, label %93

14:                                               ; preds = %10
  %15 = load %struct.dirent*, %struct.dirent** %1, align 8
  %16 = getelementptr inbounds %struct.dirent, %struct.dirent* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strcmp(i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %14
  %21 = load %struct.dirent*, %struct.dirent** %1, align 8
  %22 = getelementptr inbounds %struct.dirent, %struct.dirent* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strcmp(i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %20
  %27 = load %struct.dirent*, %struct.dirent** %1, align 8
  %28 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcmp(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.dirent*, %struct.dirent** %1, align 8
  %34 = getelementptr inbounds %struct.dirent, %struct.dirent* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strcmp(i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.dirent*, %struct.dirent** %1, align 8
  %40 = getelementptr inbounds %struct.dirent, %struct.dirent* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strcmp(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38, %32, %26, %20, %14
  br label %10

45:                                               ; preds = %38
  %46 = load %struct.dirent*, %struct.dirent** %1, align 8
  %47 = getelementptr inbounds %struct.dirent, %struct.dirent* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @get_events_file(i32 %48)
  store i8* %49, i8** %4, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %50)
  %52 = load i8*, i8** %4, align 8
  %53 = call i8* @opendir(i8* %52)
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %85, %84, %45
  %57 = load i8*, i8** %6, align 8
  %58 = call %struct.dirent* @readdir(i8* %57)
  store %struct.dirent* %58, %struct.dirent** %5, align 8
  %59 = icmp ne %struct.dirent* %58, null
  br i1 %59, label %60, label %88

60:                                               ; preds = %56
  %61 = load %struct.dirent*, %struct.dirent** %5, align 8
  %62 = getelementptr inbounds %struct.dirent, %struct.dirent* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @strcmp(i32 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %60
  %67 = load %struct.dirent*, %struct.dirent** %5, align 8
  %68 = getelementptr inbounds %struct.dirent, %struct.dirent* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @strcmp(i32 %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load %struct.dirent*, %struct.dirent** %5, align 8
  %74 = getelementptr inbounds %struct.dirent, %struct.dirent* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @strcmp(i32 %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.dirent*, %struct.dirent** %5, align 8
  %80 = getelementptr inbounds %struct.dirent, %struct.dirent* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @strcmp(i32 %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78, %72, %66, %60
  br label %56

85:                                               ; preds = %78
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4
  br label %56

88:                                               ; preds = %56
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @closedir(i8* %89)
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @put_events_file(i8* %91)
  br label %10

93:                                               ; preds = %10
  %94 = load i8*, i8** %2, align 8
  %95 = call i32 @closedir(i8* %94)
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i8* @tracing_events__opendir(...) #1

declare dso_local i32 @TEST_ASSERT_VAL(i8*, i8*) #1

declare dso_local %struct.dirent* @readdir(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i8* @get_events_file(i32) #1

declare dso_local i8* @opendir(i8*) #1

declare dso_local i32 @closedir(i8*) #1

declare dso_local i32 @put_events_file(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
