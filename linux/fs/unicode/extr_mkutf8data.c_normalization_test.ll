; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_normalization_test.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_normalization_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unicode_data = type { i32* }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Parsing %s\0A\00", align 1
@test_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i32 0, align 4
@line = common dso_local global i8* null, align 8
@LINESIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"%[^;];%*[^;];%[^;];%*[^;];%*[^;];\00", align 1
@buf0 = common dso_local global i8* null, align 8
@buf1 = common dso_local global i8* null, align 8
@buf2 = common dso_local global i8* null, align 8
@buf3 = common dso_local global i8* null, align 8
@unicode_data = common dso_local global %struct.unicode_data* null, align 8
@nfdi_tree = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Line %s -> %s\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c" (ignorables removed)\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" failure\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Ran %d tests with %d failures\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @normalization_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @normalization_test() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.unicode_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* @verbose, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i8*, i8** @test_name, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %12, %0
  %16 = load i8*, i8** @test_name, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %17, i32** %1, align 8
  %18 = load i32*, i32** %1, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** @test_name, align 8
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 @open_fail(i8* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %15
  br label %25

25:                                               ; preds = %113, %43, %24
  %26 = load i8*, i8** @line, align 8
  %27 = load i32, i32* @LINESIZE, align 4
  %28 = load i32*, i32** %1, align 8
  %29 = call i64 @fgets(i8* %26, i32 %27, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %114

31:                                               ; preds = %25
  %32 = load i8*, i8** @line, align 8
  %33 = load i8*, i8** @buf0, align 8
  %34 = load i8*, i8** @buf1, align 8
  %35 = call i32 @sscanf(i8* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %33, i8* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 2
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load i8*, i8** @line, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 35
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %31
  br label %25

44:                                               ; preds = %38
  %45 = load i8*, i8** @buf0, align 8
  store i8* %45, i8** %4, align 8
  %46 = load i8*, i8** @buf2, align 8
  store i8* %46, i8** %5, align 8
  br label %47

47:                                               ; preds = %51, %44
  %48 = load i8*, i8** %4, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @strtoul(i8* %52, i8** %4, i32 16)
  store i32 %53, i32* %2, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @utf8encode(i8* %54, i32 %55)
  %57 = load i8*, i8** %5, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %5, align 8
  br label %47

60:                                               ; preds = %47
  %61 = load i8*, i8** %5, align 8
  store i8 0, i8* %61, align 1
  store i32 0, i32* %7, align 4
  %62 = load i8*, i8** @buf1, align 8
  store i8* %62, i8** %4, align 8
  %63 = load i8*, i8** @buf3, align 8
  store i8* %63, i8** %5, align 8
  br label %64

64:                                               ; preds = %93, %60
  %65 = load i8*, i8** %4, align 8
  %66 = load i8, i8* %65, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %64
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @strtoul(i8* %69, i8** %4, i32 16)
  store i32 %70, i32* %2, align 4
  %71 = load %struct.unicode_data*, %struct.unicode_data** @unicode_data, align 8
  %72 = load i32, i32* %2, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %71, i64 %73
  store %struct.unicode_data* %74, %struct.unicode_data** %3, align 8
  %75 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %76 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %68
  %80 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %81 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  store i32 1, i32* %7, align 4
  br label %93

86:                                               ; preds = %79, %68
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* %2, align 4
  %89 = call i32 @utf8encode(i8* %87, i32 %88)
  %90 = load i8*, i8** %5, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %5, align 8
  br label %93

93:                                               ; preds = %86, %85
  br label %64

94:                                               ; preds = %64
  %95 = load i8*, i8** %5, align 8
  store i8 0, i8* %95, align 1
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* @nfdi_tree, align 4
  %99 = call i64 @normalize_line(i32 %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %94
  %102 = load i8*, i8** @buf0, align 8
  %103 = load i8*, i8** @buf1, align 8
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %102, i8* %103)
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %101
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %109, %94
  br label %25

114:                                              ; preds = %25
  %115 = load i32*, i32** %1, align 8
  %116 = call i32 @fclose(i32* %115)
  %117 = load i64, i64* @verbose, align 8
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %114
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i8*, i8** @test_name, align 8
  %128 = call i32 @file_fail(i8* %127)
  br label %129

129:                                              ; preds = %126, %123
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @open_fail(i8*, i32) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @utf8encode(i8*, i32) #1

declare dso_local i64 @normalize_line(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @file_fail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
