; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mt6358_codec_init_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mt6358_codec_init_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt6358_priv = type { i32 }

@MT6358_AUDDEC_ANA_CON0 = common dso_local global i32 0, align 4
@RG_AUDHPLSCDISABLE_VAUDP15_MASK_SFT = common dso_local global i32 0, align 4
@RG_AUDHPLSCDISABLE_VAUDP15_SFT = common dso_local global i32 0, align 4
@RG_AUDHPRSCDISABLE_VAUDP15_MASK_SFT = common dso_local global i32 0, align 4
@RG_AUDHPRSCDISABLE_VAUDP15_SFT = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON6 = common dso_local global i32 0, align 4
@RG_AUDHSSCDISABLE_VAUDP15_MASK_SFT = common dso_local global i32 0, align 4
@RG_AUDHSSCDISABLE_VAUDP15_SFT = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON7 = common dso_local global i32 0, align 4
@RG_AUDLOLSCDISABLE_VAUDP15_MASK_SFT = common dso_local global i32 0, align 4
@RG_AUDLOLSCDISABLE_VAUDP15_SFT = common dso_local global i32 0, align 4
@MT6358_ACCDET_CON13 = common dso_local global i32 0, align 4
@MT6358_DRV_CON3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt6358_priv*)* @mt6358_codec_init_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt6358_codec_init_reg(%struct.mt6358_priv* %0) #0 {
  %2 = alloca %struct.mt6358_priv*, align 8
  store %struct.mt6358_priv* %0, %struct.mt6358_priv** %2, align 8
  %3 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %4 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MT6358_AUDDEC_ANA_CON0, align 4
  %7 = load i32, i32* @RG_AUDHPLSCDISABLE_VAUDP15_MASK_SFT, align 4
  %8 = load i32, i32* @RG_AUDHPLSCDISABLE_VAUDP15_SFT, align 4
  %9 = shl i32 1, %8
  %10 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 %7, i32 %9)
  %11 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %12 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MT6358_AUDDEC_ANA_CON0, align 4
  %15 = load i32, i32* @RG_AUDHPRSCDISABLE_VAUDP15_MASK_SFT, align 4
  %16 = load i32, i32* @RG_AUDHPRSCDISABLE_VAUDP15_SFT, align 4
  %17 = shl i32 1, %16
  %18 = call i32 @regmap_update_bits(i32 %13, i32 %14, i32 %15, i32 %17)
  %19 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %20 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MT6358_AUDDEC_ANA_CON6, align 4
  %23 = load i32, i32* @RG_AUDHSSCDISABLE_VAUDP15_MASK_SFT, align 4
  %24 = load i32, i32* @RG_AUDHSSCDISABLE_VAUDP15_SFT, align 4
  %25 = shl i32 1, %24
  %26 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 %25)
  %27 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %28 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MT6358_AUDDEC_ANA_CON7, align 4
  %31 = load i32, i32* @RG_AUDLOLSCDISABLE_VAUDP15_MASK_SFT, align 4
  %32 = load i32, i32* @RG_AUDLOLSCDISABLE_VAUDP15_SFT, align 4
  %33 = shl i32 1, %32
  %34 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %31, i32 %33)
  %35 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %36 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MT6358_ACCDET_CON13, align 4
  %39 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 65535, i32 28686)
  %40 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %41 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MT6358_DRV_CON3, align 4
  %44 = call i32 @regmap_write(i32 %42, i32 %43, i32 34952)
  %45 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %46 = call i32 @playback_gpio_reset(%struct.mt6358_priv* %45)
  %47 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %48 = call i32 @capture_gpio_reset(%struct.mt6358_priv* %47)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @playback_gpio_reset(%struct.mt6358_priv*) #1

declare dso_local i32 @capture_gpio_reset(%struct.mt6358_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
