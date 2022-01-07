; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_pmu_aliases_parse.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_pmu_aliases_parse.c"
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
@.str.4 = private unnamed_addr constant [16 x i8] c"Cannot open %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Cannot set up %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.list_head*)* @pmu_aliases_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_aliases_parse(i8* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32* @opendir(i8* %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %76

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %72, %69, %20
  %22 = load i32*, i32** %7, align 8
  %23 = call %struct.dirent* @readdir(i32* %22)
  store %struct.dirent* %23, %struct.dirent** %6, align 8
  %24 = icmp ne %struct.dirent* %23, null
  br i1 %24, label %25, label %73

25:                                               ; preds = %21
  %26 = load i32, i32* @PATH_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %8, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %9, align 8
  %30 = load %struct.dirent*, %struct.dirent** %6, align 8
  %31 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36, %25
  store i32 2, i32* %12, align 4
  br label %69

41:                                               ; preds = %36
  %42 = load i8*, i8** %10, align 8
  %43 = call i64 @pmu_alias_info_file(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 2, i32* %12, align 4
  br label %69

46:                                               ; preds = %41
  %47 = load i32, i32* @PATH_MAX, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @scnprintf(i8* %29, i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %48, i8* %49)
  %51 = call i32* @fopen(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %51, i32** %11, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %29)
  store i32 2, i32* %12, align 4
  br label %69

56:                                               ; preds = %46
  %57 = load %struct.list_head*, %struct.list_head** %5, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i64 @perf_pmu__new_alias(%struct.list_head* %57, i8* %58, i8* %59, i32* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %63, %56
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @fclose(i32* %67)
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %66, %54, %45, %40
  %70 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %12, align 4
  switch i32 %71, label %78 [
    i32 0, label %72
    i32 2, label %21
  ]

72:                                               ; preds = %69
  br label %21

73:                                               ; preds = %21
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @closedir(i32* %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %17
  %77 = load i32, i32* %3, align 4
  ret i32 %77

78:                                               ; preds = %69
  unreachable
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @pmu_alias_info_file(i8*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i64 @perf_pmu__new_alias(%struct.list_head*, i8*, i8*, i32*) #1

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
