; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__fprintf_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__fprintf_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.trace = type { double, i64 }
%struct.thread_trace = type { double, double, double, double }

@.str = private unnamed_addr constant [11 x i8] c" %s (%d), \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%lu events, \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%.1f%%\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c", %lu majfaults\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c", %lu minfaults\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c", %.3f msec\0A\00", align 1
@EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.thread*, %struct.trace*)* @trace__fprintf_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @trace__fprintf_thread(i32* %0, %struct.thread* %1, %struct.trace* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.trace*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.thread_trace*, align 8
  %10 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store %struct.thread* %1, %struct.thread** %6, align 8
  store %struct.trace* %2, %struct.trace** %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.thread*, %struct.thread** %6, align 8
  %12 = call %struct.thread_trace* @thread__priv(%struct.thread* %11)
  store %struct.thread_trace* %12, %struct.thread_trace** %9, align 8
  %13 = load %struct.thread_trace*, %struct.thread_trace** %9, align 8
  %14 = icmp eq %struct.thread_trace* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %101

16:                                               ; preds = %3
  %17 = load %struct.thread_trace*, %struct.thread_trace** %9, align 8
  %18 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %17, i32 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = load %struct.trace*, %struct.trace** %7, align 8
  %21 = getelementptr inbounds %struct.trace, %struct.trace* %20, i32 0, i32 0
  %22 = load double, double* %21, align 8
  %23 = fdiv double %19, %22
  %24 = fmul double %23, 1.000000e+02
  store double %24, double* %10, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.thread*, %struct.thread** %6, align 8
  %27 = call i8* @thread__comm_str(%struct.thread* %26)
  %28 = load %struct.thread*, %struct.thread** %6, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %30)
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %8, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.thread_trace*, %struct.thread_trace** %9, align 8
  %36 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %35, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = call i64 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), double %37)
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %8, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load double, double* %10, align 8
  %43 = call i64 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), double %42)
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %8, align 8
  %46 = load %struct.thread_trace*, %struct.thread_trace** %9, align 8
  %47 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %46, i32 0, i32 1
  %48 = load double, double* %47, align 8
  %49 = fcmp une double %48, 0.000000e+00
  br i1 %49, label %50, label %58

50:                                               ; preds = %16
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.thread_trace*, %struct.thread_trace** %9, align 8
  %53 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %52, i32 0, i32 1
  %54 = load double, double* %53, align 8
  %55 = call i64 (i32*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), double %54)
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %50, %16
  %59 = load %struct.thread_trace*, %struct.thread_trace** %9, align 8
  %60 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %59, i32 0, i32 2
  %61 = load double, double* %60, align 8
  %62 = fcmp une double %61, 0.000000e+00
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.thread_trace*, %struct.thread_trace** %9, align 8
  %66 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %65, i32 0, i32 2
  %67 = load double, double* %66, align 8
  %68 = call i64 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), double %67)
  %69 = load i64, i64* %8, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %8, align 8
  br label %71

71:                                               ; preds = %63, %58
  %72 = load %struct.trace*, %struct.trace** %7, align 8
  %73 = getelementptr inbounds %struct.trace, %struct.trace* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.thread_trace*, %struct.thread_trace** %9, align 8
  %79 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %78, i32 0, i32 3
  %80 = load double, double* %79, align 8
  %81 = call i64 (i32*, i8*, ...) @fprintf(i32* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), double %80)
  %82 = load i64, i64* %8, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %8, align 8
  br label %93

84:                                               ; preds = %71
  %85 = load i32*, i32** %5, align 8
  %86 = call i64 @fputc(i8 signext 10, i32* %85)
  %87 = load i64, i64* @EOF, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i64, i64* %8, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %8, align 8
  br label %92

92:                                               ; preds = %89, %84
  br label %93

93:                                               ; preds = %92, %76
  %94 = load %struct.thread_trace*, %struct.thread_trace** %9, align 8
  %95 = load %struct.trace*, %struct.trace** %7, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = call i64 @thread__dump_stats(%struct.thread_trace* %94, %struct.trace* %95, i32* %96)
  %98 = load i64, i64* %8, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %8, align 8
  %100 = load i64, i64* %8, align 8
  store i64 %100, i64* %4, align 8
  br label %101

101:                                              ; preds = %93, %15
  %102 = load i64, i64* %4, align 8
  ret i64 %102
}

declare dso_local %struct.thread_trace* @thread__priv(%struct.thread*) #1

declare dso_local i64 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @thread__comm_str(%struct.thread*) #1

declare dso_local i64 @fputc(i8 signext, i32*) #1

declare dso_local i64 @thread__dump_stats(%struct.thread_trace*, %struct.trace*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
