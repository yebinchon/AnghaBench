; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_string.c_asprintf_expr_inout_ints.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_string.c_asprintf_expr_inout_ints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s %s %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @asprintf_expr_inout_ints(i8* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i64, i64* %8, align 8
  %18 = mul i64 %17, 28
  %19 = add i64 %18, 1
  store i64 %19, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i8* @malloc(i64 %20)
  store i8* %21, i8** %13, align 8
  %22 = load i8*, i8** %13, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %73

24:                                               ; preds = %4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  %25 = load i8*, i8** %13, align 8
  store i8* %25, i8** %16, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  br label %29

29:                                               ; preds = %28, %24
  store i64 0, i64* %11, align 8
  br label %30

30:                                               ; preds = %69, %29
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %30
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %75

39:                                               ; preds = %34
  %40 = load i64, i64* %11, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load i8*, i8** %16, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %12, align 8
  %48 = sub i64 %46, %47
  %49 = load i8*, i8** %14, align 8
  %50 = call i64 (i8*, i64, i8*, i8*, ...) @scnprintf(i8* %45, i64 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  %51 = load i64, i64* %12, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %12, align 8
  br label %53

53:                                               ; preds = %42, %39
  %54 = load i8*, i8** %16, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %12, align 8
  %59 = sub i64 %57, %58
  %60 = load i8*, i8** %6, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i64 (i8*, i64, i8*, i8*, ...) @scnprintf(i8* %56, i64 %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %60, i8* %61, i32 %65)
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %12, align 8
  br label %69

69:                                               ; preds = %53
  %70 = load i64, i64* %11, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %11, align 8
  br label %30

72:                                               ; preds = %30
  br label %73

73:                                               ; preds = %72, %4
  %74 = load i8*, i8** %13, align 8
  store i8* %74, i8** %5, align 8
  br label %78

75:                                               ; preds = %38
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 @free(i8* %76)
  store i8* null, i8** %5, align 8
  br label %78

78:                                               ; preds = %75, %73
  %79 = load i8*, i8** %5, align 8
  ret i8* %79
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
