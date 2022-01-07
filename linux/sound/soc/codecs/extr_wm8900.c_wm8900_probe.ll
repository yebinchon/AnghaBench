; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8900.c_wm8900_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8900.c_wm8900_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@WM8900_REG_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Device is not a WM8900 - ID %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@WM8900_REG_LINVOL = common dso_local global i32 0, align 4
@WM8900_REG_RINVOL = common dso_local global i32 0, align 4
@WM8900_REG_LOUT1CTL = common dso_local global i32 0, align 4
@WM8900_REG_ROUT1CTL = common dso_local global i32 0, align 4
@WM8900_REG_LOUT2CTL = common dso_local global i32 0, align 4
@WM8900_REG_ROUT2CTL = common dso_local global i32 0, align 4
@WM8900_REG_LDAC_DV = common dso_local global i32 0, align 4
@WM8900_REG_RDAC_DV = common dso_local global i32 0, align 4
@WM8900_REG_LADC_DV = common dso_local global i32 0, align 4
@WM8900_REG_RADC_DV = common dso_local global i32 0, align 4
@WM8900_REG_OUTBIASCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8900_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8900_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %6 = load i32, i32* @WM8900_REG_ID, align 4
  %7 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 35072
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %57

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %20 = call i32 @wm8900_reset(%struct.snd_soc_component* %19)
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %22 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %23 = call i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component* %21, i32 %22)
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %25 = load i32, i32* @WM8900_REG_LINVOL, align 4
  %26 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %24, i32 %25, i32 256, i32 256)
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %28 = load i32, i32* @WM8900_REG_RINVOL, align 4
  %29 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %27, i32 %28, i32 256, i32 256)
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %31 = load i32, i32* @WM8900_REG_LOUT1CTL, align 4
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %30, i32 %31, i32 256, i32 256)
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = load i32, i32* @WM8900_REG_ROUT1CTL, align 4
  %35 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %33, i32 %34, i32 256, i32 256)
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %37 = load i32, i32* @WM8900_REG_LOUT2CTL, align 4
  %38 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %36, i32 %37, i32 256, i32 256)
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %40 = load i32, i32* @WM8900_REG_ROUT2CTL, align 4
  %41 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %39, i32 %40, i32 256, i32 256)
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %43 = load i32, i32* @WM8900_REG_LDAC_DV, align 4
  %44 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %42, i32 %43, i32 256, i32 256)
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %46 = load i32, i32* @WM8900_REG_RDAC_DV, align 4
  %47 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %45, i32 %46, i32 256, i32 256)
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %49 = load i32, i32* @WM8900_REG_LADC_DV, align 4
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %48, i32 %49, i32 256, i32 256)
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %52 = load i32, i32* @WM8900_REG_RADC_DV, align 4
  %53 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %51, i32 %52, i32 256, i32 256)
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %55 = load i32, i32* @WM8900_REG_OUTBIASCTL, align 4
  %56 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %54, i32 %55, i32 129)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %18, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @wm8900_reset(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
