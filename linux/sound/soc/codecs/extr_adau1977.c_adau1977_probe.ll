; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.adau1977 = type { i32, void (%struct.device*)*, i32, %struct.regmap*, %struct.regmap*, %struct.regmap*, %struct.regmap*, %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adau1977_rates = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"AVDD\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"DVDD\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@ADAU1977 = common dso_local global i32 0, align 4
@ADAU1977_BLOCK_POWER_SAI_LDO_EN = common dso_local global i64 0, align 8
@ADAU1977_REG_BLOCK_POWER_SAI = common dso_local global i32 0, align 4
@adau1977_component_driver = common dso_local global i32 0, align 4
@adau1977_dai = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adau1977_probe(%struct.device* %0, %struct.regmap* %1, i32 %2, void (%struct.device*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (%struct.device*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.adau1977*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.regmap* %1, %struct.regmap** %7, align 8
  store i32 %2, i32* %8, align 4
  store void (%struct.device*)* %3, void (%struct.device*)** %9, align 8
  %13 = load %struct.regmap*, %struct.regmap** %7, align 8
  %14 = call i64 @IS_ERR(%struct.regmap* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load %struct.regmap*, %struct.regmap** %7, align 8
  %18 = call i32 @PTR_ERR(%struct.regmap* %17)
  store i32 %18, i32* %5, align 4
  br label %170

19:                                               ; preds = %4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.adau1977* @devm_kzalloc(%struct.device* %20, i32 72, i32 %21)
  store %struct.adau1977* %22, %struct.adau1977** %11, align 8
  %23 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %24 = icmp eq %struct.adau1977* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %170

28:                                               ; preds = %19
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %31 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %30, i32 0, i32 8
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %34 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.regmap*, %struct.regmap** %7, align 8
  %36 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %37 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %36, i32 0, i32 3
  store %struct.regmap* %35, %struct.regmap** %37, align 8
  %38 = load void (%struct.device*)*, void (%struct.device*)** %9, align 8
  %39 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %40 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %39, i32 0, i32 1
  store void (%struct.device*)* %38, void (%struct.device*)** %40, align 8
  %41 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %42 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %41, i32 0, i32 2
  store i32 192000, i32* %42, align 8
  %43 = load i32, i32* @adau1977_rates, align 4
  %44 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %45 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @adau1977_rates, align 4
  %48 = call i32 @ARRAY_SIZE(i32 %47)
  %49 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %50 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = call %struct.regmap* @devm_regulator_get(%struct.device* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %55 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %54, i32 0, i32 6
  store %struct.regmap* %53, %struct.regmap** %55, align 8
  %56 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %57 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %56, i32 0, i32 6
  %58 = load %struct.regmap*, %struct.regmap** %57, align 8
  %59 = call i64 @IS_ERR(%struct.regmap* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %28
  %62 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %63 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %62, i32 0, i32 6
  %64 = load %struct.regmap*, %struct.regmap** %63, align 8
  %65 = call i32 @PTR_ERR(%struct.regmap* %64)
  store i32 %65, i32* %5, align 4
  br label %170

66:                                               ; preds = %28
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = call %struct.regmap* @devm_regulator_get_optional(%struct.device* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %70 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %69, i32 0, i32 4
  store %struct.regmap* %68, %struct.regmap** %70, align 8
  %71 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %72 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %71, i32 0, i32 4
  %73 = load %struct.regmap*, %struct.regmap** %72, align 8
  %74 = call i64 @IS_ERR(%struct.regmap* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %66
  %77 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %78 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %77, i32 0, i32 4
  %79 = load %struct.regmap*, %struct.regmap** %78, align 8
  %80 = call i32 @PTR_ERR(%struct.regmap* %79)
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %86 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %85, i32 0, i32 4
  %87 = load %struct.regmap*, %struct.regmap** %86, align 8
  %88 = call i32 @PTR_ERR(%struct.regmap* %87)
  store i32 %88, i32* %5, align 4
  br label %170

89:                                               ; preds = %76
  %90 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %91 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %90, i32 0, i32 4
  store %struct.regmap* null, %struct.regmap** %91, align 8
  br label %92

92:                                               ; preds = %89, %66
  %93 = load %struct.device*, %struct.device** %6, align 8
  %94 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %95 = call %struct.regmap* @devm_gpiod_get_optional(%struct.device* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %97 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %96, i32 0, i32 5
  store %struct.regmap* %95, %struct.regmap** %97, align 8
  %98 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %99 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %98, i32 0, i32 5
  %100 = load %struct.regmap*, %struct.regmap** %99, align 8
  %101 = call i64 @IS_ERR(%struct.regmap* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %92
  %104 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %105 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %104, i32 0, i32 5
  %106 = load %struct.regmap*, %struct.regmap** %105, align 8
  %107 = call i32 @PTR_ERR(%struct.regmap* %106)
  store i32 %107, i32* %5, align 4
  br label %170

108:                                              ; preds = %92
  %109 = load %struct.device*, %struct.device** %6, align 8
  %110 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %111 = call i32 @dev_set_drvdata(%struct.device* %109, %struct.adau1977* %110)
  %112 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %113 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %112, i32 0, i32 5
  %114 = load %struct.regmap*, %struct.regmap** %113, align 8
  %115 = icmp ne %struct.regmap* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = call i32 @ndelay(i32 100)
  br label %118

118:                                              ; preds = %116, %108
  %119 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %120 = call i32 @adau1977_power_enable(%struct.adau1977* %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %5, align 4
  br label %170

125:                                              ; preds = %118
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @ADAU1977, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %131 = call i32 @adau1977_setup_micbias(%struct.adau1977* %130)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %166

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %125
  %137 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %138 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %137, i32 0, i32 4
  %139 = load %struct.regmap*, %struct.regmap** %138, align 8
  %140 = icmp ne %struct.regmap* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 -1, i32* %10, align 4
  br label %146

142:                                              ; preds = %136
  %143 = load i64, i64* @ADAU1977_BLOCK_POWER_SAI_LDO_EN, align 8
  %144 = xor i64 %143, -1
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %10, align 4
  br label %146

146:                                              ; preds = %142, %141
  %147 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %148 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %147, i32 0, i32 3
  %149 = load %struct.regmap*, %struct.regmap** %148, align 8
  %150 = load i32, i32* @ADAU1977_REG_BLOCK_POWER_SAI, align 4
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @regmap_update_bits(%struct.regmap* %149, i32 %150, i32 %151, i32 0)
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %146
  br label %166

156:                                              ; preds = %146
  %157 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %158 = call i32 @adau1977_power_disable(%struct.adau1977* %157)
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i32, i32* %12, align 4
  store i32 %162, i32* %5, align 4
  br label %170

163:                                              ; preds = %156
  %164 = load %struct.device*, %struct.device** %6, align 8
  %165 = call i32 @devm_snd_soc_register_component(%struct.device* %164, i32* @adau1977_component_driver, i32* @adau1977_dai, i32 1)
  store i32 %165, i32* %5, align 4
  br label %170

166:                                              ; preds = %155, %134
  %167 = load %struct.adau1977*, %struct.adau1977** %11, align 8
  %168 = call i32 @adau1977_power_disable(%struct.adau1977* %167)
  %169 = load i32, i32* %12, align 4
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %166, %163, %161, %123, %103, %84, %61, %25, %16
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.adau1977* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.regmap* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local %struct.regmap* @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local %struct.regmap* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.adau1977*) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @adau1977_power_enable(%struct.adau1977*) #1

declare dso_local i32 @adau1977_setup_micbias(%struct.adau1977*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @adau1977_power_disable(%struct.adau1977*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
