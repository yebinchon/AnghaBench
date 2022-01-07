; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_llvm-utils.c_search_program.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_llvm-utils.c_search_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@F_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @search_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_program(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %10, align 8
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %56

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 47
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* @F_OK, align 4
  %38 = call i64 @access(i8* %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* @PATH_MAX, align 4
  %44 = call i32 @strlcpy(i8* %41, i8* %42, i32 %43)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %93

45:                                               ; preds = %35
  br label %55

46:                                               ; preds = %29
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i8*, i8** %5, align 8
  store i8* %53, i8** %6, align 8
  br label %54

54:                                               ; preds = %52, %46
  br label %55

55:                                               ; preds = %54, %45
  br label %56

56:                                               ; preds = %55, %23, %3
  %57 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %57, i8** %8, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %93

61:                                               ; preds = %56
  %62 = load i8*, i8** %8, align 8
  %63 = call i8* @strdup(i8* %62)
  store i8* %63, i8** %8, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %93

67:                                               ; preds = %61
  %68 = load i32, i32* @ENOENT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %13, align 4
  %70 = load i8*, i8** %8, align 8
  %71 = call i8* @strtok_r(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %10)
  store i8* %71, i8** %9, align 8
  br label %72

72:                                               ; preds = %87, %67
  %73 = load i8*, i8** %9, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = trunc i64 %16 to i32
  %77 = load i8*, i8** %9, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @scnprintf(i8* %18, i32 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %77, i8* %78)
  %80 = load i32, i32* @F_OK, align 4
  %81 = call i64 @access(i8* %18, i32 %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* @PATH_MAX, align 4
  %86 = call i32 @strlcpy(i8* %84, i8* %18, i32 %85)
  store i32 0, i32* %13, align 4
  br label %89

87:                                               ; preds = %75
  %88 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %10)
  store i8* %88, i8** %9, align 8
  br label %72

89:                                               ; preds = %83, %72
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %93

93:                                               ; preds = %89, %66, %60, %40
  %94 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @access(i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #2

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
