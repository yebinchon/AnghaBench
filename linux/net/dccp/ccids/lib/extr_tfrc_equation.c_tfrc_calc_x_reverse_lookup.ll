; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/lib/extr_tfrc_equation.c_tfrc_calc_x_reverse_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/lib/extr_tfrc_equation.c_tfrc_calc_x_reverse_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tfrc_calc_x_lookup = common dso_local global i64** null, align 8
@.str = private unnamed_addr constant [35 x i8] c"fvalue %u smaller than resolution\0A\00", align 1
@TFRC_SMALLEST_P = common dso_local global i64 0, align 8
@TFRC_CALC_X_ARRSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"fvalue %u exceeds bounds!\0A\00", align 1
@TFRC_CALC_X_SPLIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tfrc_calc_x_reverse_lookup(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %64

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64**, i64*** @tfrc_calc_x_lookup, align 8
  %11 = getelementptr inbounds i64*, i64** %10, i64 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %9, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %8
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* @TFRC_SMALLEST_P, align 8
  store i64 %19, i64* %2, align 8
  br label %64

20:                                               ; preds = %8
  %21 = load i64, i64* %3, align 8
  %22 = load i64**, i64*** @tfrc_calc_x_lookup, align 8
  %23 = load i32, i32* @TFRC_CALC_X_ARRSIZE, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64*, i64** %22, i64 %25
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %21, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  store i64 1000000, i64* %2, align 8
  br label %64

34:                                               ; preds = %20
  %35 = load i64, i64* %3, align 8
  %36 = load i64**, i64*** @tfrc_calc_x_lookup, align 8
  %37 = load i32, i32* @TFRC_CALC_X_ARRSIZE, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64*, i64** %36, i64 %39
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sle i64 %35, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %34
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @tfrc_binsearch(i64 %46, i32 1)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* @TFRC_CALC_X_SPLIT, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* @TFRC_CALC_X_ARRSIZE, align 4
  %53 = sdiv i32 %51, %52
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %2, align 8
  br label %64

55:                                               ; preds = %34
  %56 = load i64, i64* %3, align 8
  %57 = call i32 @tfrc_binsearch(i64 %56, i32 0)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  %60 = mul nsw i32 %59, 1000000
  %61 = load i32, i32* @TFRC_CALC_X_ARRSIZE, align 4
  %62 = sdiv i32 %60, %61
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %2, align 8
  br label %64

64:                                               ; preds = %55, %45, %31, %16, %7
  %65 = load i64, i64* %2, align 8
  ret i64 %65
}

declare dso_local i32 @DCCP_WARN(i8*, i64) #1

declare dso_local i32 @tfrc_binsearch(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
