; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_scan_ftrace_readme.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_scan_ftrace_readme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@scan_ftrace_readme.scanned = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"README\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@FTRACE_README_END = common dso_local global i32 0, align 4
@ftrace_readme_table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @scan_ftrace_readme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_ftrace_readme(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @scan_ftrace_readme.scanned, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %70

13:                                               ; preds = %1
  %14 = call i32 @open_trace_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %2, align 4
  br label %82

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = call i32* @fdopen(i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @close(i32 %25)
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %82

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %64, %28
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @getline(i8** %6, i64* %7, i32* %30)
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %61, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @FTRACE_README_END, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %34
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ftrace_readme_table, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %38
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ftrace_readme_table, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strglobmatch(i8* %47, i32 %53)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ftrace_readme_table, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 4
  br label %60

60:                                               ; preds = %46, %38
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %9, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %34

64:                                               ; preds = %34
  br label %29

65:                                               ; preds = %29
  store i32 1, i32* @scan_ftrace_readme.scanned, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @fclose(i32* %66)
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @free(i8* %68)
  br label %70

70:                                               ; preds = %65, %12
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @FTRACE_README_END, align 4
  %73 = icmp uge i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %82

75:                                               ; preds = %70
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ftrace_readme_table, align 8
  %77 = load i32, i32* %3, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %75, %74, %24, %17
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @open_trace_file(i8*, i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @strglobmatch(i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
