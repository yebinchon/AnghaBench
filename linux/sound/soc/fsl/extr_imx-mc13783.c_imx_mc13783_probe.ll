; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-mc13783.c_imx_mc13783_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-mc13783.c_imx_mc13783_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.platform_device = type { i32 }

@imx_mc13783 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [35 x i8] c"snd_soc_register_card failed (%d)\0A\00", align 1
@MX31_AUDMUX_PORT4_SSI_PINS_4 = common dso_local global i32 0, align 4
@IMX_AUDMUX_V2_PTCR_SYN = common dso_local global i32 0, align 4
@MX31_AUDMUX_PORT1_SSI0 = common dso_local global i32 0, align 4
@IMX_AUDMUX_V2_PTCR_TFSDIR = common dso_local global i32 0, align 4
@IMX_AUDMUX_V2_PTCR_TCLKDIR = common dso_local global i32 0, align 4
@IMX_AUDMUX_V2_PTCR_RFSDIR = common dso_local global i32 0, align 4
@IMX_AUDMUX_V2_PTCR_RCLKDIR = common dso_local global i32 0, align 4
@MX27_AUDMUX_HPCR1_SSI0 = common dso_local global i32 0, align 4
@IMX_AUDMUX_V1_PCR_SYN = common dso_local global i32 0, align 4
@IMX_AUDMUX_V1_PCR_TFSDIR = common dso_local global i32 0, align 4
@IMX_AUDMUX_V1_PCR_TCLKDIR = common dso_local global i32 0, align 4
@IMX_AUDMUX_V1_PCR_RFSDIR = common dso_local global i32 0, align 4
@IMX_AUDMUX_V1_PCR_RCLKDIR = common dso_local global i32 0, align 4
@MX27_AUDMUX_HPCR3_SSI_PINS_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_mc13783_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_mc13783_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  store i32* %6, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @imx_mc13783, i32 0, i32 0), align 8
  %7 = call i32 @snd_soc_register_card(%struct.TYPE_3__* @imx_mc13783)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %90

16:                                               ; preds = %1
  %17 = call i64 (...) @machine_is_mx31_3ds()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = call i64 (...) @machine_is_mx31moboard()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %19, %16
  %23 = load i32, i32* @MX31_AUDMUX_PORT4_SSI_PINS_4, align 4
  %24 = load i32, i32* @IMX_AUDMUX_V2_PTCR_SYN, align 4
  %25 = load i32, i32* @MX31_AUDMUX_PORT1_SSI0, align 4
  %26 = call i32 @IMX_AUDMUX_V2_PDCR_RXDSEL(i32 %25)
  %27 = call i32 @IMX_AUDMUX_V2_PDCR_MODE(i32 1)
  %28 = or i32 %26, %27
  %29 = call i32 @IMX_AUDMUX_V2_PDCR_INMMASK(i32 252)
  %30 = or i32 %28, %29
  %31 = call i32 @imx_audmux_v2_configure_port(i32 %23, i32 %24, i32 %30)
  %32 = load i32, i32* @MX31_AUDMUX_PORT1_SSI0, align 4
  %33 = load i32, i32* @IMX_AUDMUX_V2_PTCR_SYN, align 4
  %34 = load i32, i32* @IMX_AUDMUX_V2_PTCR_TFSDIR, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @MX31_AUDMUX_PORT4_SSI_PINS_4, align 4
  %37 = call i32 @IMX_AUDMUX_V2_PTCR_TFSEL(i32 %36)
  %38 = or i32 %35, %37
  %39 = load i32, i32* @IMX_AUDMUX_V2_PTCR_TCLKDIR, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @MX31_AUDMUX_PORT4_SSI_PINS_4, align 4
  %42 = call i32 @IMX_AUDMUX_V2_PTCR_TCSEL(i32 %41)
  %43 = or i32 %40, %42
  %44 = load i32, i32* @IMX_AUDMUX_V2_PTCR_RFSDIR, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @MX31_AUDMUX_PORT4_SSI_PINS_4, align 4
  %47 = call i32 @IMX_AUDMUX_V2_PTCR_RFSEL(i32 %46)
  %48 = or i32 %45, %47
  %49 = load i32, i32* @IMX_AUDMUX_V2_PTCR_RCLKDIR, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MX31_AUDMUX_PORT4_SSI_PINS_4, align 4
  %52 = call i32 @IMX_AUDMUX_V2_PTCR_RCSEL(i32 %51)
  %53 = or i32 %50, %52
  %54 = load i32, i32* @MX31_AUDMUX_PORT4_SSI_PINS_4, align 4
  %55 = call i32 @IMX_AUDMUX_V2_PDCR_RXDSEL(i32 %54)
  %56 = call i32 @imx_audmux_v2_configure_port(i32 %32, i32 %53, i32 %55)
  br label %88

