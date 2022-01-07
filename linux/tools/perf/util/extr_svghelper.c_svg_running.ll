; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_running.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svgfile = common dso_local global i32 0, align 4
@svg_highlight = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"sample_hi\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"sample\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"<g>\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"<title>#%d running %s</title>\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"<desc>Switched because:\0A%s</desc>\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"<rect x=\22%.8f\22 width=\22%.8f\22 y=\22%.1f\22 height=\22%.1f\22 class=\22%s\22/>\0A\00", align 1
@SLOT_MULT = common dso_local global i32 0, align 4
@SLOT_HEIGHT = common dso_local global double 0.000000e+00, align 8
@MIN_TEXT_SIZE = common dso_local global double 0.000000e+00, align 8
@.str.6 = private unnamed_addr constant [54 x i8] c"<text x=\22%.8f\22 y=\22%.8f\22 font-size=\22%.8fpt\22>%i</text>\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"</g>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_running(i32 %0, i32 %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca double, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i32, i32* @svgfile, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  br label %96

16:                                               ; preds = %5
  %17 = load i64, i64* @svg_highlight, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %8, align 8
  %22 = sub nsw i64 %20, %21
  %23 = load i64, i64* @svg_highlight, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %27

26:                                               ; preds = %19, %16
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* @svgfile, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @svgfile, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %8, align 8
  %34 = sub nsw i64 %32, %33
  %35 = call i8* @time_to_string(i64 %34)
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %31, i8* %35)
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i32, i32* @svgfile, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %39, %27
  %44 = load i32, i32* @svgfile, align 4
  %45 = load i64, i64* %8, align 8
  %46 = call double @time2pixels(i64 %45)
  %47 = load i64, i64* %9, align 8
  %48 = call double @time2pixels(i64 %47)
  %49 = load i64, i64* %8, align 8
  %50 = call double @time2pixels(i64 %49)
  %51 = fsub double %48, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @SLOT_MULT, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load double, double* @SLOT_HEIGHT, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), double %46, double %51, i32 %54, double %55, i8* %56)
  %58 = load i64, i64* %9, align 8
  %59 = call double @time2pixels(i64 %58)
  %60 = load i64, i64* %8, align 8
  %61 = call double @time2pixels(i64 %60)
  %62 = fsub double %59, %61
  store double %62, double* %11, align 8
  %63 = load i32, i32* %7, align 4
  %64 = icmp sgt i32 %63, 9
  br i1 %64, label %65, label %68

65:                                               ; preds = %43
  %66 = load double, double* %11, align 8
  %67 = fdiv double %66, 2.000000e+00
  store double %67, double* %11, align 8
  br label %68

68:                                               ; preds = %65, %43
  %69 = load double, double* %11, align 8
  %70 = fcmp ogt double %69, 1.250000e+00
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store double 1.250000e+00, double* %11, align 8
  br label %72

72:                                               ; preds = %71, %68
  %73 = load double, double* %11, align 8
  %74 = call double @round_text_size(double %73)
  store double %74, double* %11, align 8
  %75 = load double, double* %11, align 8
  %76 = load double, double* @MIN_TEXT_SIZE, align 8
  %77 = fcmp ogt double %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %72
  %79 = load i32, i32* @svgfile, align 4
  %80 = load i64, i64* %8, align 8
  %81 = call double @time2pixels(i64 %80)
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @SLOT_MULT, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sitofp i32 %84 to double
  %86 = load double, double* @SLOT_HEIGHT, align 8
  %87 = fadd double %85, %86
  %88 = fsub double %87, 1.000000e+00
  %89 = load double, double* %11, align 8
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), double %81, double %88, double %89, i32 %91)
  br label %93

93:                                               ; preds = %78, %72
  %94 = load i32, i32* @svgfile, align 4
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %15
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @time_to_string(i64) #1

declare dso_local double @time2pixels(i64) #1

declare dso_local double @round_text_size(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
