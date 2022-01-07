; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_wakeline.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_wakeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svgfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"<g>\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"<desc>%s</desc>\0A\00", align 1
@.str.2 = private unnamed_addr constant [98 x i8] c"<line x1=\22%.8f\22 y1=\22%.2f\22 x2=\22%.8f\22 y2=\22%.2f\22 style=\22stroke:rgb(32,255,32);stroke-width:0.009\22/>\0A\00", align 1
@SLOT_MULT = common dso_local global i32 0, align 4
@SLOT_HEIGHT = common dso_local global double 0.000000e+00, align 8
@.str.3 = private unnamed_addr constant [72 x i8] c"<circle  cx=\22%.8f\22 cy=\22%.2f\22 r = \220.01\22  style=\22fill:rgb(32,255,32)\22/>\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"</g>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_wakeline(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* @svgfile, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %78

13:                                               ; preds = %4
  %14 = load i32, i32* @svgfile, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* @svgfile, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load i32, i32* @svgfile, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call double @time2pixels(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SLOT_MULT, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sitofp i32 %32 to double
  %34 = load double, double* @SLOT_HEIGHT, align 8
  %35 = fadd double %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = call double @time2pixels(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SLOT_MULT, align 4
  %40 = mul nsw i32 %38, %39
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.2, i64 0, i64 0), double %29, double %35, double %37, i32 %40)
  br label %58

42:                                               ; preds = %22
  %43 = load i32, i32* @svgfile, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call double @time2pixels(i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SLOT_MULT, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sitofp i32 %48 to double
  %50 = load double, double* @SLOT_HEIGHT, align 8
  %51 = fadd double %49, %50
  %52 = load i32, i32* %5, align 4
  %53 = call double @time2pixels(i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @SLOT_MULT, align 4
  %56 = mul nsw i32 %54, %55
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.2, i64 0, i64 0), double %45, double %51, double %53, i32 %56)
  br label %58

58:                                               ; preds = %42, %26
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @SLOT_MULT, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sitofp i32 %61 to double
  store double %62, double* %9, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load double, double* @SLOT_HEIGHT, align 8
  %68 = load double, double* %9, align 8
  %69 = fadd double %68, %67
  store double %69, double* %9, align 8
  br label %70

70:                                               ; preds = %66, %58
  %71 = load i32, i32* @svgfile, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call double @time2pixels(i32 %72)
  %74 = load double, double* %9, align 8
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), double %73, double %74)
  %76 = load i32, i32* @svgfile, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %78

78:                                               ; preds = %70, %12
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local double @time2pixels(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
