; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/bench/extr_parse.c_prepare_output.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/bench/extr_parse.c_prepare_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@stderr = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"error: Cannot create dir %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s/benchmark_%s_%s_%li.log\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%s/benchmark_%li.log\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"logfilename: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"fopen\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"error: unable to open logfile\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"Logfile: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"#round load sleep performance powersave percentage\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @prepare_output(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.utsname, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32* @opendir(i8* %10)
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @mkdir(i8* %15, i32 493)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** @stderr, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  store i32* null, i32** %2, align 8
  br label %109

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = add nsw i32 %26, 30
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 1, %29
  %31 = trunc i64 %30 to i32
  %32 = call i8* @malloc(i32 %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  %36 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %105

37:                                               ; preds = %24
  %38 = call i64 @uname(%struct.utsname* %8)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %74

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.utsname, %struct.utsname* %8, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = getelementptr inbounds %struct.utsname, %struct.utsname* %8, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = add nsw i32 %43, %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 1, %52
  %54 = trunc i64 %53 to i32
  %55 = call i8* @realloc(i8* %50, i32 %54)
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %40
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @free(i8* %59)
  %61 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %105

62:                                               ; preds = %40
  %63 = load i8*, i8** %7, align 8
  store i8* %63, i8** %6, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds %struct.utsname, %struct.utsname* %8, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds %struct.utsname, %struct.utsname* %8, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @time(i32* null)
  %73 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %64, i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %67, i8* %69, i8* %71, i32 %72)
  br label %83

74:                                               ; preds = %37
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 %76, 1
  %78 = load i8*, i8** %3, align 8
  %79 = call i32 @time(i32* null)
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %75, i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %78, i8* %81)
  br label %83

83:                                               ; preds = %74, %62
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %84)
  %86 = load i8*, i8** %6, align 8
  %87 = call i32* @fopen(i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %87, i32** %4, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %92 = load i32*, i32** @stderr, align 8
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %102

94:                                               ; preds = %83
  %95 = load i32, i32* @stdout, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i32*
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 (i32*, i8*, ...) @fprintf(i32* %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %98)
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 (i32*, i8*, ...) @fprintf(i32* %100, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0))
  br label %102

102:                                              ; preds = %94, %90
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 @free(i8* %103)
  br label %105

105:                                              ; preds = %102, %58, %35
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @closedir(i32* %106)
  %108 = load i32*, i32** %4, align 8
  store i32* %108, i32** %2, align 8
  br label %109

109:                                              ; preds = %105, %18
  %110 = load i32*, i32** %2, align 8
  ret i32* %110
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @uname(%struct.utsname*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @dprintf(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
