; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_afe_i2s_path_disable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_afe_i2s_path_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { i32 }
%struct.mt2701_i2s_path = type { i64*, %struct.mt2701_i2s_data** }
%struct.mt2701_i2s_data = type { i32 }

@ASYS_I2S_CON_I2S_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_base_afe*, %struct.mt2701_i2s_path*, i32)* @mt2701_afe_i2s_path_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2701_afe_i2s_path_disable(%struct.mtk_base_afe* %0, %struct.mt2701_i2s_path* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_base_afe*, align 8
  %6 = alloca %struct.mt2701_i2s_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mt2701_i2s_data*, align 8
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %5, align 8
  store %struct.mt2701_i2s_path* %1, %struct.mt2701_i2s_path** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %10 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %9, i32 0, i32 1
  %11 = load %struct.mt2701_i2s_data**, %struct.mt2701_i2s_data*** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.mt2701_i2s_data*, %struct.mt2701_i2s_data** %11, i64 %13
  %15 = load %struct.mt2701_i2s_data*, %struct.mt2701_i2s_data** %14, align 8
  store %struct.mt2701_i2s_data* %15, %struct.mt2701_i2s_data** %8, align 8
  %16 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %17 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %27 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %25, %3
  %33 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %34 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %55

42:                                               ; preds = %32
  %43 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %5, align 8
  %44 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mt2701_i2s_data*, %struct.mt2701_i2s_data** %8, align 8
  %47 = getelementptr inbounds %struct.mt2701_i2s_data, %struct.mt2701_i2s_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ASYS_I2S_CON_I2S_EN, align 4
  %50 = call i32 @regmap_update_bits(i32 %45, i32 %48, i32 %49, i32 0)
  %51 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %5, align 8
  %52 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @mt2701_afe_disable_i2s(%struct.mtk_base_afe* %51, %struct.mt2701_i2s_path* %52, i32 %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %42, %41
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mt2701_afe_disable_i2s(%struct.mtk_base_afe*, %struct.mt2701_i2s_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
