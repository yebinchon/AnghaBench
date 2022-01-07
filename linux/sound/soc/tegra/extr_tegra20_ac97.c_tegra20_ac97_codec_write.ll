; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_ac97.c_tegra20_ac97_codec_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_ac97.c_tegra20_ac97_codec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snd_ac97 = type { i32 }

@workdata = common dso_local global %struct.TYPE_2__* null, align 8
@TEGRA20_AC97_CMD = common dso_local global i32 0, align 4
@TEGRA20_AC97_CMD_CMD_ADDR_SHIFT = common dso_local global i16 0, align 2
@TEGRA20_AC97_CMD_CMD_ADDR_MASK = common dso_local global i16 0, align 2
@TEGRA20_AC97_CMD_CMD_DATA_SHIFT = common dso_local global i16 0, align 2
@TEGRA20_AC97_CMD_CMD_DATA_MASK = common dso_local global i16 0, align 2
@TEGRA20_AC97_CMD_BUSY = common dso_local global i16 0, align 2
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @tegra20_ac97_codec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra20_ac97_codec_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i64, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @workdata, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TEGRA20_AC97_CMD, align 4
  %13 = load i16, i16* %5, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @TEGRA20_AC97_CMD_CMD_ADDR_SHIFT, align 2
  %16 = zext i16 %15 to i32
  %17 = shl i32 %14, %16
  %18 = load i16, i16* @TEGRA20_AC97_CMD_CMD_ADDR_MASK, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %17, %19
  %21 = load i16, i16* %6, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* @TEGRA20_AC97_CMD_CMD_DATA_SHIFT, align 2
  %24 = zext i16 %23 to i32
  %25 = shl i32 %22, %24
  %26 = load i16, i16* @TEGRA20_AC97_CMD_CMD_DATA_MASK, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %25, %27
  %29 = or i32 %20, %28
  %30 = load i16, i16* @TEGRA20_AC97_CMD_BUSY, align 2
  %31 = zext i16 %30 to i32
  %32 = or i32 %29, %31
  %33 = trunc i32 %32 to i16
  %34 = call i32 @regmap_write(i32 %11, i32 %12, i16 zeroext %33)
  %35 = load i64, i64* @jiffies, align 8
  %36 = call i64 @msecs_to_jiffies(i32 100)
  %37 = add i64 %35, %36
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %53, %3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @workdata, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @TEGRA20_AC97_CMD, align 4
  %43 = call i32 @regmap_read(i32 %41, i32 %42, i16* %7)
  %44 = load i16, i16* %7, align 2
  %45 = zext i16 %44 to i32
  %46 = load i16, i16* @TEGRA20_AC97_CMD_BUSY, align 2
  %47 = zext i16 %46 to i32
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %38
  br label %59

51:                                               ; preds = %38
  %52 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %53

53:                                               ; preds = %51
  %54 = load i64, i64* @jiffies, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @time_after(i64 %54, i64 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %38, label %59

59:                                               ; preds = %53, %50
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i16 zeroext) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i16*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
