; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_ubox.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_ubox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svgfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"<g>\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"<title>fd=%d error=%d merges=%d</title>\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"<rect x=\22%.8f\22 width=\22%.8f\22 y=\22%.1f\22 height=\22%.1f\22 class=\22%s\22/>\0A\00", align 1
@SLOT_MULT = common dso_local global i32 0, align 4
@SLOT_HALF = common dso_local global double 0.000000e+00, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"</g>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_ubox(i32 %0, i32 %1, i32 %2, double %3, i8* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store double %3, double* %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call double @time2pixels(i32 %18)
  %20 = load i32, i32* %10, align 4
  %21 = call double @time2pixels(i32 %20)
  %22 = fsub double %19, %21
  store double %22, double* %17, align 8
  %23 = load double, double* %12, align 8
  %24 = call double @normalize_height(double %23)
  store double %24, double* %12, align 8
  %25 = load i32, i32* @svgfile, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %8
  br label %50

28:                                               ; preds = %8
  %29 = load i32, i32* @svgfile, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @svgfile, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %16, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* @svgfile, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call double @time2pixels(i32 %37)
  %39 = load double, double* %17, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @SLOT_MULT, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load double, double* @SLOT_HALF, align 8
  %44 = load double, double* %12, align 8
  %45 = fmul double %43, %44
  %46 = load i8*, i8** %13, align 8
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), double %38, double %39, i32 %42, double %45, i8* %46)
  %48 = load i32, i32* @svgfile, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %28, %27
  ret void
}

declare dso_local double @time2pixels(i32) #1

declare dso_local double @normalize_height(double) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
