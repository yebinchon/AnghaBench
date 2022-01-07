; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_set_i2s_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_set_i2s_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { i32 }

@AFE_I2S_CON2 = common dso_local global i32 0, align 4
@AFE_I2S_CON2_EN = common dso_local global i32 0, align 4
@AFE_I2S_CON1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_base_afe*, i32)* @mt8173_afe_set_i2s_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt8173_afe_set_i2s_enable(%struct.mtk_base_afe* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_base_afe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %7 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @AFE_I2S_CON2, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %5)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @AFE_I2S_CON2_EN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %34

21:                                               ; preds = %2
  %22 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %23 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AFE_I2S_CON2, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 1, i32 %26)
  %28 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %29 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AFE_I2S_CON1, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 1, i32 %32)
  br label %34

34:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
