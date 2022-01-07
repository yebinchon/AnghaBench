; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda1334.c_uda1334_codec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda1334.c_uda1334_codec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.uda1334_priv = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"nxp,mute\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to get mute line: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"nxp,deemph\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to get deemph line: %d\0A\00", align 1
@soc_component_dev_uda1334 = common dso_local global i32 0, align 4
@uda1334_dai = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to register component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uda1334_codec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uda1334_codec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.uda1334_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.uda1334_priv* @devm_kzalloc(i32* %7, i32 16, i32 %8)
  store %struct.uda1334_priv* %9, %struct.uda1334_priv** %4, align 8
  %10 = load %struct.uda1334_priv*, %struct.uda1334_priv** %4, align 8
  %11 = icmp ne %struct.uda1334_priv* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %75

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load %struct.uda1334_priv*, %struct.uda1334_priv** %4, align 8
  %18 = call i32 @platform_set_drvdata(%struct.platform_device* %16, %struct.uda1334_priv* %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %22 = call i8* @devm_gpiod_get(i32* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.uda1334_priv*, %struct.uda1334_priv** %4, align 8
  %24 = getelementptr inbounds %struct.uda1334_priv, %struct.uda1334_priv* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.uda1334_priv*, %struct.uda1334_priv** %4, align 8
  %26 = getelementptr inbounds %struct.uda1334_priv, %struct.uda1334_priv* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @IS_ERR(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %15
  %31 = load %struct.uda1334_priv*, %struct.uda1334_priv** %4, align 8
  %32 = getelementptr inbounds %struct.uda1334_priv, %struct.uda1334_priv* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @PTR_ERR(i8* %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %75

40:                                               ; preds = %15
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %44 = call i8* @devm_gpiod_get(i32* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load %struct.uda1334_priv*, %struct.uda1334_priv** %4, align 8
  %46 = getelementptr inbounds %struct.uda1334_priv, %struct.uda1334_priv* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %struct.uda1334_priv*, %struct.uda1334_priv** %4, align 8
  %48 = getelementptr inbounds %struct.uda1334_priv, %struct.uda1334_priv* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @IS_ERR(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %40
  %53 = load %struct.uda1334_priv*, %struct.uda1334_priv** %4, align 8
  %54 = getelementptr inbounds %struct.uda1334_priv, %struct.uda1334_priv* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @PTR_ERR(i8* %55)
  store i32 %56, i32* %5, align 4
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %75

62:                                               ; preds = %40
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 @devm_snd_soc_register_component(i32* %64, i32* @soc_component_dev_uda1334, i32* @uda1334_dai, i32 1)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %68, %62
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %52, %30, %12
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.uda1334_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uda1334_priv*) #1

declare dso_local i8* @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
