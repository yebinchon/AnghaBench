; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm3060.c_pcm3060_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm3060.c_pcm3060_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.pcm3060_priv = type { i32, i64 }

@PCM3060_REG64 = common dso_local global i32 0, align 4
@PCM3060_REG_MRST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to reset component, rc=%d\0A\00", align 1
@PCM3060_REG_SE = common dso_local global i32 0, align 4
@pcm3060_soc_comp_driver = common dso_local global i32 0, align 4
@pcm3060_dai = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to register component, rc=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcm3060_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcm3060_priv*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.pcm3060_priv* @dev_get_drvdata(%struct.device* %6)
  store %struct.pcm3060_priv* %7, %struct.pcm3060_priv** %5, align 8
  %8 = load %struct.pcm3060_priv*, %struct.pcm3060_priv** %5, align 8
  %9 = getelementptr inbounds %struct.pcm3060_priv, %struct.pcm3060_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PCM3060_REG64, align 4
  %12 = load i32, i32* @PCM3060_REG_MRST, align 4
  %13 = call i32 @regmap_update_bits(i32 %10, i32 %11, i32 %12, i32 0)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %59

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.pcm3060_priv*, %struct.pcm3060_priv** %5, align 8
  %31 = call i32 @pcm3060_parse_dt(i64 %29, %struct.pcm3060_priv* %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.pcm3060_priv*, %struct.pcm3060_priv** %5, align 8
  %34 = getelementptr inbounds %struct.pcm3060_priv, %struct.pcm3060_priv* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.pcm3060_priv*, %struct.pcm3060_priv** %5, align 8
  %39 = getelementptr inbounds %struct.pcm3060_priv, %struct.pcm3060_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PCM3060_REG64, align 4
  %42 = load i32, i32* @PCM3060_REG_SE, align 4
  %43 = load i32, i32* @PCM3060_REG_SE, align 4
  %44 = call i32 @regmap_update_bits(i32 %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %37, %32
  %46 = load %struct.device*, %struct.device** %3, align 8
  %47 = load i32, i32* @pcm3060_dai, align 4
  %48 = load i32, i32* @pcm3060_dai, align 4
  %49 = call i32 @ARRAY_SIZE(i32 %48)
  %50 = call i32 @devm_snd_soc_register_component(%struct.device* %46, i32* @pcm3060_soc_comp_driver, i32 %47, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct.device*, %struct.device** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %53, %16
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.pcm3060_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @pcm3060_parse_dt(i64, %struct.pcm3060_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
