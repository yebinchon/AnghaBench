; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_process.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svgfile = common dso_local global i32 0, align 4
@svg_highlight = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"sample_hi\00", align 1
@svg_highlight_name = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"sample\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"<g transform=\22translate(%.8f,%.8f)\22>\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"<title>%d %s running %s</title>\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"<desc>Switched because:\0A%s</desc>\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"<rect x=\220\22 width=\22%.8f\22 y=\220\22 height=\22%.1f\22 class=\22%s\22/>\0A\00", align 1
@SLOT_MULT = common dso_local global double 0.000000e+00, align 8
@SLOT_HEIGHT = common dso_local global i32 0, align 4
@MIN_TEXT_SIZE = common dso_local global double 0.000000e+00, align 8
@.str.6 = private unnamed_addr constant [59 x i8] c"<text transform=\22rotate(90)\22 font-size=\22%.8fpt\22>%s</text>\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"</g>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_process(i32 %0, i64 %1, i64 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca double, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i32, i32* @svgfile, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %6
  br label %95

18:                                               ; preds = %6
  %19 = load i64, i64* @svg_highlight, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %8, align 8
  %24 = sub nsw i64 %22, %23
  %25 = load i64, i64* @svg_highlight, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %39

28:                                               ; preds = %21, %18
  %29 = load i64, i64* @svg_highlight_name, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i8*, i8** %11, align 8
  %33 = load i64, i64* @svg_highlight_name, align 8
  %34 = call i64 @strstr(i8* %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %38

37:                                               ; preds = %31, %28
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %38

38:                                               ; preds = %37, %36
  br label %39

39:                                               ; preds = %38, %27
  %40 = load i32, i32* @svgfile, align 4
  %41 = load i64, i64* %8, align 8
  %42 = call double @time2pixels(i64 %41)
  %43 = load i32, i32* %7, align 4
  %44 = call double @cpu2y(i32 %43)
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), double %42, double %44)
  %46 = load i32, i32* @svgfile, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %8, align 8
  %51 = sub nsw i64 %49, %50
  %52 = call i8* @time_to_string(i64 %51)
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %47, i8* %48, i8* %52)
  %54 = load i8*, i8** %12, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %39
  %57 = load i32, i32* @svgfile, align 4
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %56, %39
  %61 = load i32, i32* @svgfile, align 4
  %62 = load i64, i64* %9, align 8
  %63 = call double @time2pixels(i64 %62)
  %64 = load i64, i64* %8, align 8
  %65 = call double @time2pixels(i64 %64)
  %66 = fsub double %63, %65
  %67 = load double, double* @SLOT_MULT, align 8
  %68 = load i32, i32* @SLOT_HEIGHT, align 4
  %69 = sitofp i32 %68 to double
  %70 = fadd double %67, %69
  %71 = load i8*, i8** %14, align 8
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), double %66, double %70, i8* %71)
  %73 = load i64, i64* %9, align 8
  %74 = call double @time2pixels(i64 %73)
  %75 = load i64, i64* %8, align 8
  %76 = call double @time2pixels(i64 %75)
  %77 = fsub double %74, %76
  store double %77, double* %13, align 8
  %78 = load double, double* %13, align 8
  %79 = fcmp ogt double %78, 6.000000e+00
  br i1 %79, label %80, label %81

80:                                               ; preds = %60
  store double 6.000000e+00, double* %13, align 8
  br label %81

81:                                               ; preds = %80, %60
  %82 = load double, double* %13, align 8
  %83 = call double @round_text_size(double %82)
  store double %83, double* %13, align 8
  %84 = load double, double* %13, align 8
  %85 = load double, double* @MIN_TEXT_SIZE, align 8
  %86 = fcmp ogt double %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load i32, i32* @svgfile, align 4
  %89 = load double, double* %13, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), double %89, i8* %90)
  br label %92

92:                                               ; preds = %87, %81
  %93 = load i32, i32* @svgfile, align 4
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %17
  ret void
}

declare dso_local i64 @strstr(i8*, i64) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local double @time2pixels(i64) #1

declare dso_local double @cpu2y(i32) #1

declare dso_local i8* @time_to_string(i64) #1

declare dso_local double @round_text_size(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
