; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8955.c_wm8955_pll_factors.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8955.c_wm8955_pll_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pll_factors = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Fref=%u Fout=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Fvco=%dHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Nmod=%d\0A\00", align 1
@FIXED_FLL_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"N=%x K=%x OUTDIV=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, %struct.pll_factors*)* @wm8955_pll_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8955_pll_factors(%struct.device* %0, i32 %1, i32 %2, %struct.pll_factors* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pll_factors*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.pll_factors* %3, %struct.pll_factors** %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %18, 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ult i32 %20, 90000000
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.pll_factors*, %struct.pll_factors** %8, align 8
  %24 = getelementptr inbounds %struct.pll_factors, %struct.pll_factors* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* %13, align 4
  %26 = mul i32 %25, 2
  store i32 %26, i32* %13, align 4
  br label %30

27:                                               ; preds = %4
  %28 = load %struct.pll_factors*, %struct.pll_factors** %8, align 8
  %29 = getelementptr inbounds %struct.pll_factors, %struct.pll_factors* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %13, align 4
  %32 = icmp ult i32 %31, 90000000
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %13, align 4
  %35 = icmp ugt i32 %34, 100000000
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ true, %30 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON(i32 %38)
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %6, align 4
  %45 = udiv i32 %43, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.pll_factors*, %struct.pll_factors** %8, align 8
  %48 = getelementptr inbounds %struct.pll_factors, %struct.pll_factors* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %6, align 4
  %51 = urem i32 %49, %50
  store i32 %51, i32* %12, align 4
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i64, i64* @FIXED_FLL_SIZE, align 8
  %56 = load i32, i32* %12, align 4
  %57 = zext i32 %56 to i64
  %58 = mul nsw i64 %55, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @do_div(i32 %60, i32 %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = urem i32 %64, 10
  %66 = icmp uge i32 %65, 5
  br i1 %66, label %67, label %70

67:                                               ; preds = %36
  %68 = load i32, i32* %10, align 4
  %69 = add i32 %68, 5
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %67, %36
  %71 = load i32, i32* %10, align 4
  %72 = udiv i32 %71, 10
  %73 = load %struct.pll_factors*, %struct.pll_factors** %8, align 8
  %74 = getelementptr inbounds %struct.pll_factors, %struct.pll_factors* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = load %struct.pll_factors*, %struct.pll_factors** %8, align 8
  %77 = getelementptr inbounds %struct.pll_factors, %struct.pll_factors* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.pll_factors*, %struct.pll_factors** %8, align 8
  %80 = getelementptr inbounds %struct.pll_factors, %struct.pll_factors* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pll_factors*, %struct.pll_factors** %8, align 8
  %83 = getelementptr inbounds %struct.pll_factors, %struct.pll_factors* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %81, i32 %84)
  ret i32 0
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
