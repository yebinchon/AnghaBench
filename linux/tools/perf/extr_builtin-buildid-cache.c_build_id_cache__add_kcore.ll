; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-buildid-cache.c_build_id_cache__add_kcore.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-buildid-cache.c_build_id_cache__add_kcore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SBUILD_ID_SIZE = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"kcore\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s/%s/%s\00", align 1
@buildid_dir = common dso_local global i32 0, align 4
@DSO__NAME_KCORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"same kcore found in %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s/%s/%s/%s\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"kcore added to build-id cache directory %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @build_id_cache__add_kcore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_id_cache__add_kcore(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @SBUILD_ID_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %20 = load i32, i32* @PATH_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = trunc i64 %18 to i32
  %25 = call i32 @strlcpy(i8* %19, i8* %23, i32 %24)
  %26 = call i8* @strrchr(i8* %19, i8 signext 47)
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %94

35:                                               ; preds = %29
  %36 = load i8*, i8** %11, align 8
  store i8 0, i8* %36, align 1
  %37 = call i64 @build_id_cache__kcore_buildid(i8* %19, i8* %16)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %94

40:                                               ; preds = %35
  %41 = trunc i64 %21 to i32
  %42 = load i32, i32* @buildid_dir, align 4
  %43 = load i32, i32* @DSO__NAME_KCORE, align 4
  %44 = call i32 (i8*, i32, i8*, i32, i32, i8*, ...) @scnprintf(i8* %22, i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43, i8* %16)
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = trunc i64 %21 to i32
  %49 = call i32 @build_id_cache__kcore_existing(i8* %19, i8* %22, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %94

53:                                               ; preds = %47, %40
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %55 = call i64 @build_id_cache__kcore_dir(i8* %54, i32 32)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %94

58:                                               ; preds = %53
  %59 = trunc i64 %21 to i32
  %60 = load i32, i32* @buildid_dir, align 4
  %61 = load i32, i32* @DSO__NAME_KCORE, align 4
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %63 = call i32 (i8*, i32, i8*, i32, i32, i8*, ...) @scnprintf(i8* %22, i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %61, i8* %16, i8* %62)
  %64 = call i64 @mkdir_p(i8* %22, i32 493)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %94

67:                                               ; preds = %58
  %68 = call i64 @kcore_copy(i8* %19, i8* %22)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %67
  %71 = call i32 @rmdir(i8* %22)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %70
  %74 = call i8* @strrchr(i8* %22, i8 signext 47)
  store i8* %74, i8** %11, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i8*, i8** %11, align 8
  store i8 0, i8* %78, align 1
  br label %79

79:                                               ; preds = %77, %73
  %80 = call i32 @rmdir(i8* %22)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %79
  %83 = call i8* @strrchr(i8* %22, i8 signext 47)
  store i8* %83, i8** %11, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i8*, i8** %11, align 8
  store i8 0, i8* %87, align 1
  br label %88

88:                                               ; preds = %86, %82
  %89 = call i32 @rmdir(i8* %22)
  br label %90

90:                                               ; preds = %88, %79
  br label %91

91:                                               ; preds = %90, %70
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %94

92:                                               ; preds = %67
  %93 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %22)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %94

94:                                               ; preds = %92, %91, %66, %57, %51, %39, %34
  %95 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @build_id_cache__kcore_buildid(i8*, i8*) #2

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32, i8*, ...) #2

declare dso_local i32 @build_id_cache__kcore_existing(i8*, i8*, i32) #2

declare dso_local i32 @pr_debug(i8*, i8*) #2

declare dso_local i64 @build_id_cache__kcore_dir(i8*, i32) #2

declare dso_local i64 @mkdir_p(i8*, i32) #2

declare dso_local i64 @kcore_copy(i8*, i8*) #2

declare dso_local i32 @rmdir(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
