; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_blocked.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_svghelper.c_svg_blocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svgfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"<g>\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"<title>#%d blocked %s</title>\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"<desc>Blocked on:\0A%s</desc>\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"blocked\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"</g>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_blocked(i32 %0, i32 %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i32, i32* @svgfile, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  br label %37

14:                                               ; preds = %5
  %15 = load i32, i32* @svgfile, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @svgfile, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = sub nsw i64 %19, %20
  %22 = call i8* @time_to_string(i64 %21)
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %18, i8* %22)
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load i32, i32* @svgfile, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %26, %14
  %31 = load i32, i32* %6, align 4
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @svg_box(i32 %31, i64 %32, i64 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* @svgfile, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %37

37:                                               ; preds = %30, %13
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @time_to_string(i64) #1

declare dso_local i32 @svg_box(i32, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
