; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_prog.c_get_run_data.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_prog.c_get_run_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to open %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"failed to allocate memory for data_in/ctx_in: %s\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"failed to read data_in/ctx_in from %s: %s\00", align 1
@UINT32_MAX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"data_in/ctx_in is too long (max: %d)\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"failed to reallocate data_in/ctx_in: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32*)* @get_run_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_run_data(i8* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 256, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  store i64 %13, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i8**, i8*** %6, align 8
  store i8* null, i8** %17, align 8
  %18 = load i32*, i32** %7, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %4, align 4
  br label %127

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32*, i32** @stdin, align 8
  store i32* %24, i32** %12, align 8
  br label %28

25:                                               ; preds = %19
  %26 = load i8*, i8** %5, align 8
  %27 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %27, i32** %12, align 8
  br label %28

28:                                               ; preds = %25, %23
  %29 = load i32*, i32** %12, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @errno, align 4
  %34 = call i64 @strerror(i32 %33)
  %35 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %32, i64 %34)
  store i32 -1, i32* %4, align 4
  br label %127

36:                                               ; preds = %28
  %37 = load i64, i64* %8, align 8
  %38 = call i8* @malloc(i64 %37)
  %39 = load i8**, i8*** %6, align 8
  store i8* %38, i8** %39, align 8
  %40 = load i8**, i8*** %6, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @errno, align 4
  %45 = call i64 @strerror(i32 %44)
  %46 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %45)
  br label %119

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %102, %47
  %49 = load i8**, i8*** %6, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr i8, i8* %50, i64 %51
  %53 = load i64, i64* %8, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call i64 @fread(i8* %52, i32 1, i64 %53, i32* %54)
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %10, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %103

59:                                               ; preds = %48
  %60 = load i32*, i32** %12, align 8
  %61 = call i64 @feof(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %103

64:                                               ; preds = %59
  %65 = load i32*, i32** %12, align 8
  %66 = call i64 @ferror(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* @errno, align 4
  %71 = call i64 @strerror(i32 %70)
  %72 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %69, i64 %71)
  br label %114

73:                                               ; preds = %64
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %8, align 8
  %77 = sub i64 %75, %76
  %78 = icmp ugt i64 %74, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %73
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* @UINT32_MAX, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i64, i64* @UINT32_MAX, align 8
  %85 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %84)
  br label %114

86:                                               ; preds = %79
  %87 = load i64, i64* %9, align 8
  %88 = mul i64 %87, 2
  store i64 %88, i64* %9, align 8
  %89 = load i8**, i8*** %6, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call i8* @realloc(i8* %90, i64 %91)
  store i8* %92, i8** %11, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %86
  %96 = load i32, i32* @errno, align 4
  %97 = call i64 @strerror(i32 %96)
  %98 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 %97)
  br label %114

99:                                               ; preds = %86
  %100 = load i8*, i8** %11, align 8
  %101 = load i8**, i8*** %6, align 8
  store i8* %100, i8** %101, align 8
  br label %102

102:                                              ; preds = %99, %73
  br label %48

103:                                              ; preds = %63, %48
  %104 = load i32*, i32** %12, align 8
  %105 = load i32*, i32** @stdin, align 8
  %106 = icmp ne i32* %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32*, i32** %12, align 8
  %109 = call i32 @fclose(i32* %108)
  br label %110

110:                                              ; preds = %107, %103
  %111 = load i64, i64* %10, align 8
  %112 = trunc i64 %111 to i32
  %113 = load i32*, i32** %7, align 8
  store i32 %112, i32* %113, align 4
  store i32 0, i32* %4, align 4
  br label %127

114:                                              ; preds = %95, %83, %68
  %115 = load i8**, i8*** %6, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @free(i8* %116)
  %118 = load i8**, i8*** %6, align 8
  store i8* null, i8** %118, align 8
  br label %119

119:                                              ; preds = %114, %43
  %120 = load i32*, i32** %12, align 8
  %121 = load i32*, i32** @stdin, align 8
  %122 = icmp ne i32* %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i32*, i32** %12, align 8
  %125 = call i32 @fclose(i32* %124)
  br label %126

126:                                              ; preds = %123, %119
  store i32 -1, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %110, %31, %16
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @p_err(i8*, ...) #1

declare dso_local i64 @strerror(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
