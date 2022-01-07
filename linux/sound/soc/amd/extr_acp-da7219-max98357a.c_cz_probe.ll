; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-da7219-max98357a.c_cz_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-da7219-max98357a.c_cz_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_card = type { i32, i32* }
%struct.platform_device = type { i32 }
%struct.acp_platform_info = type { i32 }
%struct.regulator_dev = type { i32 }

@acp_da7219_cfg = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@acp_da7219_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to register regulator: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cz_card = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"devm_snd_soc_register_card(%s) failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"bt-pad-enable\00", align 1
@bt_uart_enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cz_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cz_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.acp_platform_info*, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store i32* %9, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acp_da7219_cfg, i32 0, i32 0), align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.regulator_dev* @devm_regulator_register(i32* %11, i32* @acp_da7219_desc, %struct.TYPE_3__* @acp_da7219_cfg)
  store %struct.regulator_dev* %12, %struct.regulator_dev** %7, align 8
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %14 = call i64 @IS_ERR(%struct.regulator_dev* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %20 = call i64 @PTR_ERR(%struct.regulator_dev* %19)
  %21 = trunc i64 %20 to i32
  %22 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %63

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.acp_platform_info* @devm_kzalloc(i32* %27, i32 4, i32 %28)
  store %struct.acp_platform_info* %29, %struct.acp_platform_info** %6, align 8
  %30 = load %struct.acp_platform_info*, %struct.acp_platform_info** %6, align 8
  %31 = icmp ne %struct.acp_platform_info* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %63

35:                                               ; preds = %25
  store %struct.snd_soc_card* @cz_card, %struct.snd_soc_card** %5, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  store i32* %37, i32** getelementptr inbounds (%struct.snd_soc_card, %struct.snd_soc_card* @cz_card, i32 0, i32 1), align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %40 = call i32 @platform_set_drvdata(%struct.platform_device* %38, %struct.snd_soc_card* %39)
  %41 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %42 = load %struct.acp_platform_info*, %struct.acp_platform_info** %6, align 8
  %43 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %41, %struct.acp_platform_info* %42)
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @devm_snd_soc_register_card(i32* %45, %struct.snd_soc_card* @cz_card)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %35
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load i32, i32* getelementptr inbounds (%struct.snd_soc_card, %struct.snd_soc_card* @cz_card, i32 0, i32 0), align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %63

56:                                               ; preds = %35
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @device_property_read_bool(i32* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  store i32 %62, i32* @bt_uart_enable, align 4
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %56, %49, %32, %16
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.regulator_dev* @devm_regulator_register(i32*, i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i64 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local %struct.acp_platform_info* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.snd_soc_card*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.acp_platform_info*) #1

declare dso_local i32 @devm_snd_soc_register_card(i32*, %struct.snd_soc_card*) #1

declare dso_local i32 @device_property_read_bool(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
