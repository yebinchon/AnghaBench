; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_box.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svgfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"<rect x=\22%.8f\22 width=\22%.8f\22 y=\22%.1f\22 height=\22%.1f\22 class=\22%s\22/>\0A\00", align 1
@SLOT_MULT = common dso_local global i32 0, align 4
@SLOT_HEIGHT = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_box(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* @svgfile, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  br label %27

12:                                               ; preds = %4
  %13 = load i32, i32* @svgfile, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call double @time2pixels(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = call double @time2pixels(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = call double @time2pixels(i32 %18)
  %20 = fsub double %17, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SLOT_MULT, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load double, double* @SLOT_HEIGHT, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), double %15, double %20, i32 %23, double %24, i8* %25)
  br label %27

27:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, double, double, i32, double, i8*) #1

declare dso_local double @time2pixels(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
