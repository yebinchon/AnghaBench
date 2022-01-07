; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_psc-ac97.c_au1xpsc_ac97_drvprobe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_psc-ac97.c_au1xpsc_ac97_drvprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xpsc_audio_data = type { i32, %struct.TYPE_3__, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_DMA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@PSC_AC97CFG_RT_FIFO8 = common dso_local global i32 0, align 4
@PSC_AC97CFG_TT_FIFO8 = common dso_local global i32 0, align 4
@PSC_AC97CFG_DE_ENABLE = common dso_local global i32 0, align 4
@PSC_SEL_CLK_MASK = common dso_local global i64 0, align 8
@PSC_CTRL_DISABLE = common dso_local global i64 0, align 8
@PSC_SEL_PS_AC97MODE = common dso_local global i64 0, align 8
@au1xpsc_ac97_dai_template = common dso_local global i32 0, align 4
@psc_ac97_ops = common dso_local global i32 0, align 4
@au1xpsc_ac97_component = common dso_local global i32 0, align 4
@au1xpsc_ac97_workdata = common dso_local global %struct.au1xpsc_audio_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @au1xpsc_ac97_drvprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xpsc_ac97_drvprobe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.au1xpsc_audio_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.au1xpsc_audio_data* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  store %struct.au1xpsc_audio_data* %11, %struct.au1xpsc_audio_data** %7, align 8
  %12 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %13 = icmp ne %struct.au1xpsc_audio_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %127

17:                                               ; preds = %1
  %18 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %19 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %18, i32 0, i32 4
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %21, i32 0)
  %23 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %24 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %26 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %32 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %127

35:                                               ; preds = %17
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load i32, i32* @IORESOURCE_DMA, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %5, align 8
  %39 = load %struct.resource*, %struct.resource** %5, align 8
  %40 = icmp ne %struct.resource* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %127

44:                                               ; preds = %35
  %45 = load %struct.resource*, %struct.resource** %5, align 8
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %49 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %47, i32* %52, align 4
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = load i32, i32* @IORESOURCE_DMA, align 4
  %55 = call %struct.resource* @platform_get_resource(%struct.platform_device* %53, i32 %54, i32 1)
  store %struct.resource* %55, %struct.resource** %5, align 8
  %56 = load %struct.resource*, %struct.resource** %5, align 8
  %57 = icmp ne %struct.resource* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %44
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %127

61:                                               ; preds = %44
  %62 = load %struct.resource*, %struct.resource** %5, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %66 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %64, i32* %69, align 4
  %70 = load i32, i32* @PSC_AC97CFG_RT_FIFO8, align 4
  %71 = load i32, i32* @PSC_AC97CFG_TT_FIFO8, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @PSC_AC97CFG_DE_ENABLE, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %76 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %78 = call i32 @PSC_SEL(%struct.au1xpsc_audio_data* %77)
  %79 = call i64 @__raw_readl(i32 %78)
  %80 = load i64, i64* @PSC_SEL_CLK_MASK, align 8
  %81 = and i64 %79, %80
  store i64 %81, i64* %6, align 8
  %82 = load i64, i64* @PSC_CTRL_DISABLE, align 8
  %83 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %84 = call i32 @PSC_CTRL(%struct.au1xpsc_audio_data* %83)
  %85 = call i32 @__raw_writel(i64 %82, i32 %84)
  %86 = call i32 (...) @wmb()
  %87 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %88 = call i32 @PSC_SEL(%struct.au1xpsc_audio_data* %87)
  %89 = call i32 @__raw_writel(i64 0, i32 %88)
  %90 = call i32 (...) @wmb()
  %91 = load i64, i64* @PSC_SEL_PS_AC97MODE, align 8
  %92 = load i64, i64* %6, align 8
  %93 = or i64 %91, %92
  %94 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %95 = call i32 @PSC_SEL(%struct.au1xpsc_audio_data* %94)
  %96 = call i32 @__raw_writel(i64 %93, i32 %95)
  %97 = call i32 (...) @wmb()
  %98 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %99 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %98, i32 0, i32 1
  %100 = call i32 @memcpy(%struct.TYPE_3__* %99, i32* @au1xpsc_ac97_dai_template, i32 4)
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call i32 @dev_name(i32* %102)
  %104 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %105 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 4
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %109 = call i32 @platform_set_drvdata(%struct.platform_device* %107, %struct.au1xpsc_audio_data* %108)
  %110 = call i32 @snd_soc_set_ac97_ops(i32* @psc_ac97_ops)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %61
  %114 = load i32, i32* %4, align 4
  store i32 %114, i32* %2, align 4
  br label %127

115:                                              ; preds = %61
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %119 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %118, i32 0, i32 1
  %120 = call i32 @snd_soc_register_component(i32* %117, i32* @au1xpsc_ac97_component, %struct.TYPE_3__* %119, i32 1)
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %115
  %124 = load i32, i32* %4, align 4
  store i32 %124, i32* %2, align 4
  br label %127

125:                                              ; preds = %115
  %126 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  store %struct.au1xpsc_audio_data* %126, %struct.au1xpsc_audio_data** @au1xpsc_ac97_workdata, align 8
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %125, %123, %113, %58, %41, %30, %14
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.au1xpsc_audio_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @PSC_SEL(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i32 @PSC_CTRL(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.au1xpsc_audio_data*) #1

declare dso_local i32 @snd_soc_set_ac97_ops(i32*) #1

declare dso_local i32 @snd_soc_register_component(i32*, i32*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
