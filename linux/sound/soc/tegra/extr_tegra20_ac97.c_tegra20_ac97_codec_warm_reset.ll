; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_ac97.c_tegra20_ac97_codec_warm_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_ac97.c_tegra20_ac97_codec_warm_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_ac97 = type { i32 }

@workdata = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"codec-sync\00", align 1
@jiffies = common dso_local global i64 0, align 8
@TEGRA20_AC97_STATUS1 = common dso_local global i32 0, align 4
@TEGRA20_AC97_STATUS1_CODEC1_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*)* @tegra20_ac97_codec_warm_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra20_ac97_codec_warm_reset(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @workdata, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @gpio_request(i32 %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @workdata, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @gpio_direction_output(i32 %11, i32 1)
  %13 = call i32 @udelay(i32 2)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @workdata, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gpio_set_value(i32 %16, i32 0)
  %18 = call i32 @udelay(i32 2)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @workdata, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @gpio_free(i32 %21)
  %23 = load i64, i64* @jiffies, align 8
  %24 = call i64 @msecs_to_jiffies(i32 100)
  %25 = add i64 %23, %24
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %39, %1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @workdata, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TEGRA20_AC97_STATUS1, align 4
  %31 = call i32 @regmap_read(i32 %29, i32 %30, i32* %3)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @TEGRA20_AC97_STATUS1_CODEC1_RDY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %45

37:                                               ; preds = %26
  %38 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %39

39:                                               ; preds = %37
  %40 = load i64, i64* @jiffies, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @time_after(i64 %40, i64 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br i1 %44, label %26, label %45

45:                                               ; preds = %39, %36
  ret void
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @gpio_free(i32) #1

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
