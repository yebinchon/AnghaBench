; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm3168a.c_pcm3168a_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm3168a.c_pcm3168a_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.pcm3168a_priv = type { %struct.regmap*, %struct.TYPE_7__*, %struct.regmap*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"scki\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to acquire clock 'scki': %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to enable mclk: %d\0A\00", align 1
@pcm3168a_supply_names = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to request supplies: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to enable supplies: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to allocate regmap: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to reset device: %d\0A\00", align 1
@pcm3168a_driver = common dso_local global i32 0, align 4
@pcm3168a_dais = common dso_local global %struct.TYPE_7__* null, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to register component: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcm3168a_probe(%struct.device* %0, %struct.regmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.pcm3168a_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.regmap* %1, %struct.regmap** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.pcm3168a_priv* @devm_kzalloc(%struct.device* %9, i32 32, i32 %10)
  store %struct.pcm3168a_priv* %11, %struct.pcm3168a_priv** %6, align 8
  %12 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %13 = icmp eq %struct.pcm3168a_priv* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %184

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %20 = call i32 @dev_set_drvdata(%struct.device* %18, %struct.pcm3168a_priv* %19)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call %struct.regmap* @devm_clk_get(%struct.device* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %24 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %23, i32 0, i32 0
  store %struct.regmap* %22, %struct.regmap** %24, align 8
  %25 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %26 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %25, i32 0, i32 0
  %27 = load %struct.regmap*, %struct.regmap** %26, align 8
  %28 = call i64 @IS_ERR(%struct.regmap* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %17
  %31 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %32 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %31, i32 0, i32 0
  %33 = load %struct.regmap*, %struct.regmap** %32, align 8
  %34 = call i32 @PTR_ERR(%struct.regmap* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @EPROBE_DEFER, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %30
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %184

45:                                               ; preds = %17
  %46 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %47 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %46, i32 0, i32 0
  %48 = load %struct.regmap*, %struct.regmap** %47, align 8
  %49 = call i32 @clk_prepare_enable(%struct.regmap* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %184

57:                                               ; preds = %45
  %58 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %59 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %58, i32 0, i32 0
  %60 = load %struct.regmap*, %struct.regmap** %59, align 8
  %61 = call i32 @clk_get_rate(%struct.regmap* %60)
  %62 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %63 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %84, %57
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %67 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %68)
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %64
  %72 = load i32*, i32** @pcm3168a_supply_names, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %78 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i32 %76, i32* %83, align 4
  br label %84

84:                                               ; preds = %71
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %64

87:                                               ; preds = %64
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %90 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %89, i32 0, i32 1
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %91)
  %93 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %94 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %93, i32 0, i32 1
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = call i32 @devm_regulator_bulk_get(%struct.device* %88, i32 %92, %struct.TYPE_7__* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %87
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @EPROBE_DEFER, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp ne i32 %100, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @dev_err(%struct.device* %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %104, %99
  br label %178

109:                                              ; preds = %87
  %110 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %111 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %112)
  %114 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %115 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %114, i32 0, i32 1
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = call i32 @regulator_bulk_enable(i32 %113, %struct.TYPE_7__* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %109
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @dev_err(%struct.device* %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  br label %178

124:                                              ; preds = %109
  %125 = load %struct.regmap*, %struct.regmap** %5, align 8
  %126 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %127 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %126, i32 0, i32 2
  store %struct.regmap* %125, %struct.regmap** %127, align 8
  %128 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %129 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %128, i32 0, i32 2
  %130 = load %struct.regmap*, %struct.regmap** %129, align 8
  %131 = call i64 @IS_ERR(%struct.regmap* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %124
  %134 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %135 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %134, i32 0, i32 2
  %136 = load %struct.regmap*, %struct.regmap** %135, align 8
  %137 = call i32 @PTR_ERR(%struct.regmap* %136)
  store i32 %137, i32* %7, align 4
  %138 = load %struct.device*, %struct.device** %4, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @dev_err(%struct.device* %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %139)
  br label %169

141:                                              ; preds = %124
  %142 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %143 = call i32 @pcm3168a_reset(%struct.pcm3168a_priv* %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load %struct.device*, %struct.device** %4, align 8
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @dev_err(%struct.device* %147, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %148)
  br label %169

150:                                              ; preds = %141
  %151 = load %struct.device*, %struct.device** %4, align 8
  %152 = call i32 @pm_runtime_set_active(%struct.device* %151)
  %153 = load %struct.device*, %struct.device** %4, align 8
  %154 = call i32 @pm_runtime_enable(%struct.device* %153)
  %155 = load %struct.device*, %struct.device** %4, align 8
  %156 = call i32 @pm_runtime_idle(%struct.device* %155)
  %157 = load %struct.device*, %struct.device** %4, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pcm3168a_dais, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pcm3168a_dais, align 8
  %160 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %159)
  %161 = call i32 @devm_snd_soc_register_component(%struct.device* %157, i32* @pcm3168a_driver, %struct.TYPE_7__* %158, i32 %160)
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %150
  %165 = load %struct.device*, %struct.device** %4, align 8
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @dev_err(%struct.device* %165, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %166)
  br label %169

168:                                              ; preds = %150
  store i32 0, i32* %3, align 4
  br label %184

169:                                              ; preds = %164, %146, %133
  %170 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %171 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %170, i32 0, i32 1
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %172)
  %174 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %175 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %174, i32 0, i32 1
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = call i32 @regulator_bulk_disable(i32 %173, %struct.TYPE_7__* %176)
  br label %178

178:                                              ; preds = %169, %120, %108
  %179 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %180 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %179, i32 0, i32 0
  %181 = load %struct.regmap*, %struct.regmap** %180, align 8
  %182 = call i32 @clk_disable_unprepare(%struct.regmap* %181)
  %183 = load i32, i32* %7, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %178, %168, %52, %43, %14
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local %struct.pcm3168a_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.pcm3168a_priv*) #1

declare dso_local %struct.regmap* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(%struct.regmap*) #1

declare dso_local i32 @clk_get_rate(%struct.regmap*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @pcm3168a_reset(%struct.pcm3168a_priv*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_idle(%struct.device*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