57:                                               ; preds = %19
  %58 = call i64 (...) @machine_is_mx27_3ds()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %57
  %61 = load i32, i32* @MX27_AUDMUX_HPCR1_SSI0, align 4
  %62 = load i32, i32* @IMX_AUDMUX_V1_PCR_SYN, align 4
  %63 = load i32, i32* @IMX_AUDMUX_V1_PCR_TFSDIR, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @IMX_AUDMUX_V1_PCR_TCLKDIR, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @IMX_AUDMUX_V1_PCR_RFSDIR, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @IMX_AUDMUX_V1_PCR_RCLKDIR, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @MX27_AUDMUX_HPCR3_SSI_PINS_4, align 4
  %72 = call i32 @IMX_AUDMUX_V1_PCR_TFCSEL(i32 %71)
  %73 = or i32 %70, %72
  %74 = load i32, i32* @MX27_AUDMUX_HPCR3_SSI_PINS_4, align 4
  %75 = call i32 @IMX_AUDMUX_V1_PCR_RFCSEL(i32 %74)
  %76 = or i32 %73, %75
  %77 = load i32, i32* @MX27_AUDMUX_HPCR3_SSI_PINS_4, align 4
  %78 = call i32 @IMX_AUDMUX_V1_PCR_RXDSEL(i32 %77)
  %79 = or i32 %76, %78
  %80 = call i32 @imx_audmux_v1_configure_port(i32 %61, i32 %79)
  %81 = load i32, i32* @MX27_AUDMUX_HPCR3_SSI_PINS_4, align 4
  %82 = load i32, i32* @IMX_AUDMUX_V1_PCR_SYN, align 4
  %83 = load i32, i32* @MX27_AUDMUX_HPCR1_SSI0, align 4
  %84 = call i32 @IMX_AUDMUX_V1_PCR_RXDSEL(i32 %83)
  %85 = or i32 %82, %84
  %86 = call i32 @imx_audmux_v1_configure_port(i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %60, %57
  br label %88

88:                                               ; preds = %87, %22
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %10
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @snd_soc_register_card(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @machine_is_mx31_3ds(...) #1

declare dso_local i64 @machine_is_mx31moboard(...) #1

declare dso_local i32 @imx_audmux_v2_configure_port(i32, i32, i32) #1

declare dso_local i32 @IMX_AUDMUX_V2_PDCR_RXDSEL(i32) #1

declare dso_local i32 @IMX_AUDMUX_V2_PDCR_MODE(i32) #1

declare dso_local i32 @IMX_AUDMUX_V2_PDCR_INMMASK(i32) #1

declare dso_local i32 @IMX_AUDMUX_V2_PTCR_TFSEL(i32) #1

declare dso_local i32 @IMX_AUDMUX_V2_PTCR_TCSEL(i32) #1

declare dso_local i32 @IMX_AUDMUX_V2_PTCR_RFSEL(i32) #1

declare dso_local i32 @IMX_AUDMUX_V2_PTCR_RCSEL(i32) #1

declare dso_local i64 @machine_is_mx27_3ds(...) #1

declare dso_local i32 @imx_audmux_v1_configure_port(i32, i32) #1

declare dso_local i32 @IMX_AUDMUX_V1_PCR_TFCSEL(i32) #1

declare dso_local i32 @IMX_AUDMUX_V1_PCR_RFCSEL(i32) #1

declare dso_local i32 @IMX_AUDMUX_V1_PCR_RXDSEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
