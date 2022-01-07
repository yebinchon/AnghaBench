; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra30_ahub.c_tegra124_ahub_set_cif.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra30_ahub.c_tegra124_ahub_set_cif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.tegra30_ahub_cif_conf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TEGRA124_AUDIOCIF_CTRL_FIFO_THRESHOLD_SHIFT = common dso_local global i32 0, align 4
@TEGRA124_AUDIOCIF_CTRL_AUDIO_CHANNELS_SHIFT = common dso_local global i32 0, align 4
@TEGRA124_AUDIOCIF_CTRL_CLIENT_CHANNELS_SHIFT = common dso_local global i32 0, align 4
@TEGRA30_AUDIOCIF_CTRL_AUDIO_BITS_SHIFT = common dso_local global i32 0, align 4
@TEGRA30_AUDIOCIF_CTRL_CLIENT_BITS_SHIFT = common dso_local global i32 0, align 4
@TEGRA30_AUDIOCIF_CTRL_EXPAND_SHIFT = common dso_local global i32 0, align 4
@TEGRA30_AUDIOCIF_CTRL_STEREO_CONV_SHIFT = common dso_local global i32 0, align 4
@TEGRA30_AUDIOCIF_CTRL_REPLICATE_SHIFT = common dso_local global i32 0, align 4
@TEGRA30_AUDIOCIF_CTRL_DIRECTION_SHIFT = common dso_local global i32 0, align 4
@TEGRA30_AUDIOCIF_CTRL_TRUNCATE_SHIFT = common dso_local global i32 0, align 4
@TEGRA30_AUDIOCIF_CTRL_MONO_CONV_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tegra124_ahub_set_cif(%struct.regmap* %0, i32 %1, %struct.tegra30_ahub_cif_conf* %2) #0 {
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra30_ahub_cif_conf*, align 8
  %7 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tegra30_ahub_cif_conf* %2, %struct.tegra30_ahub_cif_conf** %6, align 8
  %8 = load %struct.tegra30_ahub_cif_conf*, %struct.tegra30_ahub_cif_conf** %6, align 8
  %9 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TEGRA124_AUDIOCIF_CTRL_FIFO_THRESHOLD_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = load %struct.tegra30_ahub_cif_conf*, %struct.tegra30_ahub_cif_conf** %6, align 8
  %14 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  %17 = load i32, i32* @TEGRA124_AUDIOCIF_CTRL_AUDIO_CHANNELS_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = or i32 %12, %18
  %20 = load %struct.tegra30_ahub_cif_conf*, %struct.tegra30_ahub_cif_conf** %6, align 8
  %21 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* @TEGRA124_AUDIOCIF_CTRL_CLIENT_CHANNELS_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %19, %25
  %27 = load %struct.tegra30_ahub_cif_conf*, %struct.tegra30_ahub_cif_conf** %6, align 8
  %28 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TEGRA30_AUDIOCIF_CTRL_AUDIO_BITS_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %26, %31
  %33 = load %struct.tegra30_ahub_cif_conf*, %struct.tegra30_ahub_cif_conf** %6, align 8
  %34 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TEGRA30_AUDIOCIF_CTRL_CLIENT_BITS_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = or i32 %32, %37
  %39 = load %struct.tegra30_ahub_cif_conf*, %struct.tegra30_ahub_cif_conf** %6, align 8
  %40 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @TEGRA30_AUDIOCIF_CTRL_EXPAND_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %38, %43
  %45 = load %struct.tegra30_ahub_cif_conf*, %struct.tegra30_ahub_cif_conf** %6, align 8
  %46 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TEGRA30_AUDIOCIF_CTRL_STEREO_CONV_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %44, %49
  %51 = load %struct.tegra30_ahub_cif_conf*, %struct.tegra30_ahub_cif_conf** %6, align 8
  %52 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TEGRA30_AUDIOCIF_CTRL_REPLICATE_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %50, %55
  %57 = load %struct.tegra30_ahub_cif_conf*, %struct.tegra30_ahub_cif_conf** %6, align 8
  %58 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TEGRA30_AUDIOCIF_CTRL_DIRECTION_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = or i32 %56, %61
  %63 = load %struct.tegra30_ahub_cif_conf*, %struct.tegra30_ahub_cif_conf** %6, align 8
  %64 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @TEGRA30_AUDIOCIF_CTRL_TRUNCATE_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = or i32 %62, %67
  %69 = load %struct.tegra30_ahub_cif_conf*, %struct.tegra30_ahub_cif_conf** %6, align 8
  %70 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @TEGRA30_AUDIOCIF_CTRL_MONO_CONV_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = or i32 %68, %73
  store i32 %74, i32* %7, align 4
  %75 = load %struct.regmap*, %struct.regmap** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @regmap_write(%struct.regmap* %75, i32 %76, i32 %77)
  ret void
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
