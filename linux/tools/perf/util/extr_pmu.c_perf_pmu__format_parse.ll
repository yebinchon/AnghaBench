; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_perf_pmu__format_parse.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_perf_pmu__format_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.dirent = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@perf_pmu_in = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_pmu__format_parse(i8* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32* @opendir(i8* %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %73

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %68, %65, %21
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = call %struct.dirent* @readdir(i32* %26)
  store %struct.dirent* %27, %struct.dirent** %6, align 8
  %28 = icmp ne %struct.dirent* %27, null
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i1 [ false, %22 ], [ %28, %25 ]
  br i1 %30, label %31, label %69

31:                                               ; preds = %29
  %32 = load i32, i32* @PATH_MAX, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %9, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %10, align 8
  %36 = load %struct.dirent*, %struct.dirent** %6, align 8
  %37 = getelementptr inbounds %struct.dirent, %struct.dirent* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42, %31
  store i32 2, i32* %13, align 4
  br label %65

47:                                               ; preds = %42
  %48 = load i32, i32* @PATH_MAX, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @snprintf(i8* %35, i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %49, i8* %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  %54 = call i32* @fopen(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %54, i32** %12, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %47
  store i32 3, i32* %13, align 4
  br label %65

58:                                               ; preds = %47
  %59 = load i32*, i32** %12, align 8
  store i32* %59, i32** @perf_pmu_in, align 8
  %60 = load %struct.list_head*, %struct.list_head** %5, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @perf_pmu_parse(%struct.list_head* %60, i8* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @fclose(i32* %63)
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %58, %57, %46
  %66 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %13, align 4
  switch i32 %67, label %75 [
    i32 0, label %68
    i32 2, label %22
    i32 3, label %69
  ]

68:                                               ; preds = %65
  br label %22

69:                                               ; preds = %65, %29
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @closedir(i32* %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %18
  %74 = load i32, i32* %3, align 4
  ret i32 %74

75:                                               ; preds = %65
  unreachable
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perf_pmu_parse(%struct.list_head*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
