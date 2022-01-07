; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_dso-data.c_open_files_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_dso-data.c_open_files_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s/self/fd\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"fd path: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to open fd directory\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @open_files_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @open_files_cnt() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.dirent*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @PATH_MAX, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  store i64 0, i64* %5, align 8
  %10 = load i32, i32* @PATH_MAX, align 4
  %11 = call i32 (...) @procfs__mountpoint()
  %12 = call i32 @scnprintf(i8* %9, i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  %14 = call i32* @opendir(i8* %9)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32* %15)
  br label %17

17:                                               ; preds = %34, %33, %0
  %18 = load i32*, i32** %4, align 8
  %19 = call %struct.dirent* @readdir(i32* %18)
  store %struct.dirent* %19, %struct.dirent** %3, align 8
  %20 = icmp ne %struct.dirent* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load %struct.dirent*, %struct.dirent** %3, align 8
  %23 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strcmp(i32 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.dirent*, %struct.dirent** %3, align 8
  %29 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strcmp(i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27, %21
  br label %17

34:                                               ; preds = %27
  %35 = load i64, i64* %5, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %5, align 8
  br label %17

37:                                               ; preds = %17
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @closedir(i32* %38)
  %40 = load i64, i64* %5, align 8
  %41 = sub nsw i64 %40, 1
  %42 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %42)
  ret i64 %41
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @procfs__mountpoint(...) #2

declare dso_local i32 @pr_debug(i8*, i8*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @TEST_ASSERT_VAL(i8*, i32*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
