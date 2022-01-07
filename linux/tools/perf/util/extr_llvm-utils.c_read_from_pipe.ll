; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_llvm-utils.c_read_from_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_llvm-utils.c_read_from_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: unable to popen cmd: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@READ_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"ERROR: failed to realloc memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"ERROR: internal error\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"ERROR: error occurred when reading from pipe: %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i64*)* @read_from_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_from_pipe(i8* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i32* null, i32** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %17 = load i32, i32* @STRERR_BUFSIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32* @popen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @errno, align 4
  %27 = trunc i64 %18 to i32
  %28 = call i32 @str_error_r(i32 %26, i8* %20, i32 %27)
  %29 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %146

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %69, %32
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @feof(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load i32*, i32** %10, align 8
  %39 = call i64 @ferror(i32* %38)
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %37, %33
  %43 = phi i1 [ false, %33 ], [ %41, %37 ]
  br i1 %43, label %44, label %78

44:                                               ; preds = %42
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %11, align 8
  %47 = sub i64 %45, %46
  %48 = load i32, i32* @READ_SIZE, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %44
  %53 = load i64, i64* %11, align 8
  %54 = load i32, i32* @READ_SIZE, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %53, %55
  %57 = add i64 %56, 1
  store i64 %57, i64* %12, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i8* @realloc(i8* %58, i64 %59)
  store i8* %60, i8** %16, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %52
  %64 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %126

67:                                               ; preds = %52
  %68 = load i8*, i8** %16, align 8
  store i8* %68, i8** %9, align 8
  br label %69

69:                                               ; preds = %67, %44
  %70 = load i8*, i8** %9, align 8
  %71 = load i64, i64* %11, align 8
  %72 = getelementptr i8, i8* %70, i64 %71
  %73 = load i32, i32* @READ_SIZE, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = call i64 @fread(i8* %72, i32 1, i32 %73, i32* %74)
  %76 = load i64, i64* %11, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %11, align 8
  br label %33

78:                                               ; preds = %42
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* %11, align 8
  %81 = sub i64 %79, %80
  %82 = icmp ult i64 %81, 1
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %8, align 4
  br label %126

87:                                               ; preds = %78
  %88 = load i32*, i32** %10, align 8
  %89 = call i64 @ferror(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load i32, i32* @errno, align 4
  %93 = trunc i64 %18 to i32
  %94 = call i32 @str_error_r(i32 %92, i8* %20, i32 %93)
  %95 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %8, align 4
  br label %126

98:                                               ; preds = %87
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @pclose(i32* %99)
  %101 = call i32 @WEXITSTATUS(i32 %100)
  store i32 %101, i32* %8, align 4
  store i32* null, i32** %10, align 8
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %8, align 4
  br label %126

107:                                              ; preds = %98
  %108 = load i8*, i8** %9, align 8
  %109 = load i64, i64* %11, align 8
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8 0, i8* %110, align 1
  %111 = load i8**, i8*** %6, align 8
  %112 = icmp ne i8** %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %107
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 @free(i8* %114)
  br label %119

116:                                              ; preds = %107
  %117 = load i8*, i8** %9, align 8
  %118 = load i8**, i8*** %6, align 8
  store i8* %117, i8** %118, align 8
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i64*, i64** %7, align 8
  %121 = icmp ne i64* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i64, i64* %11, align 8
  %124 = load i64*, i64** %7, align 8
  store i64 %123, i64* %124, align 8
  br label %125

125:                                              ; preds = %122, %119
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %146

126:                                              ; preds = %104, %91, %83, %63
  %127 = load i32*, i32** %10, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32*, i32** %10, align 8
  %131 = call i32 @pclose(i32* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i8*, i8** %9, align 8
  %134 = call i32 @free(i8* %133)
  %135 = load i8**, i8*** %6, align 8
  %136 = icmp ne i8** %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = load i8**, i8*** %6, align 8
  store i8* null, i8** %138, align 8
  br label %139

139:                                              ; preds = %137, %132
  %140 = load i64*, i64** %7, align 8
  %141 = icmp ne i64* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i64*, i64** %7, align 8
  store i64 0, i64* %143, align 8
  br label %144

144:                                              ; preds = %142, %139
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %146

146:                                              ; preds = %144, %125, %25
  %147 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @popen(i8*, i8*) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i32 @str_error_r(i32, i8*, i32) #2

declare dso_local i32 @feof(i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i8* @realloc(i8*, i64) #2

declare dso_local i64 @fread(i8*, i32, i32, i32*) #2

declare dso_local i32 @WEXITSTATUS(i32) #2

declare dso_local i32 @pclose(i32*) #2

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
