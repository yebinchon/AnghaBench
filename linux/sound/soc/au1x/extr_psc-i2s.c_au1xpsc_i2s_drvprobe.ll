; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_drvprobe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_drvprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.au1xpsc_audio_data = type { i32, %struct.TYPE_3__, i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_DMA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@PSC_SEL_CLK_MASK = common dso_local global i64 0, align 8
@PSC_CTRL_DISABLE = common dso_local global i64 0, align 8
@PSC_SEL_PS_I2SMODE = common dso_local global i64 0, align 8
@PSC_I2SCFG_RT_FIFO8 = common dso_local global i32 0, align 4
@PSC_I2SCFG_TT_FIFO8 = common dso_local global i32 0, align 4
@au1xpsc_i2s_dai_template = common dso_local global i32 0, align 4
@au1xpsc_i2s_component = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @au1xpsc_i2s_drvprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xpsc_i2s_drvprobe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.au1xpsc_audio_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.au1xpsc_audio_data* @devm_kzalloc(i32* %8, i32 24, i32 %9)
  store %struct.au1xpsc_audio_data* %10, %struct.au1xpsc_audio_data** %6, align 8
  %11 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %6, align 8
  %12 = icmp ne %struct.au1xpsc_audio_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %110

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %17, i32 0)
  %19 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %6, align 8
  %20 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %6, align 8
  %22 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @IS_ERR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %6, align 8
  %28 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @PTR_ERR(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %110

31:                                               ; preds = %16
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load i32, i32* @IORESOURCE_DMA, align 4
  %34 = call %struct.resource* @platform_get_resource(%struct.platform_device* %32, i32 %33, i32 0)
  store %struct.resource* %34, %struct.resource** %4, align 8
  %35 = load %struct.resource*, %struct.resource** %4, align 8
  %36 = icmp ne %struct.resource* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %110

40:                                               ; preds = %31
  %41 = load %struct.resource*, %struct.resource** %4, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %6, align 8
  %45 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %43, i32* %48, align 4
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load i32, i32* @IORESOURCE_DMA, align 4
  %51 = call %struct.resource* @platform_get_resource(%struct.platform_device* %49, i32 %50, i32 1)
  store %struct.resource* %51, %struct.resource** %4, align 8
  %52 = load %struct.resource*, %struct.resource** %4, align 8
  %53 = icmp ne %struct.resource* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %40
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %110

57:                                               ; preds = %40
  %58 = load %struct.resource*, %struct.resource** %4, align 8
  %59 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %6, align 8
  %62 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 %60, i32* %65, align 4
  %66 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %6, align 8
  %67 = call i32 @PSC_SEL(%struct.au1xpsc_audio_data* %66)
  %68 = call i64 @__raw_readl(i32 %67)
  %69 = load i64, i64* @PSC_SEL_CLK_MASK, align 8
  %70 = and i64 %68, %69
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* @PSC_CTRL_DISABLE, align 8
  %72 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %6, align 8
  %73 = call i32 @PSC_CTRL(%struct.au1xpsc_audio_data* %72)
  %74 = call i32 @__raw_writel(i64 %71, i32 %73)
  %75 = call i32 (...) @wmb()
  %76 = load i64, i64* @PSC_SEL_PS_I2SMODE, align 8
  %77 = load i64, i64* %5, align 8
  %78 = or i64 %76, %77
  %79 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %6, align 8
  %80 = call i32 @PSC_SEL(%struct.au1xpsc_audio_data* %79)
  %81 = call i32 @__raw_writel(i64 %78, i32 %80)
  %82 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %6, align 8
  %83 = call i32 @I2S_CFG(%struct.au1xpsc_audio_data* %82)
  %84 = call i32 @__raw_writel(i64 0, i32 %83)
  %85 = call i32 (...) @wmb()
  %86 = load i32, i32* @PSC_I2SCFG_RT_FIFO8, align 4
  %87 = load i32, i32* @PSC_I2SCFG_TT_FIFO8, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %6, align 8
  %90 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %6, align 8
  %94 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %93, i32 0, i32 1
  %95 = call i32 @memcpy(%struct.TYPE_3__* %94, i32* @au1xpsc_i2s_dai_template, i32 4)
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 @dev_name(i32* %97)
  %99 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %6, align 8
  %100 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 4
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %6, align 8
  %104 = call i32 @platform_set_drvdata(%struct.platform_device* %102, %struct.au1xpsc_audio_data* %103)
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %6, align 8
  %108 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %107, i32 0, i32 1
  %109 = call i32 @devm_snd_soc_register_component(i32* %106, i32* @au1xpsc_i2s_component, %struct.TYPE_3__* %108, i32 1)
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %57, %54, %37, %26, %13
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.au1xpsc_audio_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @PSC_SEL(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i32 @PSC_CTRL(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @I2S_CFG(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.au1xpsc_audio_data*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
