; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mt6358_mtkaif_tx_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mt6358_mtkaif_tx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt6358_priv = type { i32, i32 }

@MT6358_AFE_ADDA_MTKAIF_CFG0 = common dso_local global i32 0, align 4
@MT6358_AFE_AUD_PAD_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt6358_priv*)* @mt6358_mtkaif_tx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt6358_mtkaif_tx_enable(%struct.mt6358_priv* %0) #0 {
  %2 = alloca %struct.mt6358_priv*, align 8
  store %struct.mt6358_priv* %0, %struct.mt6358_priv** %2, align 8
  %3 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %4 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %34 [
    i32 128, label %6
    i32 129, label %22
    i32 130, label %33
  ]

6:                                                ; preds = %1
  %7 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %8 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MT6358_AFE_ADDA_MTKAIF_CFG0, align 4
  %11 = call i32 @regmap_update_bits(i32 %9, i32 %10, i32 65535, i32 16)
  %12 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %13 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MT6358_AFE_AUD_PAD_TOP, align 4
  %16 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 65280, i32 14336)
  %17 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %18 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MT6358_AFE_AUD_PAD_TOP, align 4
  %21 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 65280, i32 14592)
  br label %45

22:                                               ; preds = %1
  %23 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %24 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MT6358_AFE_ADDA_MTKAIF_CFG0, align 4
  %27 = call i32 @regmap_update_bits(i32 %25, i32 %26, i32 65535, i32 16)
  %28 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %29 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MT6358_AFE_AUD_PAD_TOP, align 4
  %32 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 65280, i32 12544)
  br label %45

33:                                               ; preds = %1
  br label %34

34:                                               ; preds = %1, %33
  %35 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %36 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MT6358_AFE_ADDA_MTKAIF_CFG0, align 4
  %39 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 65535, i32 0)
  %40 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %41 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MT6358_AFE_AUD_PAD_TOP, align 4
  %44 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 65280, i32 12544)
  br label %45

45:                                               ; preds = %34, %22, %6
  ret i32 0
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
