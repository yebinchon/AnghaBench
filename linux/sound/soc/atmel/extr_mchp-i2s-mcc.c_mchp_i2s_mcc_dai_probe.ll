; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_mchp-i2s-mcc.c_mchp_i2s_mcc_dai_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_mchp-i2s-mcc.c_mchp_i2s_mcc_dai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.mchp_i2s_mcc_dev = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @mchp_i2s_mcc_dai_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mchp_i2s_mcc_dai_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.snd_soc_dai*, align 8
  %3 = alloca %struct.mchp_i2s_mcc_dev*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %2, align 8
  %4 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %5 = call %struct.mchp_i2s_mcc_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %4)
  store %struct.mchp_i2s_mcc_dev* %5, %struct.mchp_i2s_mcc_dev** %3, align 8
  %6 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %6, i32 0, i32 5
  %8 = call i32 @init_waitqueue_head(i32* %7)
  %9 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %9, i32 0, i32 4
  %11 = call i32 @init_waitqueue_head(i32* %10)
  %12 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %17 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %17, i32 0, i32 3
  %19 = load %struct.mchp_i2s_mcc_dev*, %struct.mchp_i2s_mcc_dev** %3, align 8
  %20 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, %struct.mchp_i2s_mcc_dev* %19, i32 0, i32 2
  %21 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %16, i32* %18, i32* %20)
  ret i32 0
}

declare dso_local %struct.mchp_i2s_mcc_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
