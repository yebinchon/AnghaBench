; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_ac97.c_tegra20_ac97_codec_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_ac97.c_tegra20_ac97_codec_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_ac97 = type { i32 }

@workdata = common dso_local global %struct.TYPE_2__* null, align 8
@jiffies = common dso_local global i64 0, align 8
@TEGRA20_AC97_STATUS1 = common dso_local global i32 0, align 4
@TEGRA20_AC97_STATUS1_CODEC1_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*)* @tegra20_ac97_codec_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra20_ac97_codec_reset(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @workdata, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @gpio_set_value(i32 %7, i32 0)
  %9 = call i32 @udelay(i32 2)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @workdata, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @gpio_set_value(i32 %12, i32 1)
  %14 = call i32 @udelay(i32 2)
  %15 = load i64, i64* @jiffies, align 8
  %16 = call i64 @msecs_to_jiffies(i32 100)
  %17 = add i64 %15, %16
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %31, %1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @workdata, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TEGRA20_AC97_STATUS1, align 4
  %23 = call i32 @regmap_read(i32 %21, i32 %22, i32* %3)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @TEGRA20_AC97_STATUS1_CODEC1_RDY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %37

29:                                               ; preds = %18
  %30 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %31

31:                                               ; preds = %29
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @time_after(i64 %32, i64 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %18, label %37

37:                                               ; preds = %31, %28
  ret void
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

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
