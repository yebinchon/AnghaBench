; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-spdif.c_sun4i_snd_txctrl_off.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-spdif.c_sun4i_snd_txctrl_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.sun4i_spdif_dev = type { i32 }

@SUN4I_SPDIF_TXCFG = common dso_local global i32 0, align 4
@SUN4I_SPDIF_TXCFG_TXEN = common dso_local global i32 0, align 4
@SUN4I_SPDIF_INT = common dso_local global i32 0, align 4
@SUN4I_SPDIF_INT_TXDRQEN = common dso_local global i32 0, align 4
@SUN4I_SPDIF_CTL = common dso_local global i32 0, align 4
@SUN4I_SPDIF_CTL_GEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.sun4i_spdif_dev*)* @sun4i_snd_txctrl_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_snd_txctrl_off(%struct.snd_pcm_substream* %0, %struct.sun4i_spdif_dev* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.sun4i_spdif_dev*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.sun4i_spdif_dev* %1, %struct.sun4i_spdif_dev** %4, align 8
  %5 = load %struct.sun4i_spdif_dev*, %struct.sun4i_spdif_dev** %4, align 8
  %6 = getelementptr inbounds %struct.sun4i_spdif_dev, %struct.sun4i_spdif_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SUN4I_SPDIF_TXCFG, align 4
  %9 = load i32, i32* @SUN4I_SPDIF_TXCFG_TXEN, align 4
  %10 = call i32 @regmap_update_bits(i32 %7, i32 %8, i32 %9, i32 0)
  %11 = load %struct.sun4i_spdif_dev*, %struct.sun4i_spdif_dev** %4, align 8
  %12 = getelementptr inbounds %struct.sun4i_spdif_dev, %struct.sun4i_spdif_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SUN4I_SPDIF_INT, align 4
  %15 = load i32, i32* @SUN4I_SPDIF_INT_TXDRQEN, align 4
  %16 = call i32 @regmap_update_bits(i32 %13, i32 %14, i32 %15, i32 0)
  %17 = load %struct.sun4i_spdif_dev*, %struct.sun4i_spdif_dev** %4, align 8
  %18 = getelementptr inbounds %struct.sun4i_spdif_dev, %struct.sun4i_spdif_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SUN4I_SPDIF_CTL, align 4
  %21 = load i32, i32* @SUN4I_SPDIF_CTL_GEN, align 4
  %22 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %21, i32 0)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
