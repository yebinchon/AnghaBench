; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_ac97.c_tegra20_ac97_codec_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_ac97.c_tegra20_ac97_codec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snd_ac97 = type { i32 }

@workdata = common dso_local global %struct.TYPE_2__* null, align 8
@TEGRA20_AC97_CMD = common dso_local global i32 0, align 4
@TEGRA20_AC97_CMD_CMD_ADDR_SHIFT = common dso_local global i16 0, align 2
@TEGRA20_AC97_CMD_CMD_ADDR_MASK = common dso_local global i16 0, align 2
@TEGRA20_AC97_CMD_BUSY = common dso_local global i16 0, align 2
@jiffies = common dso_local global i64 0, align 8
@TEGRA20_AC97_STATUS1 = common dso_local global i32 0, align 4
@TEGRA20_AC97_STATUS1_STA_VALID1 = common dso_local global i32 0, align 4
@TEGRA20_AC97_STATUS1_STA_DATA1_MASK = common dso_local global i32 0, align 4
@TEGRA20_AC97_STATUS1_STA_DATA1_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @tegra20_ac97_codec_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @tegra20_ac97_codec_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @workdata, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TEGRA20_AC97_CMD, align 4
  %11 = load i16, i16* %4, align 2
  %12 = zext i16 %11 to i32
  %13 = or i32 %12, 128
  %14 = load i16, i16* @TEGRA20_AC97_CMD_CMD_ADDR_SHIFT, align 2
  %15 = zext i16 %14 to i32
  %16 = shl i32 %13, %15
  %17 = load i16, i16* @TEGRA20_AC97_CMD_CMD_ADDR_MASK, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %16, %18
  %20 = load i16, i16* @TEGRA20_AC97_CMD_BUSY, align 2
  %21 = zext i16 %20 to i32
  %22 = or i32 %19, %21
  %23 = trunc i32 %22 to i16
  %24 = call i32 @regmap_write(i32 %9, i32 %10, i16 zeroext %23)
  %25 = load i64, i64* @jiffies, align 8
  %26 = call i64 @msecs_to_jiffies(i32 100)
  %27 = add i64 %25, %26
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %41, %2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @workdata, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TEGRA20_AC97_STATUS1, align 4
  %33 = call i32 @regmap_read(i32 %31, i32 %32, i32* %5)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @TEGRA20_AC97_STATUS1_STA_VALID1, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %47

39:                                               ; preds = %28
  %40 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %41

41:                                               ; preds = %39
  %42 = load i64, i64* @jiffies, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @time_after(i64 %42, i64 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %28, label %47

47:                                               ; preds = %41, %38
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @TEGRA20_AC97_STATUS1_STA_DATA1_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @TEGRA20_AC97_STATUS1_STA_DATA1_SHIFT, align 4
  %52 = ashr i32 %50, %51
  %53 = trunc i32 %52 to i16
  ret i16 %53
}

declare dso_local i32 @regmap_write(i32, i32, i16 zeroext) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
