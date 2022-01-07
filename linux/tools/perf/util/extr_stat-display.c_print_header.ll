; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_print_header.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_print_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_stat_config = type { i32, i32, i32* }
%struct.target = type { i8*, i8*, i8*, i64 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c" Performance counter stats for \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"'system wide\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"'CPU(s) %s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"'%s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"process id '%s\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"thread id '%s\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c" (%d runs)\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c":\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_stat_config*, %struct.target*, i32, i8**)* @print_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_header(%struct.perf_stat_config* %0, %struct.target* %1, i32 %2, i8** %3) #0 {
  %5 = alloca %struct.perf_stat_config*, align 8
  %6 = alloca %struct.target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.perf_stat_config* %0, %struct.perf_stat_config** %5, align 8
  store %struct.target* %1, %struct.target** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %11 = load %struct.perf_stat_config*, %struct.perf_stat_config** %5, align 8
  %12 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %9, align 8
  %14 = load i32, i32* @stdout, align 4
  %15 = call i32 @fflush(i32 %14)
  %16 = load %struct.perf_stat_config*, %struct.perf_stat_config** %5, align 8
  %17 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %116, label %20

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.target*, %struct.target** %6, align 8
  %26 = getelementptr inbounds %struct.target, %struct.target* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %100

32:                                               ; preds = %20
  %33 = load %struct.target*, %struct.target** %6, align 8
  %34 = getelementptr inbounds %struct.target, %struct.target* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.target*, %struct.target** %6, align 8
  %40 = getelementptr inbounds %struct.target, %struct.target* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  br label %99

43:                                               ; preds = %32
  %44 = load %struct.target*, %struct.target** %6, align 8
  %45 = call i32 @target__has_task(%struct.target* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %80, label %47

47:                                               ; preds = %43
  %48 = load i32*, i32** %9, align 8
  %49 = load i8**, i8*** %8, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i8**, i8*** %8, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  br label %56

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i8* [ %54, %51 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %55 ]
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  store i32 1, i32* %10, align 4
  br label %59

59:                                               ; preds = %76, %56
  %60 = load i8**, i8*** %8, align 8
  %61 = icmp ne i8** %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %63, %64
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi i1 [ false, %59 ], [ %65, %62 ]
  br i1 %67, label %68, label %79

68:                                               ; preds = %66
  %69 = load i32*, i32** %9, align 8
  %70 = load i8**, i8*** %8, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i32*, i8*, ...) @fprintf(i32* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %59

79:                                               ; preds = %66
  br label %98

80:                                               ; preds = %43
  %81 = load %struct.target*, %struct.target** %6, align 8
  %82 = getelementptr inbounds %struct.target, %struct.target* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i32*, i32** %9, align 8
  %87 = load %struct.target*, %struct.target** %6, align 8
  %88 = getelementptr inbounds %struct.target, %struct.target* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %89)
  br label %97

91:                                               ; preds = %80
  %92 = load i32*, i32** %9, align 8
  %93 = load %struct.target*, %struct.target** %6, align 8
  %94 = getelementptr inbounds %struct.target, %struct.target* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %91, %85
  br label %98

98:                                               ; preds = %97, %79
  br label %99

99:                                               ; preds = %98, %37
  br label %100

100:                                              ; preds = %99, %29
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 (i32*, i8*, ...) @fprintf(i32* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %103 = load %struct.perf_stat_config*, %struct.perf_stat_config** %5, align 8
  %104 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i32*, i32** %9, align 8
  %109 = load %struct.perf_stat_config*, %struct.perf_stat_config** %5, align 8
  %110 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i32*, i8*, ...) @fprintf(i32* %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %107, %100
  %114 = load i32*, i32** %9, align 8
  %115 = call i32 (i32*, i8*, ...) @fprintf(i32* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %4
  ret void
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @target__has_task(%struct.target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
