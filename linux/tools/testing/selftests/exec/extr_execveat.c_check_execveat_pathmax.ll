; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/exec/extr_execveat.c_check_execveat_pathmax.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/exec/extr_execveat.c_check_execveat_pathmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XX_DIR_LEN = common dso_local global i32 0, align 4
@longpath = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"Failed to getcwd(), errno=%d (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@PATH_MAX = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Invoke copy of '%s' via filename of length %zu:\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AT_EMPTY_PATH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"Failed to open length %zu filename, errno=%d (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @check_execveat_pathmax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_execveat_pathmax(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* @XX_DIR_LEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i8*, i8** @longpath, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %93

26:                                               ; preds = %3
  %27 = call i8* @getcwd(i32* null, i32 0)
  store i8* %27, i8** %15, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @errno, align 4
  %32 = load i32, i32* @errno, align 4
  %33 = call i8* @strerror(i32 %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %31, i8* %33)
  store i32 2, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %146

35:                                               ; preds = %26
  %36 = load i8*, i8** @longpath, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = call i32 @strcpy(i8* %36, i8* %37)
  %39 = load i8*, i8** @longpath, align 8
  %40 = call i32 @strcat(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @XX_DIR_LEN, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @memset(i8* %21, i8 signext 120, i32 %42)
  %44 = load i32, i32* @XX_DIR_LEN, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %21, i64 %46
  store i8 47, i8* %47, align 1
  %48 = load i32, i32* @XX_DIR_LEN, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %21, i64 %49
  store i8 0, i8* %50, align 1
  %51 = load i32, i32* @PATH_MAX, align 4
  %52 = sub nsw i32 %51, 3
  %53 = load i8*, i8** %15, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = sub nsw i32 %52, %54
  %56 = load i32, i32* @XX_DIR_LEN, align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %67, %35
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i8*, i8** @longpath, align 8
  %64 = call i32 @strcat(i8* %63, i8* %21)
  %65 = load i8*, i8** @longpath, align 8
  %66 = call i32 @mkdir(i8* %65, i32 493)
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %58

70:                                               ; preds = %58
  %71 = load i32, i32* @PATH_MAX, align 4
  %72 = sub nsw i32 %71, 3
  %73 = load i8*, i8** %15, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = sub nsw i32 %72, %74
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @XX_DIR_LEN, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sub nsw i32 %75, %78
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp sle i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  store i32 1, i32* %11, align 4
  br label %83

83:                                               ; preds = %82, %70
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @memset(i8* %21, i8 signext 121, i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %21, i64 %87
  store i8 0, i8* %88, align 1
  %89 = load i8*, i8** @longpath, align 8
  %90 = call i32 @strcat(i8* %89, i8* %21)
  %91 = load i8*, i8** %15, align 8
  %92 = call i32 @free(i8* %91)
  br label %93

93:                                               ; preds = %83, %3
  %94 = load i8*, i8** %6, align 8
  %95 = load i8*, i8** @longpath, align 8
  %96 = call i32 @exe_cp(i8* %94, i8* %95)
  %97 = load i8*, i8** @longpath, align 8
  %98 = load i32, i32* @O_RDONLY, align 4
  %99 = call i32 @open(i8* %97, i32 %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %93
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** @longpath, align 8
  %105 = call i32 @strlen(i8* %104)
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %103, i32 %105)
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @AT_EMPTY_PATH, align 4
  %109 = call i64 @check_execveat(i32 %107, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %8, align 4
  br label %123

114:                                              ; preds = %93
  %115 = load i8*, i8** @longpath, align 8
  %116 = call i32 @strlen(i8* %115)
  %117 = load i32, i32* @errno, align 4
  %118 = load i32, i32* @errno, align 4
  %119 = call i8* @strerror(i32 %118)
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %116, i32 %117, i8* %119)
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %114, %102
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load i32, i32* %5, align 4
  %128 = load i8*, i8** @longpath, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  %130 = call i64 @check_execveat_invoked_rc(i32 %127, i8* %129, i32 0, i32 127, i32 126)
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %8, align 4
  br label %144

135:                                              ; preds = %123
  %136 = load i32, i32* %5, align 4
  %137 = load i8*, i8** @longpath, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  %139 = call i64 @check_execveat(i32 %136, i8* %138, i32 0)
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %135, %126
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %146

146:                                              ; preds = %144, %30
  %147 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @getcwd(i32*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @mkdir(i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @exe_cp(i8*, i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i64 @check_execveat(i32, i8*, i32) #2

declare dso_local i64 @check_execveat_invoked_rc(i32, i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
