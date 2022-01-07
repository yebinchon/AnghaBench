; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svgfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"<g>\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"<title>Wakeup from interrupt</title>\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"<desc>%s</desc>\0A\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"<circle  cx=\22%.8f\22 cy=\22%.2f\22 r = \220.01\22  style=\22fill:rgb(255,128,128)\22/>\0A\00", align 1
@SLOT_MULT = common dso_local global i32 0, align 4
@SLOT_HEIGHT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"</g>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_interrupt(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* @svgfile, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %40

10:                                               ; preds = %3
  %11 = load i32, i32* @svgfile, align 4
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @svgfile, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load i32, i32* @svgfile, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %17, %10
  %22 = load i32, i32* @svgfile, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call double @time2pixels(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SLOT_MULT, align 4
  %27 = mul nsw i32 %25, %26
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), double %24, i32 %27)
  %29 = load i32, i32* @svgfile, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call double @time2pixels(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SLOT_MULT, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* @SLOT_HEIGHT, align 4
  %36 = add nsw i32 %34, %35
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), double %31, i32 %36)
  %38 = load i32, i32* @svgfile, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %40

40:                                               ; preds = %21, %9
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
