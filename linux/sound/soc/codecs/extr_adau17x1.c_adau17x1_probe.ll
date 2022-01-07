; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.adau = type { void (%struct.device*)*, i32, %struct.regmap*, %struct.regmap*, %struct.regmap*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ADAU17X1_CLK_SRC_PLL_AUTO = common dso_local global i32 0, align 4
@adau17x1_sigmadsp_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not find firmware file: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adau17x1_probe(%struct.device* %0, %struct.regmap* %1, i32 %2, void (%struct.device*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.device*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.adau*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.regmap* %1, %struct.regmap** %8, align 8
  store i32 %2, i32* %9, align 4
  store void (%struct.device*)* %3, void (%struct.device*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.regmap*, %struct.regmap** %8, align 8
  %15 = call i64 @IS_ERR(%struct.regmap* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load %struct.regmap*, %struct.regmap** %8, align 8
  %19 = call i32 @PTR_ERR(%struct.regmap* %18)
  store i32 %19, i32* %6, align 4
  br label %145

20:                                               ; preds = %5
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.adau* @devm_kzalloc(%struct.device* %21, i32 48, i32 %22)
  store %struct.adau* %23, %struct.adau** %12, align 8
  %24 = load %struct.adau*, %struct.adau** %12, align 8
  %25 = icmp ne %struct.adau* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %145

29:                                               ; preds = %20
  %30 = load %struct.device*, %struct.device** %7, align 8
  %31 = call %struct.regmap* @devm_clk_get(%struct.device* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.adau*, %struct.adau** %12, align 8
  %33 = getelementptr inbounds %struct.adau, %struct.adau* %32, i32 0, i32 4
  store %struct.regmap* %31, %struct.regmap** %33, align 8
  %34 = load %struct.adau*, %struct.adau** %12, align 8
  %35 = getelementptr inbounds %struct.adau, %struct.adau* %34, i32 0, i32 4
  %36 = load %struct.regmap*, %struct.regmap** %35, align 8
  %37 = call i64 @IS_ERR(%struct.regmap* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %29
  %40 = load %struct.adau*, %struct.adau** %12, align 8
  %41 = getelementptr inbounds %struct.adau, %struct.adau* %40, i32 0, i32 4
  %42 = load %struct.regmap*, %struct.regmap** %41, align 8
  %43 = call i32 @PTR_ERR(%struct.regmap* %42)
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.adau*, %struct.adau** %12, align 8
  %49 = getelementptr inbounds %struct.adau, %struct.adau* %48, i32 0, i32 4
  %50 = load %struct.regmap*, %struct.regmap** %49, align 8
  %51 = call i32 @PTR_ERR(%struct.regmap* %50)
  store i32 %51, i32* %6, align 4
  br label %145

52:                                               ; preds = %39
  %53 = load %struct.adau*, %struct.adau** %12, align 8
  %54 = getelementptr inbounds %struct.adau, %struct.adau* %53, i32 0, i32 4
  store %struct.regmap* null, %struct.regmap** %54, align 8
  br label %87

55:                                               ; preds = %29
  %56 = load %struct.adau*, %struct.adau** %12, align 8
  %57 = getelementptr inbounds %struct.adau, %struct.adau* %56, i32 0, i32 4
  %58 = load %struct.regmap*, %struct.regmap** %57, align 8
  %59 = icmp ne %struct.regmap* %58, null
  br i1 %59, label %60, label %86

60:                                               ; preds = %55
  %61 = load i32, i32* @ADAU17X1_CLK_SRC_PLL_AUTO, align 4
  %62 = load %struct.adau*, %struct.adau** %12, align 8
  %63 = getelementptr inbounds %struct.adau, %struct.adau* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  %64 = load %struct.adau*, %struct.adau** %12, align 8
  %65 = getelementptr inbounds %struct.adau, %struct.adau* %64, i32 0, i32 4
  %66 = load %struct.regmap*, %struct.regmap** %65, align 8
  %67 = call i32 @clk_get_rate(%struct.regmap* %66)
  %68 = load %struct.adau*, %struct.adau** %12, align 8
  %69 = getelementptr inbounds %struct.adau, %struct.adau* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @adau_calc_pll_cfg(i32 %67, i32 49152000, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %60
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %6, align 4
  br label %145

76:                                               ; preds = %60
  %77 = load %struct.adau*, %struct.adau** %12, align 8
  %78 = getelementptr inbounds %struct.adau, %struct.adau* %77, i32 0, i32 4
  %79 = load %struct.regmap*, %struct.regmap** %78, align 8
  %80 = call i32 @clk_prepare_enable(%struct.regmap* %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %6, align 4
  br label %145

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %55
  br label %87

87:                                               ; preds = %86, %52
  %88 = load %struct.regmap*, %struct.regmap** %8, align 8
  %89 = load %struct.adau*, %struct.adau** %12, align 8
  %90 = getelementptr inbounds %struct.adau, %struct.adau* %89, i32 0, i32 3
  store %struct.regmap* %88, %struct.regmap** %90, align 8
  %91 = load void (%struct.device*)*, void (%struct.device*)** %10, align 8
  %92 = load %struct.adau*, %struct.adau** %12, align 8
  %93 = getelementptr inbounds %struct.adau, %struct.adau* %92, i32 0, i32 0
  store void (%struct.device*)* %91, void (%struct.device*)** %93, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.adau*, %struct.adau** %12, align 8
  %96 = getelementptr inbounds %struct.adau, %struct.adau* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load %struct.device*, %struct.device** %7, align 8
  %98 = load %struct.adau*, %struct.adau** %12, align 8
  %99 = call i32 @dev_set_drvdata(%struct.device* %97, %struct.adau* %98)
  %100 = load i8*, i8** %11, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %138

102:                                              ; preds = %87
  %103 = load %struct.adau*, %struct.adau** %12, align 8
  %104 = call i64 @adau17x1_has_safeload(%struct.adau* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load %struct.device*, %struct.device** %7, align 8
  %108 = load %struct.regmap*, %struct.regmap** %8, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = call i8* @devm_sigmadsp_init_regmap(%struct.device* %107, %struct.regmap* %108, i32* @adau17x1_sigmadsp_ops, i8* %109)
  %111 = bitcast i8* %110 to %struct.regmap*
  %112 = load %struct.adau*, %struct.adau** %12, align 8
  %113 = getelementptr inbounds %struct.adau, %struct.adau* %112, i32 0, i32 2
  store %struct.regmap* %111, %struct.regmap** %113, align 8
  br label %122

114:                                              ; preds = %102
  %115 = load %struct.device*, %struct.device** %7, align 8
  %116 = load %struct.regmap*, %struct.regmap** %8, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = call i8* @devm_sigmadsp_init_regmap(%struct.device* %115, %struct.regmap* %116, i32* null, i8* %117)
  %119 = bitcast i8* %118 to %struct.regmap*
  %120 = load %struct.adau*, %struct.adau** %12, align 8
  %121 = getelementptr inbounds %struct.adau, %struct.adau* %120, i32 0, i32 2
  store %struct.regmap* %119, %struct.regmap** %121, align 8
  br label %122

122:                                              ; preds = %114, %106
  %123 = load %struct.adau*, %struct.adau** %12, align 8
  %124 = getelementptr inbounds %struct.adau, %struct.adau* %123, i32 0, i32 2
  %125 = load %struct.regmap*, %struct.regmap** %124, align 8
  %126 = call i64 @IS_ERR(%struct.regmap* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %122
  %129 = load %struct.device*, %struct.device** %7, align 8
  %130 = load %struct.adau*, %struct.adau** %12, align 8
  %131 = getelementptr inbounds %struct.adau, %struct.adau* %130, i32 0, i32 2
  %132 = load %struct.regmap*, %struct.regmap** %131, align 8
  %133 = call i32 @PTR_ERR(%struct.regmap* %132)
  %134 = call i32 @dev_warn(%struct.device* %129, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  %135 = load %struct.adau*, %struct.adau** %12, align 8
  %136 = getelementptr inbounds %struct.adau, %struct.adau* %135, i32 0, i32 2
  store %struct.regmap* null, %struct.regmap** %136, align 8
  br label %137

137:                                              ; preds = %128, %122
  br label %138

138:                                              ; preds = %137, %87
  %139 = load void (%struct.device*)*, void (%struct.device*)** %10, align 8
  %140 = icmp ne void (%struct.device*)* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load void (%struct.device*)*, void (%struct.device*)** %10, align 8
  %143 = load %struct.device*, %struct.device** %7, align 8
  call void %142(%struct.device* %143)
  br label %144

144:                                              ; preds = %141, %138
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %144, %83, %74, %47, %26, %17
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.adau* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.regmap* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @adau_calc_pll_cfg(i32, i32, i32) #1

declare dso_local i32 @clk_get_rate(%struct.regmap*) #1

declare dso_local i32 @clk_prepare_enable(%struct.regmap*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.adau*) #1

declare dso_local i64 @adau17x1_has_safeload(%struct.adau*) #1

declare dso_local i8* @devm_sigmadsp_init_regmap(%struct.device*, %struct.regmap*, i32*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
