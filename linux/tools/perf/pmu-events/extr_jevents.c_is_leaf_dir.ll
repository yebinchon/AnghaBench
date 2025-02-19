; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/pmu-events/extr_jevents.c_is_leaf_dir.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/pmu-events/extr_jevents.c_is_leaf_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8*, i64 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@DT_DIR = common dso_local global i64 0, align 8
@DT_UNKNOWN = common dso_local global i64 0, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_leaf_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_leaf_dir(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 1, i32* %6, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i32* @opendir(i8* %11)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %72, %33, %16
  %18 = load i32*, i32** %4, align 8
  %19 = call %struct.dirent* @readdir(i32* %18)
  store %struct.dirent* %19, %struct.dirent** %5, align 8
  %20 = icmp ne %struct.dirent* %19, null
  br i1 %20, label %21, label %73

21:                                               ; preds = %17
  %22 = load %struct.dirent*, %struct.dirent** %5, align 8
  %23 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.dirent*, %struct.dirent** %5, align 8
  %29 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27, %21
  br label %17

34:                                               ; preds = %27
  %35 = load %struct.dirent*, %struct.dirent** %5, align 8
  %36 = getelementptr inbounds %struct.dirent, %struct.dirent* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DT_DIR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %73

41:                                               ; preds = %34
  %42 = load %struct.dirent*, %struct.dirent** %5, align 8
  %43 = getelementptr inbounds %struct.dirent, %struct.dirent* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DT_UNKNOWN, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %41
  %48 = load i32, i32* @PATH_MAX, align 4
  %49 = zext i32 %48 to i64
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %7, align 8
  %51 = alloca i8, i64 %49, align 16
  store i64 %49, i64* %8, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = load %struct.dirent*, %struct.dirent** %5, align 8
  %54 = getelementptr inbounds %struct.dirent, %struct.dirent* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %52, i8* %55)
  %57 = call i64 @stat(i8* %51, %struct.stat* %9)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  store i32 3, i32* %10, align 4
  br label %67

60:                                               ; preds = %47
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @S_ISDIR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  store i32 3, i32* %10, align 4
  br label %67

66:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %66, %65, %59
  %68 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %10, align 4
  switch i32 %69, label %79 [
    i32 0, label %70
    i32 3, label %73
  ]

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %70, %41
  br label %72

72:                                               ; preds = %71
  br label %17

73:                                               ; preds = %67, %40, %17
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @closedir(i32* %74)
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %15
  %78 = load i32, i32* %2, align 4
  ret i32 %78

79:                                               ; preds = %67
  unreachable
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

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
