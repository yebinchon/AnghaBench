; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_set_fll_clks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_set_fll_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona_fll = type { %struct.arizona* }
%struct.arizona = type { %struct.clk**, i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to read current source: %d\0A\00", align 1
@ARIZONA_FLL1_CLK_REF_SRC_MASK = common dso_local global i32 0, align 4
@ARIZONA_FLL1_CLK_REF_SRC_SHIFT = common dso_local global i32 0, align 4
@ARIZONA_MCLK1 = common dso_local global i64 0, align 8
@ARIZONA_MCLK2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arizona_fll*, i32, i32)* @arizona_set_fll_clks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_set_fll_clks(%struct.arizona_fll* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arizona_fll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.arizona*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.clk*, align 8
  %11 = alloca i32, align 4
  store %struct.arizona_fll* %0, %struct.arizona_fll** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.arizona_fll*, %struct.arizona_fll** %5, align 8
  %13 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %12, i32 0, i32 0
  %14 = load %struct.arizona*, %struct.arizona** %13, align 8
  store %struct.arizona* %14, %struct.arizona** %8, align 8
  %15 = load %struct.arizona*, %struct.arizona** %8, align 8
  %16 = getelementptr inbounds %struct.arizona, %struct.arizona* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 6
  %20 = call i32 @regmap_read(i32 %17, i32 %19, i32* %9)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.arizona_fll*, %struct.arizona_fll** %5, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @arizona_fll_err(%struct.arizona_fll* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  br label %60

28:                                               ; preds = %3
  %29 = load i32, i32* @ARIZONA_FLL1_CLK_REF_SRC_MASK, align 4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @ARIZONA_FLL1_CLK_REF_SRC_SHIFT, align 4
  %33 = load i32, i32* %9, align 4
  %34 = lshr i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  switch i32 %35, label %50 [
    i32 129, label %36
    i32 128, label %43
  ]

36:                                               ; preds = %28
  %37 = load %struct.arizona*, %struct.arizona** %8, align 8
  %38 = getelementptr inbounds %struct.arizona, %struct.arizona* %37, i32 0, i32 0
  %39 = load %struct.clk**, %struct.clk*** %38, align 8
  %40 = load i64, i64* @ARIZONA_MCLK1, align 8
  %41 = getelementptr inbounds %struct.clk*, %struct.clk** %39, i64 %40
  %42 = load %struct.clk*, %struct.clk** %41, align 8
  store %struct.clk* %42, %struct.clk** %10, align 8
  br label %51

43:                                               ; preds = %28
  %44 = load %struct.arizona*, %struct.arizona** %8, align 8
  %45 = getelementptr inbounds %struct.arizona, %struct.arizona* %44, i32 0, i32 0
  %46 = load %struct.clk**, %struct.clk*** %45, align 8
  %47 = load i64, i64* @ARIZONA_MCLK2, align 8
  %48 = getelementptr inbounds %struct.clk*, %struct.clk** %46, i64 %47
  %49 = load %struct.clk*, %struct.clk** %48, align 8
  store %struct.clk* %49, %struct.clk** %10, align 8
  br label %51

50:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %60

51:                                               ; preds = %43, %36
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.clk*, %struct.clk** %10, align 8
  %56 = call i32 @clk_prepare_enable(%struct.clk* %55)
  store i32 %56, i32* %4, align 4
  br label %60

57:                                               ; preds = %51
  %58 = load %struct.clk*, %struct.clk** %10, align 8
  %59 = call i32 @clk_disable_unprepare(%struct.clk* %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %54, %50, %23
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @arizona_fll_err(%struct.arizona_fll*, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
