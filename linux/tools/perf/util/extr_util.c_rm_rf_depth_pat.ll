; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_util.c_rm_rf_depth_pat.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_util.c_rm_rf_depth_pat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }
%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"stat failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**)* @rm_rf_depth_pat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm_rf_depth_pat(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dirent*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.stat, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @lstat(i8* %19, %struct.stat* %13)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %112

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @S_IFDIR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @unlink(i8* %31)
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %112

33:                                               ; preds = %24
  %34 = load i8*, i8** %5, align 8
  %35 = call i32* @opendir(i8* %34)
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %112

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %101, %62, %39
  %41 = load i32*, i32** %8, align 8
  %42 = call %struct.dirent* @readdir(i32* %41)
  store %struct.dirent* %42, %struct.dirent** %10, align 8
  %43 = icmp ne %struct.dirent* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ false, %40 ], [ %47, %44 ]
  br i1 %49, label %50, label %102

50:                                               ; preds = %48
  %51 = load %struct.dirent*, %struct.dirent** %10, align 8
  %52 = getelementptr inbounds %struct.dirent, %struct.dirent* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strcmp(i32 %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.dirent*, %struct.dirent** %10, align 8
  %58 = getelementptr inbounds %struct.dirent, %struct.dirent* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @strcmp(i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56, %50
  br label %40

63:                                               ; preds = %56
  %64 = load %struct.dirent*, %struct.dirent** %10, align 8
  %65 = getelementptr inbounds %struct.dirent, %struct.dirent* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8**, i8*** %7, align 8
  %68 = call i32 @match_pat(i32 %66, i8** %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  store i32 -2, i32* %9, align 4
  br label %102

71:                                               ; preds = %63
  %72 = trunc i64 %16 to i32
  %73 = load i8*, i8** %5, align 8
  %74 = load %struct.dirent*, %struct.dirent** %10, align 8
  %75 = getelementptr inbounds %struct.dirent, %struct.dirent* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @scnprintf(i8* %18, i32 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %73, i32 %76)
  %78 = call i32 @lstat(i8* %18, %struct.stat* %13)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %18)
  br label %102

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @S_ISDIR(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %92, 1
  %94 = load i8**, i8*** %7, align 8
  %95 = call i32 @rm_rf_depth_pat(i8* %18, i32 %93, i8** %94)
  br label %97

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %91
  %98 = phi i32 [ %95, %91 ], [ 0, %96 ]
  store i32 %98, i32* %9, align 4
  br label %101

99:                                               ; preds = %83
  %100 = call i32 @unlink(i8* %18)
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %99, %97
  br label %40

102:                                              ; preds = %81, %70, %48
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @closedir(i32* %103)
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %112

109:                                              ; preds = %102
  %110 = load i8*, i8** %5, align 8
  %111 = call i32 @rmdir(i8* %110)
  store i32 %111, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %112

112:                                              ; preds = %109, %107, %38, %30, %23
  %113 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @match_pat(i32, i8**) #2

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @pr_debug(i8*, i8*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @closedir(i32*) #2

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
