; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_mx27vis-aic32x4.c_mx27vis_aic32x4_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_mx27vis-aic32x4.c_mx27vis_aic32x4_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.snd_mx27vis_platform_data* }
%struct.snd_mx27vis_platform_data = type { i32, i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_5__ }

@.str = private unnamed_addr constant [27 x i8] c"No platform data supplied\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mx27vis_amp_gain0_gpio = common dso_local global i32 0, align 4
@mx27vis_amp_gain1_gpio = common dso_local global i32 0, align 4
@mx27vis_amp_mutel_gpio = common dso_local global i32 0, align 4
@mx27vis_amp_muter_gpio = common dso_local global i32 0, align 4
@mx27vis_aic32x4 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"snd_soc_register_card failed (%d)\0A\00", align 1
@MX27_AUDMUX_HPCR1_SSI0 = common dso_local global i32 0, align 4
@IMX_AUDMUX_V1_PCR_SYN = common dso_local global i32 0, align 4
@IMX_AUDMUX_V1_PCR_TFSDIR = common dso_local global i32 0, align 4
@IMX_AUDMUX_V1_PCR_TCLKDIR = common dso_local global i32 0, align 4
@MX27_AUDMUX_PPCR1_SSI_PINS_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mx27vis_aic32x4_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx27vis_aic32x4_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_mx27vis_platform_data*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.snd_mx27vis_platform_data*, %struct.snd_mx27vis_platform_data** %8, align 8
  store %struct.snd_mx27vis_platform_data* %9, %struct.snd_mx27vis_platform_data** %4, align 8
  %10 = load %struct.snd_mx27vis_platform_data*, %struct.snd_mx27vis_platform_data** %4, align 8
  %11 = icmp ne %struct.snd_mx27vis_platform_data* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %63

18:                                               ; preds = %1
  %19 = load %struct.snd_mx27vis_platform_data*, %struct.snd_mx27vis_platform_data** %4, align 8
  %20 = getelementptr inbounds %struct.snd_mx27vis_platform_data, %struct.snd_mx27vis_platform_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* @mx27vis_amp_gain0_gpio, align 4
  %22 = load %struct.snd_mx27vis_platform_data*, %struct.snd_mx27vis_platform_data** %4, align 8
  %23 = getelementptr inbounds %struct.snd_mx27vis_platform_data, %struct.snd_mx27vis_platform_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* @mx27vis_amp_gain1_gpio, align 4
  %25 = load %struct.snd_mx27vis_platform_data*, %struct.snd_mx27vis_platform_data** %4, align 8
  %26 = getelementptr inbounds %struct.snd_mx27vis_platform_data, %struct.snd_mx27vis_platform_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* @mx27vis_amp_mutel_gpio, align 4
  %28 = load %struct.snd_mx27vis_platform_data*, %struct.snd_mx27vis_platform_data** %4, align 8
  %29 = getelementptr inbounds %struct.snd_mx27vis_platform_data, %struct.snd_mx27vis_platform_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* @mx27vis_amp_muter_gpio, align 4
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mx27vis_aic32x4, i32 0, i32 0), align 8
  %33 = call i32 @snd_soc_register_card(%struct.TYPE_4__* @mx27vis_aic32x4)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %18
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %63

42:                                               ; preds = %18
  %43 = load i32, i32* @MX27_AUDMUX_HPCR1_SSI0, align 4
  %44 = load i32, i32* @IMX_AUDMUX_V1_PCR_SYN, align 4
  %45 = load i32, i32* @IMX_AUDMUX_V1_PCR_TFSDIR, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @IMX_AUDMUX_V1_PCR_TCLKDIR, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MX27_AUDMUX_PPCR1_SSI_PINS_1, align 4
  %50 = call i32 @IMX_AUDMUX_V1_PCR_TFCSEL(i32 %49)
  %51 = or i32 %48, %50
  %52 = load i32, i32* @MX27_AUDMUX_PPCR1_SSI_PINS_1, align 4
  %53 = call i32 @IMX_AUDMUX_V1_PCR_RXDSEL(i32 %52)
  %54 = or i32 %51, %53
  %55 = call i32 @imx_audmux_v1_configure_port(i32 %43, i32 %54)
  %56 = load i32, i32* @MX27_AUDMUX_PPCR1_SSI_PINS_1, align 4
  %57 = load i32, i32* @IMX_AUDMUX_V1_PCR_SYN, align 4
  %58 = load i32, i32* @MX27_AUDMUX_HPCR1_SSI0, align 4
  %59 = call i32 @IMX_AUDMUX_V1_PCR_RXDSEL(i32 %58)
  %60 = or i32 %57, %59
  %61 = call i32 @imx_audmux_v1_configure_port(i32 %56, i32 %60)
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %42, %36, %12
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @snd_soc_register_card(%struct.TYPE_4__*) #1

declare dso_local i32 @imx_audmux_v1_configure_port(i32, i32) #1

declare dso_local i32 @IMX_AUDMUX_V1_PCR_TFCSEL(i32) #1

declare dso_local i32 @IMX_AUDMUX_V1_PCR_RXDSEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
