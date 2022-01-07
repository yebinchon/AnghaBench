; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_cstate.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_cstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svgfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"<g>\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"c%i\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"<rect class=\22%s\22 x=\22%.8f\22 width=\22%.8f\22 y=\22%.1f\22 height=\22%.1f\22/>\0A\00", align 1
@SLOT_MULT = common dso_local global double 0.000000e+00, align 8
@SLOT_HEIGHT = common dso_local global double 0.000000e+00, align 8
@MIN_TEXT_SIZE = common dso_local global double 0.000000e+00, align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"<text x=\22%.8f\22 y=\22%.8f\22 font-size=\22%.8fpt\22>C%i</text>\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"</g>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_cstate(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca [128 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @svgfile, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %68

14:                                               ; preds = %4
  %15 = load i32, i32* @svgfile, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 6
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 6, i32* %8, align 4
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @svgfile, align 4
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %26 = load i32, i32* %6, align 4
  %27 = call double @time2pixels(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = call double @time2pixels(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call double @time2pixels(i32 %30)
  %32 = fsub double %29, %31
  %33 = load i32, i32* %5, align 4
  %34 = call double @cpu2y(i32 %33)
  %35 = load double, double* @SLOT_MULT, align 8
  %36 = load double, double* @SLOT_HEIGHT, align 8
  %37 = fadd double %35, %36
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* %25, double %27, double %32, double %34, double %37)
  %39 = load i32, i32* %7, align 4
  %40 = call double @time2pixels(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = call double @time2pixels(i32 %41)
  %43 = fsub double %40, %42
  %44 = fdiv double %43, 2.000000e+00
  store double %44, double* %9, align 8
  %45 = load double, double* %9, align 8
  %46 = fcmp ogt double %45, 6.000000e+00
  br i1 %46, label %47, label %48

47:                                               ; preds = %20
  store double 6.000000e+00, double* %9, align 8
  br label %48

48:                                               ; preds = %47, %20
  %49 = load double, double* %9, align 8
  %50 = call double @round_text_size(double %49)
  store double %50, double* %9, align 8
  %51 = load double, double* %9, align 8
  %52 = load double, double* @MIN_TEXT_SIZE, align 8
  %53 = fcmp ogt double %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load i32, i32* @svgfile, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call double @time2pixels(i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = call double @cpu2y(i32 %58)
  %60 = load double, double* %9, align 8
  %61 = fadd double %59, %60
  %62 = load double, double* %9, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), double %57, double %61, double %62, i32 %63)
  br label %65

65:                                               ; preds = %54, %48
  %66 = load i32, i32* @svgfile, align 4
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %13
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local double @time2pixels(i32) #1

declare dso_local double @cpu2y(i32) #1

declare dso_local double @round_text_size(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
