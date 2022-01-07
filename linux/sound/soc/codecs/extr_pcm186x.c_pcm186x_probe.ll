; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm186x.c_pcm186x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm186x.c_pcm186x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.pcm186x_priv = type { %struct.TYPE_5__*, %struct.regmap* }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pcm186x_supply_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"failed to request supplies: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed enable supplies: %d\0A\00", align 1
@PCM186X_PAGE = common dso_local global i32 0, align 4
@PCM186X_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to write device: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed disable supplies: %d\0A\00", align 1
@soc_codec_dev_pcm1865 = common dso_local global i32 0, align 4
@pcm1865_dai = common dso_local global i32 0, align 4
@soc_codec_dev_pcm1863 = common dso_local global i32 0, align 4
@pcm1863_dai = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to register CODEC: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcm186x_probe(%struct.device* %0, i32 %1, i32 %2, %struct.regmap* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca %struct.pcm186x_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.regmap* %3, %struct.regmap** %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.pcm186x_priv* @devm_kzalloc(%struct.device* %13, i32 16, i32 %14)
  store %struct.pcm186x_priv* %15, %struct.pcm186x_priv** %10, align 8
  %16 = load %struct.pcm186x_priv*, %struct.pcm186x_priv** %10, align 8
  %17 = icmp ne %struct.pcm186x_priv* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %130

21:                                               ; preds = %4
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load %struct.pcm186x_priv*, %struct.pcm186x_priv** %10, align 8
  %24 = call i32 @dev_set_drvdata(%struct.device* %22, %struct.pcm186x_priv* %23)
  %25 = load %struct.regmap*, %struct.regmap** %9, align 8
  %26 = load %struct.pcm186x_priv*, %struct.pcm186x_priv** %10, align 8
  %27 = getelementptr inbounds %struct.pcm186x_priv, %struct.pcm186x_priv* %26, i32 0, i32 1
  store %struct.regmap* %25, %struct.regmap** %27, align 8
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %48, %21
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.pcm186x_priv*, %struct.pcm186x_priv** %10, align 8
  %31 = getelementptr inbounds %struct.pcm186x_priv, %struct.pcm186x_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %32)
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %28
  %36 = load i32*, i32** @pcm186x_supply_names, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pcm186x_priv*, %struct.pcm186x_priv** %10, align 8
  %42 = getelementptr inbounds %struct.pcm186x_priv, %struct.pcm186x_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %40, i32* %47, align 4
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %28

51:                                               ; preds = %28
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = load %struct.pcm186x_priv*, %struct.pcm186x_priv** %10, align 8
  %54 = getelementptr inbounds %struct.pcm186x_priv, %struct.pcm186x_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %55)
  %57 = load %struct.pcm186x_priv*, %struct.pcm186x_priv** %10, align 8
  %58 = getelementptr inbounds %struct.pcm186x_priv, %struct.pcm186x_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = call i32 @devm_regulator_bulk_get(%struct.device* %52, i32 %56, %struct.TYPE_5__* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %51
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %5, align 4
  br label %130

68:                                               ; preds = %51
  %69 = load %struct.pcm186x_priv*, %struct.pcm186x_priv** %10, align 8
  %70 = getelementptr inbounds %struct.pcm186x_priv, %struct.pcm186x_priv* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %71)
  %73 = load %struct.pcm186x_priv*, %struct.pcm186x_priv** %10, align 8
  %74 = getelementptr inbounds %struct.pcm186x_priv, %struct.pcm186x_priv* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = call i32 @regulator_bulk_enable(i32 %72, %struct.TYPE_5__* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %68
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @dev_err(%struct.device* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %5, align 4
  br label %130

84:                                               ; preds = %68
  %85 = load %struct.regmap*, %struct.regmap** %9, align 8
  %86 = load i32, i32* @PCM186X_PAGE, align 4
  %87 = load i32, i32* @PCM186X_RESET, align 4
  %88 = call i32 @regmap_write(%struct.regmap* %85, i32 %86, i32 %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.device*, %struct.device** %6, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @dev_err(%struct.device* %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %5, align 4
  br label %130

96:                                               ; preds = %84
  %97 = load %struct.pcm186x_priv*, %struct.pcm186x_priv** %10, align 8
  %98 = getelementptr inbounds %struct.pcm186x_priv, %struct.pcm186x_priv* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %99)
  %101 = load %struct.pcm186x_priv*, %struct.pcm186x_priv** %10, align 8
  %102 = getelementptr inbounds %struct.pcm186x_priv, %struct.pcm186x_priv* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = call i32 @regulator_bulk_disable(i32 %100, %struct.TYPE_5__* %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %96
  %108 = load %struct.device*, %struct.device** %6, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @dev_err(%struct.device* %108, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %5, align 4
  br label %130

112:                                              ; preds = %96
  %113 = load i32, i32* %7, align 4
  switch i32 %113, label %118 [
    i32 128, label %114
    i32 129, label %114
    i32 130, label %117
    i32 131, label %117
  ]

114:                                              ; preds = %112, %112
  %115 = load %struct.device*, %struct.device** %6, align 8
  %116 = call i32 @devm_snd_soc_register_component(%struct.device* %115, i32* @soc_codec_dev_pcm1865, i32* @pcm1865_dai, i32 1)
  store i32 %116, i32* %12, align 4
  br label %121

117:                                              ; preds = %112, %112
  br label %118

118:                                              ; preds = %112, %117
  %119 = load %struct.device*, %struct.device** %6, align 8
  %120 = call i32 @devm_snd_soc_register_component(%struct.device* %119, i32* @soc_codec_dev_pcm1863, i32* @pcm1863_dai, i32 1)
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %118, %114
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load %struct.device*, %struct.device** %6, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @dev_err(%struct.device* %125, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %5, align 4
  br label %130

129:                                              ; preds = %121
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %129, %124, %107, %91, %79, %63, %18
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local %struct.pcm186x_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.pcm186x_priv*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
