; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-pcm-fiq.c_imx_pcm_fiq_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-pcm-fiq.c_imx_pcm_fiq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.imx_pcm_fiq_params = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@fh = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to claim fiq: %d\00", align 1
@ssi_irq = common dso_local global i32 0, align 4
@imx_pcm_fiq = common dso_local global i32 0, align 4
@imx_ssi_fiq_base = common dso_local global i64 0, align 8
@imx_soc_component_fiq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_pcm_fiq_init(%struct.platform_device* %0, %struct.imx_pcm_fiq_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.imx_pcm_fiq_params*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.imx_pcm_fiq_params* %1, %struct.imx_pcm_fiq_params** %5, align 8
  %7 = call i32 @claim_fiq(i32* @fh)
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.imx_pcm_fiq_params*, %struct.imx_pcm_fiq_params** %5, align 8
  %18 = getelementptr inbounds %struct.imx_pcm_fiq_params, %struct.imx_pcm_fiq_params* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @mxc_set_irq_fiq(i32 %19, i32 1)
  %21 = load %struct.imx_pcm_fiq_params*, %struct.imx_pcm_fiq_params** %5, align 8
  %22 = getelementptr inbounds %struct.imx_pcm_fiq_params, %struct.imx_pcm_fiq_params* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* @ssi_irq, align 4
  %24 = load %struct.imx_pcm_fiq_params*, %struct.imx_pcm_fiq_params** %5, align 8
  %25 = getelementptr inbounds %struct.imx_pcm_fiq_params, %struct.imx_pcm_fiq_params* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* @imx_pcm_fiq, align 4
  %27 = load %struct.imx_pcm_fiq_params*, %struct.imx_pcm_fiq_params** %5, align 8
  %28 = getelementptr inbounds %struct.imx_pcm_fiq_params, %struct.imx_pcm_fiq_params* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* @imx_ssi_fiq_base, align 8
  %30 = load %struct.imx_pcm_fiq_params*, %struct.imx_pcm_fiq_params** %5, align 8
  %31 = getelementptr inbounds %struct.imx_pcm_fiq_params, %struct.imx_pcm_fiq_params* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 4, i32* %33, align 4
  %34 = load %struct.imx_pcm_fiq_params*, %struct.imx_pcm_fiq_params** %5, align 8
  %35 = getelementptr inbounds %struct.imx_pcm_fiq_params, %struct.imx_pcm_fiq_params* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 6, i32* %37, align 4
  %38 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @devm_snd_soc_register_component(i32* %39, i32* @imx_soc_component_fiq, i32* null, i32 0)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %16
  br label %45

44:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %50

45:                                               ; preds = %43
  %46 = load i32, i32* @ssi_irq, align 4
  %47 = call i32 @mxc_set_irq_fiq(i32 %46, i32 0)
  %48 = call i32 @release_fiq(i32* @fh)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %44, %10
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @claim_fiq(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mxc_set_irq_fiq(i32, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

declare dso_local i32 @release_fiq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
