; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_mem-functions.c_bench_mem_common.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_mem-functions.c_bench_mem_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bench_mem_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8*, i8* }

@options = common dso_local global i32 0, align 4
@use_cycles = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to open cycles counter\0A\00", align 1
@size_str = common dso_local global i8* null, align 8
@nr_loops = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid size:%s\0A\00", align 1
@function_str = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Unknown function: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Available functions:\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"\09%s ... %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.bench_mem_info*)* @bench_mem_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bench_mem_common(i32 %0, i8** %1, %struct.bench_mem_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.bench_mem_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store %struct.bench_mem_info* %2, %struct.bench_mem_info** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i8**, i8*** %6, align 8
  %13 = load i32, i32* @options, align 4
  %14 = load %struct.bench_mem_info*, %struct.bench_mem_info** %7, align 8
  %15 = getelementptr inbounds %struct.bench_mem_info, %struct.bench_mem_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @parse_options(i32 %11, i8** %12, i32 %13, i32 %16, i32 0)
  store i32 %17, i32* %5, align 4
  %18 = load i64, i64* @use_cycles, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = call i32 (...) @init_cycles()
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %156

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i8*, i8** @size_str, align 8
  %31 = call i64 @perf_atoll(i8* %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = uitofp i64 %32 to double
  %34 = load double, double* @nr_loops, align 8
  %35 = fmul double %33, %34
  store double %35, double* %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load i32, i32* @stderr, align 4
  %40 = load i8*, i8** @size_str, align 8
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  store i32 1, i32* %4, align 4
  br label %156

42:                                               ; preds = %29
  %43 = load i8*, i8** @function_str, align 8
  %44 = call i32 @strncmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %63, %46
  %48 = load %struct.bench_mem_info*, %struct.bench_mem_info** %7, align 8
  %49 = getelementptr inbounds %struct.bench_mem_info, %struct.bench_mem_info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %47
  %58 = load %struct.bench_mem_info*, %struct.bench_mem_info** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i64, i64* %9, align 8
  %61 = load double, double* %10, align 8
  %62 = call i32 @__bench_mem_function(%struct.bench_mem_info* %58, i32 %59, i64 %60, double %61)
  br label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %47

66:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %156

67:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %92, %67
  %69 = load %struct.bench_mem_info*, %struct.bench_mem_info** %7, align 8
  %70 = getelementptr inbounds %struct.bench_mem_info, %struct.bench_mem_info* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %95

78:                                               ; preds = %68
  %79 = load %struct.bench_mem_info*, %struct.bench_mem_info** %7, align 8
  %80 = getelementptr inbounds %struct.bench_mem_info, %struct.bench_mem_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** @function_str, align 8
  %88 = call i64 @strcmp(i8* %86, i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %78
  br label %95

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %68

95:                                               ; preds = %90, %68
  %96 = load %struct.bench_mem_info*, %struct.bench_mem_info** %7, align 8
  %97 = getelementptr inbounds %struct.bench_mem_info, %struct.bench_mem_info* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %150, label %105

105:                                              ; preds = %95
  %106 = load i8*, i8** @function_str, align 8
  %107 = call i64 @strcmp(i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load i8*, i8** @function_str, align 8
  %111 = call i64 @strcmp(i8* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i8*, i8** @function_str, align 8
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %113, %109, %105
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %118

118:                                              ; preds = %146, %116
  %119 = load %struct.bench_mem_info*, %struct.bench_mem_info** %7, align 8
  %120 = getelementptr inbounds %struct.bench_mem_info, %struct.bench_mem_info* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %149

128:                                              ; preds = %118
  %129 = load %struct.bench_mem_info*, %struct.bench_mem_info** %7, align 8
  %130 = getelementptr inbounds %struct.bench_mem_info, %struct.bench_mem_info* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.bench_mem_info*, %struct.bench_mem_info** %7, align 8
  %138 = getelementptr inbounds %struct.bench_mem_info, %struct.bench_mem_info* %137, i32 0, i32 0
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %136, i8* %144)
  br label %146

146:                                              ; preds = %128
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %118

149:                                              ; preds = %118
  store i32 1, i32* %4, align 4
  br label %156

150:                                              ; preds = %95
  %151 = load %struct.bench_mem_info*, %struct.bench_mem_info** %7, align 8
  %152 = load i32, i32* %8, align 4
  %153 = load i64, i64* %9, align 8
  %154 = load double, double* %10, align 8
  %155 = call i32 @__bench_mem_function(%struct.bench_mem_info* %151, i32 %152, i64 %153, double %154)
  store i32 0, i32* %4, align 4
  br label %156

156:                                              ; preds = %150, %149, %66, %38, %24
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @parse_options(i32, i8**, i32, i32, i32) #1

declare dso_local i32 @init_cycles(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @perf_atoll(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @__bench_mem_function(%struct.bench_mem_info*, i32, i64, double) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
