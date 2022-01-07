; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_pstate.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_pstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svgfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"<g>\0A\00", align 1
@max_freq = common dso_local global i32 0, align 4
@SLOT_HEIGHT = common dso_local global double 0.000000e+00, align 8
@SLOT_MULT = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"<line x1=\22%.8f\22 x2=\22%.8f\22 y1=\22%.1f\22 y2=\22%.1f\22 class=\22pstate\22/>\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"<text x=\22%.8f\22 y=\22%.8f\22 font-size=\220.25pt\22>%s</text>\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"</g>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_pstate(i32 %0, double %1, double %2, double %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  %10 = load i32, i32* @svgfile, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %57

13:                                               ; preds = %4
  %14 = load i32, i32* @svgfile, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @max_freq, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load double, double* %8, align 8
  %20 = fmul double %19, 1.000000e+00
  %21 = load i32, i32* @max_freq, align 4
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %20, %22
  %24 = load double, double* @SLOT_HEIGHT, align 8
  %25 = load double, double* @SLOT_MULT, align 8
  %26 = fadd double %24, %25
  %27 = fmul double %23, %26
  store double %27, double* %9, align 8
  br label %28

28:                                               ; preds = %18, %13
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @cpu2y(i32 %29)
  %31 = add nsw i32 1, %30
  %32 = sitofp i32 %31 to double
  %33 = load double, double* @SLOT_MULT, align 8
  %34 = fadd double %32, %33
  %35 = load double, double* @SLOT_HEIGHT, align 8
  %36 = fadd double %34, %35
  %37 = load double, double* %9, align 8
  %38 = fsub double %36, %37
  store double %38, double* %9, align 8
  %39 = load i32, i32* @svgfile, align 4
  %40 = load double, double* %6, align 8
  %41 = call double @time2pixels(double %40)
  %42 = load double, double* %7, align 8
  %43 = call double @time2pixels(double %42)
  %44 = load double, double* %9, align 8
  %45 = load double, double* %9, align 8
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), double %41, double %43, double %44, double %45)
  %47 = load i32, i32* @svgfile, align 4
  %48 = load double, double* %6, align 8
  %49 = call double @time2pixels(double %48)
  %50 = load double, double* %9, align 8
  %51 = fadd double %50, 9.000000e-01
  %52 = load double, double* %8, align 8
  %53 = call i8* @HzToHuman(double %52)
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), double %49, double %51, i8* %53)
  %55 = load i32, i32* @svgfile, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %28, %12
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @cpu2y(i32) #1

declare dso_local double @time2pixels(double) #1

declare dso_local i8* @HzToHuman(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
