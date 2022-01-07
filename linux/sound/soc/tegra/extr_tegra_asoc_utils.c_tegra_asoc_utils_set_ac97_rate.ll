; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_asoc_utils.c_tegra_asoc_utils_set_ac97_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_asoc_utils.c_tegra_asoc_utils_set_ac97_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_asoc_utils_data = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Can't set pll_a rate: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Can't set pll_a_out0 rate: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Can't enable pll_a: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Can't enable pll_a_out0: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Can't enable cdev1: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_asoc_utils_set_ac97_rate(%struct.tegra_asoc_utils_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_asoc_utils_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tegra_asoc_utils_data* %0, %struct.tegra_asoc_utils_data** %3, align 8
  store i32 73728000, i32* %4, align 4
  store i32 24576000, i32* %5, align 4
  %7 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @clk_disable_unprepare(i32 %9)
  %11 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_disable_unprepare(i32 %13)
  %15 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_disable_unprepare(i32 %17)
  %19 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_set_rate(i32 %21, i32 73728000)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %3, align 8
  %27 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %93

32:                                               ; preds = %1
  %33 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %3, align 8
  %34 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clk_set_rate(i32 %35, i32 24576000)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %3, align 8
  %41 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %93

46:                                               ; preds = %32
  %47 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %3, align 8
  %48 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @clk_prepare_enable(i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %3, align 8
  %55 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %93

60:                                               ; preds = %46
  %61 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %3, align 8
  %62 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @clk_prepare_enable(i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %3, align 8
  %69 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %93

74:                                               ; preds = %60
  %75 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %3, align 8
  %76 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @clk_prepare_enable(i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %3, align 8
  %83 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %93

88:                                               ; preds = %74
  %89 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %3, align 8
  %90 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %89, i32 0, i32 0
  store i32 73728000, i32* %90, align 4
  %91 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %3, align 8
  %92 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %91, i32 0, i32 1
  store i32 24576000, i32* %92, align 4
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %88, %81, %67, %53, %39, %25
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
