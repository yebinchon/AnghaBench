; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sirf/extr_sirf-audio-port.c_sirf_audio_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sirf/extr_sirf-audio-port.c_sirf_audio_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sirf_audio_port = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sirf_audio_port_component = common dso_local global i32 0, align 4
@sirf_audio_port_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sirf_audio_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirf_audio_port_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sirf_audio_port*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.sirf_audio_port* @devm_kzalloc(i32* %7, i32 4, i32 %8)
  store %struct.sirf_audio_port* %9, %struct.sirf_audio_port** %5, align 8
  %10 = load %struct.sirf_audio_port*, %struct.sirf_audio_port** %5, align 8
  %11 = icmp ne %struct.sirf_audio_port* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %30

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 @devm_snd_soc_register_component(i32* %17, i32* @sirf_audio_port_component, i32* @sirf_audio_port_dai, i32 1)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %30

23:                                               ; preds = %15
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.sirf_audio_port*, %struct.sirf_audio_port** %5, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.sirf_audio_port* %25)
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @devm_snd_dmaengine_pcm_register(i32* %28, i32* null, i32 0)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %23, %21, %12
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.sirf_audio_port* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sirf_audio_port*) #1

declare dso_local i32 @devm_snd_dmaengine_pcm_register(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
