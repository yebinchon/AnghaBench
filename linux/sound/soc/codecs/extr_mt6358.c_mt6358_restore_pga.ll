; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mt6358_restore_pga.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mt6358_restore_pga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt6358_priv = type { i32*, i32 }

@AUDIO_ANALOG_VOLUME_MICAMP1 = common dso_local global i64 0, align 8
@AUDIO_ANALOG_VOLUME_MICAMP2 = common dso_local global i64 0, align 8
@MT6358_AUDENC_ANA_CON0 = common dso_local global i32 0, align 4
@RG_AUDPREAMPLGAIN_MASK_SFT = common dso_local global i32 0, align 4
@RG_AUDPREAMPLGAIN_SFT = common dso_local global i32 0, align 4
@MT6358_AUDENC_ANA_CON1 = common dso_local global i32 0, align 4
@RG_AUDPREAMPRGAIN_MASK_SFT = common dso_local global i32 0, align 4
@RG_AUDPREAMPRGAIN_SFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt6358_priv*)* @mt6358_restore_pga to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt6358_restore_pga(%struct.mt6358_priv* %0) #0 {
  %2 = alloca %struct.mt6358_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mt6358_priv* %0, %struct.mt6358_priv** %2, align 8
  %5 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %6 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @AUDIO_ANALOG_VOLUME_MICAMP1, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %12 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @AUDIO_ANALOG_VOLUME_MICAMP2, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %18 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MT6358_AUDENC_ANA_CON0, align 4
  %21 = load i32, i32* @RG_AUDPREAMPLGAIN_MASK_SFT, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @RG_AUDPREAMPLGAIN_SFT, align 4
  %24 = shl i32 %22, %23
  %25 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %21, i32 %24)
  %26 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %27 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MT6358_AUDENC_ANA_CON1, align 4
  %30 = load i32, i32* @RG_AUDPREAMPRGAIN_MASK_SFT, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @RG_AUDPREAMPRGAIN_SFT, align 4
  %33 = shl i32 %31, %32
  %34 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %33)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
