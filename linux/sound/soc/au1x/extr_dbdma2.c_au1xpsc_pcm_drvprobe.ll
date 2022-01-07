; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_dbdma2.c_au1xpsc_pcm_drvprobe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_dbdma2.c_au1xpsc_pcm_drvprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.au1xpsc_audio_dmadata = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@au1xpsc_soc_component = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @au1xpsc_pcm_drvprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xpsc_pcm_drvprobe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.au1xpsc_audio_dmadata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.au1xpsc_audio_dmadata* @devm_kcalloc(i32* %6, i32 2, i32 4, i32 %7)
  store %struct.au1xpsc_audio_dmadata* %8, %struct.au1xpsc_audio_dmadata** %4, align 8
  %9 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %4, align 8
  %10 = icmp ne %struct.au1xpsc_audio_dmadata* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %21

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %4, align 8
  %17 = call i32 @platform_set_drvdata(%struct.platform_device* %15, %struct.au1xpsc_audio_dmadata* %16)
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @devm_snd_soc_register_component(i32* %19, i32* @au1xpsc_soc_component, i32* null, i32 0)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %14, %11
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.au1xpsc_audio_dmadata* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.au1xpsc_audio_dmadata*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
