; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_cm9739.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_cm9739.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, i32, i32, i32, i64, i64*, i32* }

@patch_cm9739_ops = common dso_local global i32 0, align 4
@AC97_HAS_NO_MASTER_VOL = common dso_local global i32 0, align 4
@AC97_HAS_NO_PCM_VOL = common dso_local global i32 0, align 4
@AC97_MASTER = common dso_local global i32 0, align 4
@AC97_PCM = common dso_local global i32 0, align 4
@AC97_EXTENDED_STATUS = common dso_local global i32 0, align 4
@AC97_EA_SPCV = common dso_local global i16 0, align 2
@AC97_CM9739_SPDIF_CTRL = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_48000 = common dso_local global i64 0, align 8
@AC97_RATES_SPDIF = common dso_local global i64 0, align 8
@AC97_EI_SPDIF = common dso_local global i32 0, align 4
@AC97_CM9739_MULTI_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_cm9739 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_cm9739(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %4 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %5 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %4, i32 0, i32 6
  store i32* @patch_cm9739_ops, i32** %5, align 8
  %6 = load i32, i32* @AC97_HAS_NO_MASTER_VOL, align 4
  %7 = load i32, i32* @AC97_HAS_NO_PCM_VOL, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %10 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %14 = load i32, i32* @AC97_MASTER, align 4
  %15 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %13, i32 %14, i32 32768)
  %16 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %17 = load i32, i32* @AC97_PCM, align 4
  %18 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %16, i32 %17, i32 32768)
  %19 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %20 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %21 = call i32 @snd_ac97_read(%struct.snd_ac97* %19, i32 %20)
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %3, align 2
  %23 = load i16, i16* %3, align 2
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* @AC97_EA_SPCV, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %1
  %30 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %31 = load i32, i32* @AC97_CM9739_SPDIF_CTRL, align 4
  %32 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %33 = load i32, i32* @AC97_CM9739_SPDIF_CTRL, align 4
  %34 = call i32 @snd_ac97_read(%struct.snd_ac97* %32, i32 %33)
  %35 = or i32 %34, 1
  %36 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %30, i32 %31, i32 %35)
  %37 = load i64, i64* @SNDRV_PCM_RATE_48000, align 8
  %38 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %39 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %38, i32 0, i32 5
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @AC97_RATES_SPDIF, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 %37, i64* %42, align 8
  br label %55

43:                                               ; preds = %1
  %44 = load i32, i32* @AC97_EI_SPDIF, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %47 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %51 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %50, i32 0, i32 5
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* @AC97_RATES_SPDIF, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %43, %29
  %56 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %57 = load i32, i32* @AC97_CM9739_MULTI_CHAN, align 4
  %58 = call i32 @snd_ac97_read(%struct.snd_ac97* %56, i32 %57)
  %59 = and i32 %58, 16
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %3, align 2
  %61 = load i16, i16* %3, align 2
  %62 = zext i16 %61 to i32
  %63 = or i32 %62, 8
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %3, align 2
  %65 = load i16, i16* %3, align 2
  %66 = zext i16 %65 to i32
  %67 = or i32 %66, 8192
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %3, align 2
  %69 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %70 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @AC97_EI_SPDIF, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %55
  %76 = load i16, i16* %3, align 2
  %77 = zext i16 %76 to i32
  %78 = or i32 %77, 16384
  %79 = trunc i32 %78 to i16
  store i16 %79, i16* %3, align 2
  br label %80

80:                                               ; preds = %75, %55
  %81 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %82 = load i32, i32* @AC97_CM9739_MULTI_CHAN, align 4
  %83 = load i16, i16* %3, align 2
  %84 = zext i16 %83 to i32
  %85 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %81, i32 %82, i32 %84)
  %86 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %87 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %86, i32 112, i32 256)
  %88 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %89 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %88, i32 114, i32 32)
  %90 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %91 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %119

94:                                               ; preds = %80
  %95 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %96 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 4163
  br i1 %98, label %99, label %119

99:                                               ; preds = %94
  %100 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %101 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 6211
  br i1 %103, label %104, label %119

104:                                              ; preds = %99
  %105 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %106 = load i32, i32* @AC97_CM9739_SPDIF_CTRL, align 4
  %107 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %108 = load i32, i32* @AC97_CM9739_SPDIF_CTRL, align 4
  %109 = call i32 @snd_ac97_read(%struct.snd_ac97* %107, i32 %108)
  %110 = and i32 %109, -2
  %111 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %105, i32 %106, i32 %110)
  %112 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %113 = load i32, i32* @AC97_CM9739_MULTI_CHAN, align 4
  %114 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %115 = load i32, i32* @AC97_CM9739_MULTI_CHAN, align 4
  %116 = call i32 @snd_ac97_read(%struct.snd_ac97* %114, i32 %115)
  %117 = or i32 %116, 16384
  %118 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %112, i32 %113, i32 %117)
  br label %119

119:                                              ; preds = %104, %99, %94, %80
  ret i32 0
}

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i32) #1

declare dso_local i32 @snd_ac97_read(%struct.snd_ac97*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
