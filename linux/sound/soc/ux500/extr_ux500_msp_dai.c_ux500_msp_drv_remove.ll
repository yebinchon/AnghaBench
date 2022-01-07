; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_msp_dai.c_ux500_msp_drv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_msp_dai.c_ux500_msp_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ux500_msp_i2s_drvdata = type { i32 }

@PRCMU_QOS_APE_OPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ux500_msp_i2s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ux500_msp_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ux500_msp_drv_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ux500_msp_i2s_drvdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = call %struct.ux500_msp_i2s_drvdata* @dev_get_drvdata(i32* %5)
  store %struct.ux500_msp_i2s_drvdata* %6, %struct.ux500_msp_i2s_drvdata** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call i32 @ux500_pcm_unregister_platform(%struct.platform_device* %7)
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call i32 @snd_soc_unregister_component(i32* %10)
  %12 = load i32, i32* @PRCMU_QOS_APE_OPP, align 4
  %13 = call i32 @prcmu_qos_remove_requirement(i32 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = load %struct.ux500_msp_i2s_drvdata*, %struct.ux500_msp_i2s_drvdata** %3, align 8
  %16 = getelementptr inbounds %struct.ux500_msp_i2s_drvdata, %struct.ux500_msp_i2s_drvdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ux500_msp_i2s_cleanup_msp(%struct.platform_device* %14, i32 %17)
  ret i32 0
}

declare dso_local %struct.ux500_msp_i2s_drvdata* @dev_get_drvdata(i32*) #1

declare dso_local i32 @ux500_pcm_unregister_platform(%struct.platform_device*) #1

declare dso_local i32 @snd_soc_unregister_component(i32*) #1

declare dso_local i32 @prcmu_qos_remove_requirement(i32, i8*) #1

declare dso_local i32 @ux500_msp_i2s_cleanup_msp(%struct.platform_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
