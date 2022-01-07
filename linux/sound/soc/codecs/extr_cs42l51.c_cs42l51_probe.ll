; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l51.c_cs42l51_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l51.c_cs42l51_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.cs42l51_private = type { %struct.TYPE_5__*, %struct.regmap*, %struct.regmap*, %struct.regmap* }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"MCLK\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@cs42l51_supply_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Release reset gpio\0A\00", align 1
@CS42L51_CHIP_REV_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"failed to read I2C\0A\00", align 1
@CS42L51_CHIP_ID = common dso_local global i32 0, align 4
@CS42L51_CHIP_REV_A = common dso_local global i32 0, align 4
@CS42L51_CHIP_REV_B = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Invalid chip id: %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"Cirrus Logic CS42L51, Revision: %02X\0A\00", align 1
@CS42L51_CHIP_REV_MASK = common dso_local global i32 0, align 4
@soc_component_device_cs42l51 = common dso_local global i32 0, align 4
@cs42l51_dai = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs42l51_probe(%struct.device* %0, %struct.regmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.cs42l51_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.regmap* %1, %struct.regmap** %5, align 8
  %10 = load %struct.regmap*, %struct.regmap** %5, align 8
  %11 = call i64 @IS_ERR(%struct.regmap* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.regmap*, %struct.regmap** %5, align 8
  %15 = call i32 @PTR_ERR(%struct.regmap* %14)
  store i32 %15, i32* %3, align 4
  br label %192

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.cs42l51_private* @devm_kzalloc(%struct.device* %17, i32 32, i32 %18)
  store %struct.cs42l51_private* %19, %struct.cs42l51_private** %6, align 8
  %20 = load %struct.cs42l51_private*, %struct.cs42l51_private** %6, align 8
  %21 = icmp ne %struct.cs42l51_private* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %192

25:                                               ; preds = %16
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.cs42l51_private*, %struct.cs42l51_private** %6, align 8
  %28 = call i32 @dev_set_drvdata(%struct.device* %26, %struct.cs42l51_private* %27)
  %29 = load %struct.regmap*, %struct.regmap** %5, align 8
  %30 = load %struct.cs42l51_private*, %struct.cs42l51_private** %6, align 8
  %31 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %30, i32 0, i32 3
  store %struct.regmap* %29, %struct.regmap** %31, align 8
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call %struct.regmap* @devm_clk_get(%struct.device* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.cs42l51_private*, %struct.cs42l51_private** %6, align 8
  %35 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %34, i32 0, i32 2
  store %struct.regmap* %33, %struct.regmap** %35, align 8
  %36 = load %struct.cs42l51_private*, %struct.cs42l51_private** %6, align 8
  %37 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %36, i32 0, i32 2
  %38 = load %struct.regmap*, %struct.regmap** %37, align 8
  %39 = call i64 @IS_ERR(%struct.regmap* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %25
  %42 = load %struct.cs42l51_private*, %struct.cs42l51_private** %6, align 8
  %43 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %42, i32 0, i32 2
  %44 = load %struct.regmap*, %struct.regmap** %43, align 8
  %45 = call i32 @PTR_ERR(%struct.regmap* %44)
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load %struct.cs42l51_private*, %struct.cs42l51_private** %6, align 8
  %51 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %50, i32 0, i32 2
  %52 = load %struct.regmap*, %struct.regmap** %51, align 8
  %53 = call i32 @PTR_ERR(%struct.regmap* %52)
  store i32 %53, i32* %3, align 4
  br label %192

54:                                               ; preds = %41
  %55 = load %struct.cs42l51_private*, %struct.cs42l51_private** %6, align 8
  %56 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %55, i32 0, i32 2
  store %struct.regmap* null, %struct.regmap** %56, align 8
  br label %57

57:                                               ; preds = %54, %25
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %78, %57
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.cs42l51_private*, %struct.cs42l51_private** %6, align 8
  %61 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %62)
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %58
  %66 = load i32*, i32** @cs42l51_supply_names, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.cs42l51_private*, %struct.cs42l51_private** %6, align 8
  %72 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %70, i32* %77, align 4
  br label %78

78:                                               ; preds = %65
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %58

81:                                               ; preds = %58
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = load %struct.cs42l51_private*, %struct.cs42l51_private** %6, align 8
  %84 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %85)
  %87 = load %struct.cs42l51_private*, %struct.cs42l51_private** %6, align 8
  %88 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = call i32 @devm_regulator_bulk_get(%struct.device* %82, i32 %86, %struct.TYPE_5__* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %81
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %3, align 4
  br label %192

98:                                               ; preds = %81
  %99 = load %struct.cs42l51_private*, %struct.cs42l51_private** %6, align 8
  %100 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %101)
  %103 = load %struct.cs42l51_private*, %struct.cs42l51_private** %6, align 8
  %104 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = call i32 @regulator_bulk_enable(i32 %102, %struct.TYPE_5__* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %98
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %3, align 4
  br label %192

114:                                              ; preds = %98
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %117 = call %struct.regmap* @devm_gpiod_get_optional(%struct.device* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = load %struct.cs42l51_private*, %struct.cs42l51_private** %6, align 8
  %119 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %118, i32 0, i32 1
  store %struct.regmap* %117, %struct.regmap** %119, align 8
  %120 = load %struct.cs42l51_private*, %struct.cs42l51_private** %6, align 8
  %121 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %120, i32 0, i32 1
  %122 = load %struct.regmap*, %struct.regmap** %121, align 8
  %123 = call i64 @IS_ERR(%struct.regmap* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %114
  %126 = load %struct.cs42l51_private*, %struct.cs42l51_private** %6, align 8
  %127 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %126, i32 0, i32 1
  %128 = load %struct.regmap*, %struct.regmap** %127, align 8
  %129 = call i32 @PTR_ERR(%struct.regmap* %128)
  store i32 %129, i32* %3, align 4
  br label %192

130:                                              ; preds = %114
  %131 = load %struct.cs42l51_private*, %struct.cs42l51_private** %6, align 8
  %132 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %131, i32 0, i32 1
  %133 = load %struct.regmap*, %struct.regmap** %132, align 8
  %134 = icmp ne %struct.regmap* %133, null
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load %struct.device*, %struct.device** %4, align 8
  %137 = call i32 @dev_dbg(%struct.device* %136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %138 = load %struct.cs42l51_private*, %struct.cs42l51_private** %6, align 8
  %139 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %138, i32 0, i32 1
  %140 = load %struct.regmap*, %struct.regmap** %139, align 8
  %141 = call i32 @gpiod_set_value_cansleep(%struct.regmap* %140, i32 0)
  %142 = call i32 @mdelay(i32 2)
  br label %143

143:                                              ; preds = %135, %130
  %144 = load %struct.regmap*, %struct.regmap** %5, align 8
  %145 = load i32, i32* @CS42L51_CHIP_REV_ID, align 4
  %146 = call i32 @regmap_read(%struct.regmap* %144, i32 %145, i32* %7)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load %struct.device*, %struct.device** %4, align 8
  %151 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %150, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %182

152:                                              ; preds = %143
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @CS42L51_CHIP_ID, align 4
  %155 = load i32, i32* @CS42L51_CHIP_REV_A, align 4
  %156 = call i32 @CS42L51_MK_CHIP_REV(i32 %154, i32 %155)
  %157 = icmp ne i32 %153, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %152
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @CS42L51_CHIP_ID, align 4
  %161 = load i32, i32* @CS42L51_CHIP_REV_B, align 4
  %162 = call i32 @CS42L51_MK_CHIP_REV(i32 %160, i32 %161)
  %163 = icmp ne i32 %159, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  %165 = load %struct.device*, %struct.device** %4, align 8
  %166 = load i32, i32* %7, align 4
  %167 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %165, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* @ENODEV, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %8, align 4
  br label %182

170:                                              ; preds = %158, %152
  %171 = load %struct.device*, %struct.device** %4, align 8
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* @CS42L51_CHIP_REV_MASK, align 4
  %174 = and i32 %172, %173
  %175 = call i32 @dev_info(%struct.device* %171, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %174)
  %176 = load %struct.device*, %struct.device** %4, align 8
  %177 = call i32 @devm_snd_soc_register_component(%struct.device* %176, i32* @soc_component_device_cs42l51, i32* @cs42l51_dai, i32 1)
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %8, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %170
  br label %182

181:                                              ; preds = %170
  store i32 0, i32* %3, align 4
  br label %192

182:                                              ; preds = %180, %164, %149
  %183 = load %struct.cs42l51_private*, %struct.cs42l51_private** %6, align 8
  %184 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %183, i32 0, i32 0
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %185)
  %187 = load %struct.cs42l51_private*, %struct.cs42l51_private** %6, align 8
  %188 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %187, i32 0, i32 0
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = call i32 @regulator_bulk_disable(i32 %186, %struct.TYPE_5__* %189)
  %191 = load i32, i32* %8, align 4
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %182, %181, %125, %109, %93, %49, %22, %13
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.cs42l51_private* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.cs42l51_private*) #1

declare dso_local %struct.regmap* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_5__*) #1

declare dso_local %struct.regmap* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @gpiod_set_value_cansleep(%struct.regmap*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @CS42L51_MK_CHIP_REV(i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
