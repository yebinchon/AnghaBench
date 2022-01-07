; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_waiting.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_waiting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svgfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"waiting\00", align 1
@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"WAITING\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"<g transform=\22translate(%.8f,%.8f)\22>\0A\00", align 1
@SLOT_MULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"<title>#%d waiting %s</title>\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"<desc>Waiting on:\0A%s</desc>\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"<rect x=\220\22 width=\22%.8f\22 y=\220\22 height=\22%.1f\22 class=\22%s\22/>\0A\00", align 1
@SLOT_HEIGHT = common dso_local global double 0.000000e+00, align 8
@MIN_TEXT_SIZE = common dso_local global double 0.000000e+00, align 8
@.str.6 = private unnamed_addr constant [60 x i8] c"<text transform=\22rotate(90)\22 font-size=\22%.8fpt\22> %s</text>\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"</g>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_waiting(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load i32, i32* @svgfile, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  br label %83

17:                                               ; preds = %5
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sub nsw i32 %18, %19
  %21 = load i32, i32* @NSEC_PER_MSEC, align 4
  %22 = mul nsw i32 10, %21
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %25

25:                                               ; preds = %24, %17
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %26, %27
  %29 = call i8* @time_to_string(i32 %28)
  store i8* %29, i8** %11, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call double @time2pixels(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = call double @time2pixels(i32 %32)
  %34 = fsub double %31, %33
  %35 = fmul double 1.000000e+00, %34
  store double %35, double* %13, align 8
  %36 = load double, double* %13, align 8
  %37 = fcmp ogt double %36, 3.000000e+00
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  store double 3.000000e+00, double* %13, align 8
  br label %39

39:                                               ; preds = %38, %25
  %40 = load double, double* %13, align 8
  %41 = call double @round_text_size(double %40)
  store double %41, double* %13, align 8
  %42 = load i32, i32* @svgfile, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call double @time2pixels(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @SLOT_MULT, align 4
  %47 = mul nsw i32 %45, %46
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), double %44, i32 %47)
  %49 = load i32, i32* @svgfile, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %51, %52
  %54 = call i8* @time_to_string(i32 %53)
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %50, i8* %54)
  %56 = load i8*, i8** %10, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %39
  %59 = load i32, i32* @svgfile, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %58, %39
  %63 = load i32, i32* @svgfile, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call double @time2pixels(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = call double @time2pixels(i32 %66)
  %68 = fsub double %65, %67
  %69 = load double, double* @SLOT_HEIGHT, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), double %68, double %69, i8* %70)
  %72 = load double, double* %13, align 8
  %73 = load double, double* @MIN_TEXT_SIZE, align 8
  %74 = fcmp ogt double %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %62
  %76 = load i32, i32* @svgfile, align 4
  %77 = load double, double* %13, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), double %77, i8* %78)
  br label %80

80:                                               ; preds = %75, %62
  %81 = load i32, i32* @svgfile, align 4
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %16
  ret void
}

declare dso_local i8* @time_to_string(i32) #1

declare dso_local double @time2pixels(i32) #1

declare dso_local double @round_text_size(double) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
