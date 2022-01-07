; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_i2s.c_stm32_i2s_dais_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_i2s.c_stm32_i2s_dais_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.stm32_i2s_data = type { %struct.snd_soc_dai_driver* }
%struct.snd_soc_dai_driver = type { i32, i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@stm32_i2s_dai_probe = common dso_local global i32 0, align 4
@stm32_i2s_pcm_dai_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"playback\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.stm32_i2s_data*)* @stm32_i2s_dais_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_i2s_dais_init(%struct.platform_device* %0, %struct.stm32_i2s_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.stm32_i2s_data*, align 8
  %6 = alloca %struct.snd_soc_dai_driver*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.stm32_i2s_data* %1, %struct.stm32_i2s_data** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.snd_soc_dai_driver* @devm_kzalloc(i32* %8, i32 32, i32 %9)
  store %struct.snd_soc_dai_driver* %10, %struct.snd_soc_dai_driver** %6, align 8
  %11 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %12 = icmp ne %struct.snd_soc_dai_driver* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load i32, i32* @stm32_i2s_dai_probe, align 4
  %18 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %20, i32 0, i32 3
  store i32* @stm32_i2s_pcm_dai_ops, i32** %21, align 8
  %22 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %25 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %24, i32 0, i32 2
  %26 = call i32 @stm32_i2s_dai_init(i32* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %28 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %27, i32 0, i32 1
  %29 = call i32 @stm32_i2s_dai_init(i32* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %31 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %5, align 8
  %32 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %31, i32 0, i32 0
  store %struct.snd_soc_dai_driver* %30, %struct.snd_soc_dai_driver** %32, align 8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %16, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.snd_soc_dai_driver* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @stm32_i2s_dai_init(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
