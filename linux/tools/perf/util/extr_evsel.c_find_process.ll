; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_find_process.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_find_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s/%s/comm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @find_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_process(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %4, align 8
  store i32 -1, i32* %7, align 4
  %15 = call i32 (...) @procfs__mountpoint()
  %16 = call i32* @opendir(i32 %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %81

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %73, %70, %20
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32*, i32** %5, align 8
  %26 = call %struct.dirent* @readdir(i32* %25)
  store %struct.dirent* %26, %struct.dirent** %6, align 8
  %27 = icmp ne %struct.dirent* %26, null
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %30, label %74

30:                                               ; preds = %28
  %31 = load i32, i32* @PATH_MAX, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %8, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %9, align 8
  %35 = load %struct.dirent*, %struct.dirent** %6, align 8
  %36 = getelementptr inbounds %struct.dirent, %struct.dirent* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DT_DIR, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %30
  %41 = load %struct.dirent*, %struct.dirent** %6, align 8
  %42 = getelementptr inbounds %struct.dirent, %struct.dirent* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.dirent*, %struct.dirent** %6, align 8
  %48 = getelementptr inbounds %struct.dirent, %struct.dirent* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46, %40, %30
  store i32 2, i32* %12, align 4
  br label %70

53:                                               ; preds = %46
  %54 = trunc i64 %32 to i32
  %55 = call i32 (...) @procfs__mountpoint()
  %56 = load %struct.dirent*, %struct.dirent** %6, align 8
  %57 = getelementptr inbounds %struct.dirent, %struct.dirent* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @scnprintf(i8* %34, i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %58)
  %60 = call i64 @filename__read_str(i8* %34, i8** %10, i64* %11)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 2, i32* %12, align 4
  br label %70

63:                                               ; preds = %53
  %64 = load i8*, i8** %3, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @strncmp(i8* %64, i8* %65, i64 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @free(i8* %68)
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %63, %62, %52
  %71 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %12, align 4
  switch i32 %72, label %83 [
    i32 0, label %73
    i32 2, label %21
  ]

73:                                               ; preds = %70
  br label %21

74:                                               ; preds = %28
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @closedir(i32* %75)
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 0, i32 1
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %74, %19
  %82 = load i32, i32* %2, align 4
  ret i32 %82

83:                                               ; preds = %70
  unreachable
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @opendir(i32) #1

declare dso_local i32 @procfs__mountpoint(...) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i64 @filename__read_str(i8*, i8**, i64*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

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
