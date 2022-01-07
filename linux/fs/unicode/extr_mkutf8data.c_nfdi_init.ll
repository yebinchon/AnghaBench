; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_nfdi_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_nfdi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Parsing %s\0A\00", align 1
@data_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i32 0, align 4
@line = common dso_local global i32 0, align 4
@LINESIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"%X;%*[^;];%*[^;];%*[^;];%*[^;];%[^;];\00", align 1
@buf0 = common dso_local global i8* null, align 8
@unicode_data = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"Found %d entries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nfdi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfdi_init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [19 x i32], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @verbose, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i8*, i8** @data_name, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %12, %0
  %16 = load i8*, i8** @data_name, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %17, i32** %1, align 8
  %18 = load i32*, i32** %1, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** @data_name, align 8
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 @open_fail(i8* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %15
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %122, %68, %37, %24
  %26 = load i32, i32* @line, align 4
  %27 = load i32, i32* @LINESIZE, align 4
  %28 = load i32*, i32** %1, align 8
  %29 = call i64 @fgets(i32 %26, i32 %27, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %125

31:                                               ; preds = %25
  %32 = load i32, i32* @line, align 4
  %33 = load i8*, i8** @buf0, align 8
  %34 = call i32 @sscanf(i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32* %2, i8* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %25

38:                                               ; preds = %31
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @utf32valid(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i8*, i8** @data_name, align 8
  %44 = load i32, i32* @line, align 4
  %45 = call i32 @line_fail(i8* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i8*, i8** @buf0, align 8
  store i8* %47, i8** %4, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 60
  br i1 %51, label %52, label %70

52:                                               ; preds = %46
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %4, align 8
  store i8* %54, i8** %5, align 8
  br label %55

55:                                               ; preds = %61, %52
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %4, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 62
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %55

62:                                               ; preds = %55
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %4, align 8
  store i8 0, i8* %63, align 1
  %65 = load i8*, i8** %5, align 8
  %66 = call i64 @ignore_compatibility_form(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %25

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %46
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %91, %70
  %72 = load i8*, i8** %4, align 8
  %73 = load i8, i8* %72, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %71
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @strtoul(i8* %76, i8** %4, i32 16)
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 %79
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @utf32valid(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %75
  %88 = load i8*, i8** @data_name, align 8
  %89 = load i32, i32* @line, align 4
  %90 = call i32 @line_fail(i8* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %75
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %71

94:                                               ; preds = %71
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 %97
  store i32 0, i32* %98, align 4
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = trunc i64 %101 to i32
  %103 = call i32* @malloc(i32 %102)
  store i32* %103, i32** %6, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds [19 x i32], [19 x i32]* %3, i64 0, i64 0
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = trunc i64 %108 to i32
  %110 = call i32 @memcpy(i32* %104, i32* %105, i32 %109)
  %111 = load i32*, i32** %6, align 8
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %113 = load i32, i32* %2, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i32* %111, i32** %116, align 8
  %117 = load i32, i32* @verbose, align 4
  %118 = icmp sgt i32 %117, 1
  br i1 %118, label %119, label %122

119:                                              ; preds = %94
  %120 = load i32, i32* %2, align 4
  %121 = call i32 @print_utf32nfdi(i32 %120)
  br label %122

122:                                              ; preds = %119, %94
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %25

125:                                              ; preds = %25
  %126 = load i32*, i32** %1, align 8
  %127 = call i32 @fclose(i32* %126)
  %128 = load i32, i32* @verbose, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i32, i32* %7, align 4
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %130, %125
  %134 = load i32, i32* %7, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i8*, i8** @data_name, align 8
  %138 = call i32 @file_fail(i8* %137)
  br label %139

139:                                              ; preds = %136, %133
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @open_fail(i8*, i32) #1

declare dso_local i64 @fgets(i32, i32, i32*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, i8*) #1

declare dso_local i32 @utf32valid(i32) #1

declare dso_local i32 @line_fail(i8*, i32) #1

declare dso_local i64 @ignore_compatibility_form(i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @print_utf32nfdi(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @file_fail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
