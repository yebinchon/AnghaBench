; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_parse_absolute_time.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_parse_absolute_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.data__file = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Invalid time string\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@pdiff = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.data__file*, i8**)* @parse_absolute_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_absolute_time(%struct.data__file* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.data__file*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.data__file* %0, %struct.data__file** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 58)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %63

24:                                               ; preds = %15
  %25 = load i8*, i8** %6, align 8
  store i8 0, i8* %25, align 1
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %63

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i8**, i8*** %5, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.data__file*, %struct.data__file** %4, align 8
  %41 = getelementptr inbounds %struct.data__file, %struct.data__file* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @perf_time__parse_for_ranges(i8* %39, i32 %42, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pdiff, i32 0, i32 2), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pdiff, i32 0, i32 1), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pdiff, i32 0, i32 0))
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %63

48:                                               ; preds = %37
  %49 = load i8*, i8** %6, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51, %48
  %57 = load i8**, i8*** %5, align 8
  store i8* null, i8** %57, align 8
  br label %61

58:                                               ; preds = %51
  %59 = load i8*, i8** %6, align 8
  %60 = load i8**, i8*** %5, align 8
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %58, %56
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %46, %32, %20
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @perf_time__parse_for_ranges(i8*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
