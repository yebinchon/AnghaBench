; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_ccc_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_ccc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Parsing %s\0A\00", align 1
@ccc_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i32 0, align 4
@line = common dso_local global i32 0, align 4
@LINESIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"%X..%X ; %d #\00", align 1
@unicode_data = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c" %X..%X ccc %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%X ; %d #\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" %X ccc %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Found %d entries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ccc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccc_init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @verbose, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i8*, i8** @ccc_name, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %0
  %14 = load i8*, i8** @ccc_name, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %15, i32** %1, align 8
  %16 = load i32*, i32** %1, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** @ccc_name, align 8
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @open_fail(i8* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %13
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %102, %101, %72, %22
  %24 = load i32, i32* @line, align 4
  %25 = load i32, i32* @LINESIZE, align 4
  %26 = load i32*, i32** %1, align 8
  %27 = call i64 @fgets(i32 %24, i32 %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %103

29:                                               ; preds = %23
  %30 = load i32, i32* @line, align 4
  %31 = call i32 (i32, i8*, i32*, i32*, ...) @sscanf(i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %2, i32* %3, i32* %5)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %73

34:                                               ; preds = %29
  %35 = load i32, i32* %2, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %49, %34
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ule i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %41, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %4, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %36

52:                                               ; preds = %36
  %53 = load i32, i32* @verbose, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @utf32valid(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @utf32valid(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64, %60
  %69 = load i8*, i8** @ccc_name, align 8
  %70 = load i32, i32* @line, align 4
  %71 = call i32 @line_fail(i8* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %64
  br label %23

73:                                               ; preds = %29
  %74 = load i32, i32* @line, align 4
  %75 = call i32 (i32, i8*, i32*, i32*, ...) @sscanf(i32 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %4, i32* %5)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %102

78:                                               ; preds = %73
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %81 = load i32, i32* %4, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 %79, i32* %84, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* @verbose, align 4
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %93

89:                                               ; preds = %78
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %78
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @utf32valid(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i8*, i8** @ccc_name, align 8
  %99 = load i32, i32* @line, align 4
  %100 = call i32 @line_fail(i8* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %93
  br label %23

102:                                              ; preds = %73
  br label %23

103:                                              ; preds = %23
  %104 = load i32*, i32** %1, align 8
  %105 = call i32 @fclose(i32* %104)
  %106 = load i32, i32* @verbose, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* %6, align 4
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %108, %103
  %112 = load i32, i32* %6, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i8*, i8** @ccc_name, align 8
  %116 = call i32 @file_fail(i8* %115)
  br label %117

117:                                              ; preds = %114, %111
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @open_fail(i8*, i32) #1

declare dso_local i64 @fgets(i32, i32, i32*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*, ...) #1

declare dso_local i32 @utf32valid(i32) #1

declare dso_local i32 @line_fail(i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @file_fail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
