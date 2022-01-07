; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_legenda_box.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_legenda_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SLOT_HEIGHT = common dso_local global i32 0, align 4
@svgfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"<rect x=\22%i\22 width=\22%.8f\22 y=\220\22 height=\22%.1f\22 class=\22%s\22/>\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"<text transform=\22translate(%.8f, %.8f)\22 font-size=\22%.8fpt\22>%s</text>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @svg_legenda_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_legenda_box(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @SLOT_HEIGHT, align 4
  %9 = sdiv i32 %8, 2
  %10 = sitofp i32 %9 to double
  store double %10, double* %7, align 8
  %11 = load i32, i32* @svgfile, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load double, double* %7, align 8
  %14 = load double, double* %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %12, double %13, double %14, i8* %15)
  %17 = load i32, i32* @svgfile, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sitofp i32 %18 to double
  %20 = load double, double* %7, align 8
  %21 = fadd double %19, %20
  %22 = fadd double %21, 5.000000e+00
  %23 = fptosi double %22 to i32
  %24 = load double, double* %7, align 8
  %25 = load double, double* %7, align 8
  %26 = fmul double 8.000000e-01, %25
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %23, double %24, double %26, i8* %27)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, double, double, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
