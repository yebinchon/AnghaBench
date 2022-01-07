; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-plugin.c_load_plugins_dir.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-plugin.c_load_plugins_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32 }
%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tep_handle*, i8*, i8*, void (%struct.tep_handle*, i8*, i8*, i8*)*, i8*)* @load_plugins_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_plugins_dir(%struct.tep_handle* %0, i8* %1, i8* %2, void (%struct.tep_handle*, i8*, i8*, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.tep_handle*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca void (%struct.tep_handle*, i8*, i8*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.dirent*, align 8
  %12 = alloca %struct.stat, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.tep_handle* %0, %struct.tep_handle** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store void (%struct.tep_handle*, i8*, i8*, i8*)* %3, void (%struct.tep_handle*, i8*, i8*, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @stat(i8* %16, %struct.stat* %12)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %72

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @S_ISDIR(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %72

27:                                               ; preds = %21
  %28 = load i8*, i8** %8, align 8
  %29 = call i32* @opendir(i8* %28)
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %72

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %63, %62, %49, %33
  %35 = load i32*, i32** %13, align 8
  %36 = call %struct.dirent* @readdir(i32* %35)
  store %struct.dirent* %36, %struct.dirent** %11, align 8
  %37 = icmp ne %struct.dirent* %36, null
  br i1 %37, label %38, label %69

38:                                               ; preds = %34
  %39 = load %struct.dirent*, %struct.dirent** %11, align 8
  %40 = getelementptr inbounds %struct.dirent, %struct.dirent* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %15, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i8*, i8** %15, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %38
  br label %34

50:                                               ; preds = %45
  %51 = load i8*, i8** %15, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = sub nsw i32 %53, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %51, i64 %57
  %59 = load i8*, i8** %7, align 8
  %60 = call i64 @strcmp(i8* %58, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %34

63:                                               ; preds = %50
  %64 = load void (%struct.tep_handle*, i8*, i8*, i8*)*, void (%struct.tep_handle*, i8*, i8*, i8*)** %9, align 8
  %65 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = load i8*, i8** %10, align 8
  call void %64(%struct.tep_handle* %65, i8* %66, i8* %67, i8* %68)
  br label %34

69:                                               ; preds = %34
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @closedir(i32* %70)
  br label %72

72:                                               ; preds = %69, %32, %26, %20
  ret void
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
