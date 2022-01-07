; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c24xx_simtec.c_simtec_audio_core_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c24xx_simtec.c_simtec_audio_core_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.snd_soc_card = type { %struct.TYPE_7__, %struct.TYPE_6__* }

@simtec_snd_ops = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_I2S = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_NF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBM_CFM = common dso_local global i32 0, align 4
@pdata = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no platform data supplied\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"xtal\00", align 1
@xtal_clk = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"could not get clkout0\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"xtal rate is %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"soc-audio\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"failed to alloc soc-audio devicec\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to add soc-audio dev\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @simtec_audio_core_probe(%struct.platform_device* %0, %struct.snd_soc_card* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.snd_soc_card* %1, %struct.snd_soc_card** %5, align 8
  %8 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %9 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32* @simtec_snd_ops, i32** %11, align 8
  %12 = load i32, i32* @SND_SOC_DAIFMT_I2S, align 4
  %13 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SND_SOC_DAIFMT_CBM_CFM, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %18 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* @pdata, align 4
  %25 = load i32, i32* @pdata, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %2
  %28 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @dev_err(%struct.TYPE_7__* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %103

33:                                               ; preds = %2
  %34 = load i32, i32* @pdata, align 4
  %35 = call i32 @simtec_call_startup(i32 %34)
  %36 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @clk_get(%struct.TYPE_7__* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* @xtal_clk, align 4
  %39 = load i32, i32* @xtal_clk, align 4
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @dev_err(%struct.TYPE_7__* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %103

48:                                               ; preds = %33
  %49 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load i32, i32* @xtal_clk, align 4
  %52 = call i32 @clk_get_rate(i32 %51)
  %53 = call i32 @dev_info(%struct.TYPE_7__* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load i32, i32* @pdata, align 4
  %57 = call i32 @attach_gpio_amp(%struct.TYPE_7__* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %99

61:                                               ; preds = %48
  %62 = call %struct.snd_soc_card* @platform_device_alloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 -1)
  %63 = bitcast %struct.snd_soc_card* %62 to %struct.platform_device*
  store %struct.platform_device* %63, %struct.platform_device** %6, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %65 = icmp ne %struct.platform_device* %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @dev_err(%struct.TYPE_7__* %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %96

72:                                               ; preds = %61
  %73 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %74 = bitcast %struct.platform_device* %73 to %struct.snd_soc_card*
  %75 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %76 = call i32 @platform_set_drvdata(%struct.snd_soc_card* %74, %struct.snd_soc_card* %75)
  %77 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %78 = bitcast %struct.platform_device* %77 to %struct.snd_soc_card*
  %79 = call i32 @platform_device_add(%struct.snd_soc_card* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 @dev_err(%struct.TYPE_7__* %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %92

86:                                               ; preds = %72
  %87 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %88 = bitcast %struct.platform_device* %87 to %struct.snd_soc_card*
  %89 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %90 = bitcast %struct.platform_device* %89 to %struct.snd_soc_card*
  %91 = call i32 @platform_set_drvdata(%struct.snd_soc_card* %88, %struct.snd_soc_card* %90)
  store i32 0, i32* %3, align 4
  br label %103

92:                                               ; preds = %82
  %93 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %94 = bitcast %struct.platform_device* %93 to %struct.snd_soc_card*
  %95 = call i32 @platform_device_put(%struct.snd_soc_card* %94)
  br label %96

96:                                               ; preds = %92, %66
  %97 = load i32, i32* @pdata, align 4
  %98 = call i32 @detach_gpio_amp(i32 %97)
  br label %99

99:                                               ; preds = %96, %60
  %100 = load i32, i32* @xtal_clk, align 4
  %101 = call i32 @clk_put(i32 %100)
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %99, %86, %42, %27
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @simtec_call_startup(i32) #1

declare dso_local i32 @clk_get(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @attach_gpio_amp(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.snd_soc_card* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.snd_soc_card*, %struct.snd_soc_card*) #1

declare dso_local i32 @platform_device_add(%struct.snd_soc_card*) #1

declare dso_local i32 @platform_device_put(%struct.snd_soc_card*) #1

declare dso_local i32 @detach_gpio_amp(i32) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
