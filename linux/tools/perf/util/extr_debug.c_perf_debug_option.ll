; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_debug.c_perf_debug_option.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_debug.c_perf_debug_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_variable = type { i32*, i64 }

@debug_variables = common dso_local global %struct.debug_variable* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"Unknown debug variable name '%s'\0A\00", align 1
@quiet = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_debug_option(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.debug_variable*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load %struct.debug_variable*, %struct.debug_variable** @debug_variables, align 8
  %9 = getelementptr inbounds %struct.debug_variable, %struct.debug_variable* %8, i64 0
  store %struct.debug_variable* %9, %struct.debug_variable** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i8* @strdup(i8* %10)
  store i8* %11, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 61)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %5, align 8
  store i8 0, i8* %17, align 1
  br label %19

19:                                               ; preds = %16, %1
  br label %20

20:                                               ; preds = %33, %19
  %21 = load %struct.debug_variable*, %struct.debug_variable** %4, align 8
  %22 = getelementptr inbounds %struct.debug_variable, %struct.debug_variable* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.debug_variable*, %struct.debug_variable** %4, align 8
  %28 = getelementptr inbounds %struct.debug_variable, %struct.debug_variable* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @strcmp(i8* %26, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %36

33:                                               ; preds = %25
  %34 = load %struct.debug_variable*, %struct.debug_variable** %4, align 8
  %35 = getelementptr inbounds %struct.debug_variable, %struct.debug_variable* %34, i32 1
  store %struct.debug_variable* %35, %struct.debug_variable** %4, align 8
  br label %20

36:                                               ; preds = %32, %20
  %37 = load %struct.debug_variable*, %struct.debug_variable** %4, align 8
  %38 = getelementptr inbounds %struct.debug_variable, %struct.debug_variable* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @free(i8* %44)
  store i32 -1, i32* %2, align 4
  br label %73

46:                                               ; preds = %36
  %47 = load i8*, i8** %5, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @atoi(i8* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %55, 10
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %49
  br label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  br label %60

60:                                               ; preds = %58, %57
  %61 = phi i32 [ 0, %57 ], [ %59, %58 ]
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %60, %46
  %63 = load i64, i64* @quiet, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 -1, i32* %7, align 4
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.debug_variable*, %struct.debug_variable** %4, align 8
  %69 = getelementptr inbounds %struct.debug_variable, %struct.debug_variable* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  store i32 %67, i32* %70, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @free(i8* %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %66, %41
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
