; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_asoc_utils.c_tegra_asoc_utils_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_asoc_utils.c_tegra_asoc_utils_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_asoc_utils_data = type { i8*, i8*, i8*, %struct.device*, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"nvidia,tegra20\00", align 1
@TEGRA_ASOC_UTILS_SOC_TEGRA20 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"nvidia,tegra30\00", align 1
@TEGRA_ASOC_UTILS_SOC_TEGRA30 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"nvidia,tegra114\00", align 1
@TEGRA_ASOC_UTILS_SOC_TEGRA114 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"nvidia,tegra124\00", align 1
@TEGRA_ASOC_UTILS_SOC_TEGRA124 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"SoC unknown to Tegra ASoC utils\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"pll_a\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Can't retrieve clk pll_a\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"pll_a_out0\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Can't retrieve clk pll_a_out0\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Can't retrieve clk cdev1\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_asoc_utils_init(%struct.tegra_asoc_utils_data* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_asoc_utils_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.tegra_asoc_utils_data* %0, %struct.tegra_asoc_utils_data** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %7 = load %struct.device*, %struct.device** %5, align 8
  %8 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %9 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %8, i32 0, i32 3
  store %struct.device* %7, %struct.device** %9, align 8
  %10 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @TEGRA_ASOC_UTILS_SOC_TEGRA20, align 4
  %14 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %15 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  br label %47

16:                                               ; preds = %2
  %17 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @TEGRA_ASOC_UTILS_SOC_TEGRA30, align 4
  %21 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %22 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  br label %46

23:                                               ; preds = %16
  %24 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @TEGRA_ASOC_UTILS_SOC_TEGRA114, align 4
  %28 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %29 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  br label %45

30:                                               ; preds = %23
  %31 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @TEGRA_ASOC_UTILS_SOC_TEGRA124, align 4
  %35 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %36 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  br label %44

37:                                               ; preds = %30
  %38 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %39 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %38, i32 0, i32 3
  %40 = load %struct.device*, %struct.device** %39, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %128

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %26
  br label %46

46:                                               ; preds = %45, %19
  br label %47

47:                                               ; preds = %46, %12
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = call i8* @clk_get(%struct.device* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %50 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %51 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %53 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @IS_ERR(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %47
  %58 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %59 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %58, i32 0, i32 3
  %60 = load %struct.device*, %struct.device** %59, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %62 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %63 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %6, align 4
  br label %126

66:                                               ; preds = %47
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = call i8* @clk_get(%struct.device* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %69 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %70 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %72 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @IS_ERR(i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %66
  %77 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %78 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %77, i32 0, i32 3
  %79 = load %struct.device*, %struct.device** %78, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %81 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %82 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @PTR_ERR(i8* %83)
  store i32 %84, i32* %6, align 4
  br label %121

85:                                               ; preds = %66
  %86 = load %struct.device*, %struct.device** %5, align 8
  %87 = call i8* @clk_get(%struct.device* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %88 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %89 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %91 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @IS_ERR(i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %85
  %96 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %97 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %96, i32 0, i32 3
  %98 = load %struct.device*, %struct.device** %97, align 8
  %99 = call i32 @dev_err(%struct.device* %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %100 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %101 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @PTR_ERR(i8* %102)
  store i32 %103, i32* %6, align 4
  br label %116

104:                                              ; preds = %85
  %105 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %106 = call i32 @tegra_asoc_utils_set_rate(%struct.tegra_asoc_utils_data* %105, i32 44100, i32 11289600)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %111

110:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %128

111:                                              ; preds = %109
  %112 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %113 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @clk_put(i8* %114)
  br label %116

116:                                              ; preds = %111, %95
  %117 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %118 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @clk_put(i8* %119)
  br label %121

121:                                              ; preds = %116, %76
  %122 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %4, align 8
  %123 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @clk_put(i8* %124)
  br label %126

126:                                              ; preds = %121, %57
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %110, %37
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i64 @of_machine_is_compatible(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @tegra_asoc_utils_set_rate(%struct.tegra_asoc_utils_data*, i32, i32) #1

declare dso_local i32 @clk_put(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
