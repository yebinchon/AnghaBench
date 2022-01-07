; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-ssi.c_imx_ssi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-ssi.c_imx_ssi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.imx_ssi = type { i32, i32, i32 }

@IMX_SSI_USE_AC97 = common dso_local global i32 0, align 4
@ac97_ssi = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_ssi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ssi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.imx_ssi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.imx_ssi* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.imx_ssi* %5, %struct.imx_ssi** %3, align 8
  %6 = load %struct.imx_ssi*, %struct.imx_ssi** %3, align 8
  %7 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = call i32 @imx_pcm_fiq_exit(%struct.platform_device* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @snd_soc_unregister_component(i32* %15)
  %17 = load %struct.imx_ssi*, %struct.imx_ssi** %3, align 8
  %18 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IMX_SSI_USE_AC97, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store i32* null, i32** @ac97_ssi, align 8
  br label %24

24:                                               ; preds = %23, %13
  %25 = load %struct.imx_ssi*, %struct.imx_ssi** %3, align 8
  %26 = getelementptr inbounds %struct.imx_ssi, %struct.imx_ssi* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_disable_unprepare(i32 %27)
  %29 = call i32 @snd_soc_set_ac97_ops(i32* null)
  ret i32 0
}

declare dso_local %struct.imx_ssi* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @imx_pcm_fiq_exit(%struct.platform_device*) #1

declare dso_local i32 @snd_soc_unregister_component(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @snd_soc_set_ac97_ops(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
