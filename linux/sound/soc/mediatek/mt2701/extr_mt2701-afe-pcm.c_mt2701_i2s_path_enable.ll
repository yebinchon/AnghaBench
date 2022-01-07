; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_i2s_path_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_i2s_path_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { i32, %struct.mt2701_afe_private* }
%struct.mt2701_afe_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mt2701_i2s_path = type { i32*, %struct.mt2701_i2s_data** }
%struct.mt2701_i2s_data = type { i32, i32, i32 }

@ASYS_I2S_CON_FS = common dso_local global i32 0, align 4
@ASYS_I2S_CON_I2S_COUPLE_MODE = common dso_local global i32 0, align 4
@ASYS_I2S_CON_I2S_MODE = common dso_local global i32 0, align 4
@ASYS_I2S_CON_WIDE_MODE = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@ASYS_I2S_IN_PHASE_FIX = common dso_local global i32 0, align 4
@ASMI_TIMING_CON1 = common dso_local global i32 0, align 4
@ASYS_I2S_CON_ONE_HEART_MODE = common dso_local global i32 0, align 4
@ASMO_TIMING_CON1 = common dso_local global i32 0, align 4
@ASYS_I2S_CON_RESET = common dso_local global i32 0, align 4
@ASYS_I2S_CON_I2S_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_base_afe*, %struct.mt2701_i2s_path*, i32, i32)* @mt2701_i2s_path_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2701_i2s_path_enable(%struct.mtk_base_afe* %0, %struct.mt2701_i2s_path* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_base_afe*, align 8
  %7 = alloca %struct.mt2701_i2s_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mt2701_i2s_data*, align 8
  %11 = alloca %struct.mt2701_afe_private*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %6, align 8
  store %struct.mt2701_i2s_path* %1, %struct.mt2701_i2s_path** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %7, align 8
  %18 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %17, i32 0, i32 1
  %19 = load %struct.mt2701_i2s_data**, %struct.mt2701_i2s_data*** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mt2701_i2s_data*, %struct.mt2701_i2s_data** %19, i64 %21
  %23 = load %struct.mt2701_i2s_data*, %struct.mt2701_i2s_data** %22, align 8
  store %struct.mt2701_i2s_data* %23, %struct.mt2701_i2s_data** %10, align 8
  %24 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %25 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %24, i32 0, i32 1
  %26 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %25, align 8
  store %struct.mt2701_afe_private* %26, %struct.mt2701_afe_private** %11, align 8
  store i32 1, i32* %14, align 4
  %27 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %7, align 8
  %28 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %140

37:                                               ; preds = %4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @mt2701_afe_i2s_fs(i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* @ASYS_I2S_CON_FS, align 4
  %41 = load i32, i32* @ASYS_I2S_CON_I2S_COUPLE_MODE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @ASYS_I2S_CON_I2S_MODE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @ASYS_I2S_CON_WIDE_MODE, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @ASYS_I2S_CON_FS_SET(i32 %47)
  %49 = load i32, i32* @ASYS_I2S_CON_I2S_MODE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @ASYS_I2S_CON_WIDE_MODE_SET(i32 %51)
  %53 = or i32 %50, %52
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %37
  %58 = load i32, i32* @ASYS_I2S_IN_PHASE_FIX, align 4
  %59 = load i32, i32* %15, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* @ASYS_I2S_IN_PHASE_FIX, align 4
  %62 = load i32, i32* %16, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* @ASMI_TIMING_CON1, align 4
  store i32 %64, i32* %12, align 4
  br label %81

65:                                               ; preds = %37
  %66 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %11, align 8
  %67 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load i32, i32* @ASYS_I2S_CON_ONE_HEART_MODE, align 4
  %74 = load i32, i32* %15, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* @ASYS_I2S_CON_ONE_HEART_MODE, align 4
  %77 = load i32, i32* %16, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %16, align 4
  br label %79

79:                                               ; preds = %72, %65
  %80 = load i32, i32* @ASMO_TIMING_CON1, align 4
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %79, %57
  %82 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %83 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.mt2701_i2s_data*, %struct.mt2701_i2s_data** %10, align 8
  %86 = getelementptr inbounds %struct.mt2701_i2s_data, %struct.mt2701_i2s_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @regmap_update_bits(i32 %84, i32 %87, i32 %88, i32 %89)
  %91 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %92 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.mt2701_i2s_data*, %struct.mt2701_i2s_data** %10, align 8
  %96 = getelementptr inbounds %struct.mt2701_i2s_data, %struct.mt2701_i2s_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.mt2701_i2s_data*, %struct.mt2701_i2s_data** %10, align 8
  %99 = getelementptr inbounds %struct.mt2701_i2s_data, %struct.mt2701_i2s_data* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %97, %100
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.mt2701_i2s_data*, %struct.mt2701_i2s_data** %10, align 8
  %104 = getelementptr inbounds %struct.mt2701_i2s_data, %struct.mt2701_i2s_data* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %102, %105
  %107 = call i32 @regmap_update_bits(i32 %93, i32 %94, i32 %101, i32 %106)
  %108 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %109 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @mt2701_afe_enable_i2s(%struct.mtk_base_afe* %108, %struct.mt2701_i2s_path* %109, i32 %110)
  %112 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %113 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.mt2701_i2s_data*, %struct.mt2701_i2s_data** %10, align 8
  %116 = getelementptr inbounds %struct.mt2701_i2s_data, %struct.mt2701_i2s_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @ASYS_I2S_CON_RESET, align 4
  %119 = load i32, i32* @ASYS_I2S_CON_RESET, align 4
  %120 = call i32 @regmap_update_bits(i32 %114, i32 %117, i32 %118, i32 %119)
  %121 = call i32 @udelay(i32 1)
  %122 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %123 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.mt2701_i2s_data*, %struct.mt2701_i2s_data** %10, align 8
  %126 = getelementptr inbounds %struct.mt2701_i2s_data, %struct.mt2701_i2s_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @ASYS_I2S_CON_RESET, align 4
  %129 = call i32 @regmap_update_bits(i32 %124, i32 %127, i32 %128, i32 0)
  %130 = call i32 @udelay(i32 1)
  %131 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %132 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.mt2701_i2s_data*, %struct.mt2701_i2s_data** %10, align 8
  %135 = getelementptr inbounds %struct.mt2701_i2s_data, %struct.mt2701_i2s_data* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @ASYS_I2S_CON_I2S_EN, align 4
  %138 = load i32, i32* @ASYS_I2S_CON_I2S_EN, align 4
  %139 = call i32 @regmap_update_bits(i32 %133, i32 %136, i32 %137, i32 %138)
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %81, %36
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @mt2701_afe_i2s_fs(i32) #1

declare dso_local i32 @ASYS_I2S_CON_FS_SET(i32) #1

declare dso_local i32 @ASYS_I2S_CON_WIDE_MODE_SET(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mt2701_afe_enable_i2s(%struct.mtk_base_afe*, %struct.mt2701_i2s_path*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
