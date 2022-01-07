; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_bd28623.c_bd28623_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_bd28623.c_bd28623_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.bd28623_priv = type { %struct.device*, i8*, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bd28623_supply_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Failed to get supplies: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to request reset_gpio: %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to request mute_gpio: %ld\0A\00", align 1
@soc_codec_bd = common dso_local global i32 0, align 4
@soc_dai_bd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bd28623_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd28623_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bd28623_priv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.bd28623_priv* @devm_kzalloc(%struct.device* %11, i32 32, i32 %12)
  store %struct.bd28623_priv* %13, %struct.bd28623_priv** %4, align 8
  %14 = load %struct.bd28623_priv*, %struct.bd28623_priv** %4, align 8
  %15 = icmp ne %struct.bd28623_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %113

19:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %40, %19
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.bd28623_priv*, %struct.bd28623_priv** %4, align 8
  %23 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %24)
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %20
  %28 = load i32*, i32** @bd28623_supply_names, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bd28623_priv*, %struct.bd28623_priv** %4, align 8
  %34 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %32, i32* %39, align 4
  br label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %20

43:                                               ; preds = %20
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load %struct.bd28623_priv*, %struct.bd28623_priv** %4, align 8
  %46 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %45, i32 0, i32 3
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %47)
  %49 = load %struct.bd28623_priv*, %struct.bd28623_priv** %4, align 8
  %50 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %49, i32 0, i32 3
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = call i32 @devm_regulator_bulk_get(%struct.device* %44, i32 %48, %struct.TYPE_3__* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %43
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %113

60:                                               ; preds = %43
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %63 = call i8* @devm_gpiod_get_optional(%struct.device* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.bd28623_priv*, %struct.bd28623_priv** %4, align 8
  %65 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load %struct.bd28623_priv*, %struct.bd28623_priv** %4, align 8
  %67 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @IS_ERR(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %60
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = load %struct.bd28623_priv*, %struct.bd28623_priv** %4, align 8
  %74 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @PTR_ERR(i8* %75)
  %77 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load %struct.bd28623_priv*, %struct.bd28623_priv** %4, align 8
  %79 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @PTR_ERR(i8* %80)
  store i32 %81, i32* %2, align 4
  br label %113

82:                                               ; preds = %60
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %85 = call i8* @devm_gpiod_get_optional(%struct.device* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load %struct.bd28623_priv*, %struct.bd28623_priv** %4, align 8
  %87 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load %struct.bd28623_priv*, %struct.bd28623_priv** %4, align 8
  %89 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @IS_ERR(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %82
  %94 = load %struct.device*, %struct.device** %5, align 8
  %95 = load %struct.bd28623_priv*, %struct.bd28623_priv** %4, align 8
  %96 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @PTR_ERR(i8* %97)
  %99 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = load %struct.bd28623_priv*, %struct.bd28623_priv** %4, align 8
  %101 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @PTR_ERR(i8* %102)
  store i32 %103, i32* %2, align 4
  br label %113

104:                                              ; preds = %82
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = load %struct.bd28623_priv*, %struct.bd28623_priv** %4, align 8
  %107 = call i32 @platform_set_drvdata(%struct.platform_device* %105, %struct.bd28623_priv* %106)
  %108 = load %struct.device*, %struct.device** %5, align 8
  %109 = load %struct.bd28623_priv*, %struct.bd28623_priv** %4, align 8
  %110 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %109, i32 0, i32 0
  store %struct.device* %108, %struct.device** %110, align 8
  %111 = load %struct.device*, %struct.device** %5, align 8
  %112 = call i32 @devm_snd_soc_register_component(%struct.device* %111, i32* @soc_codec_bd, i32* @soc_dai_bd, i32 1)
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %104, %93, %71, %55, %16
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.bd28623_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bd28623_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
