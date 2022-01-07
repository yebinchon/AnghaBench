; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-pcm.c_devm_ep93xx_pcm_platform_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-pcm.c_devm_ep93xx_pcm_platform_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@ep93xx_dmaengine_pcm_config = common dso_local global i32 0, align 4
@SND_DMAENGINE_PCM_FLAG_NO_DT = common dso_local global i32 0, align 4
@SND_DMAENGINE_PCM_FLAG_COMPAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_ep93xx_pcm_platform_register(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %3 = load %struct.device*, %struct.device** %2, align 8
  %4 = load i32, i32* @SND_DMAENGINE_PCM_FLAG_NO_DT, align 4
  %5 = load i32, i32* @SND_DMAENGINE_PCM_FLAG_COMPAT, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @devm_snd_dmaengine_pcm_register(%struct.device* %3, i32* @ep93xx_dmaengine_pcm_config, i32 %6)
  ret i32 %7
}

declare dso_local i32 @devm_snd_dmaengine_pcm_register(%struct.device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
