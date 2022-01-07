; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rk3328_codec.c_rk3328_codec_open_playback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rk3328_codec.c_rk3328_codec_open_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.rk3328_codec_priv = type { i32, i32 }

@DAC_PRECHARGE_CTRL = common dso_local global i32 0, align 4
@DAC_CHARGE_CURRENT_ALL_MASK = common dso_local global i32 0, align 4
@DAC_CHARGE_CURRENT_I = common dso_local global i32 0, align 4
@playback_open_list = common dso_local global %struct.TYPE_3__* null, align 8
@HPOUTL_GAIN_CTRL = common dso_local global i32 0, align 4
@HPOUTL_GAIN_MASK = common dso_local global i32 0, align 4
@OUT_VOLUME = common dso_local global i32 0, align 4
@HPOUTR_GAIN_CTRL = common dso_local global i32 0, align 4
@HPOUTR_GAIN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk3328_codec_priv*)* @rk3328_codec_open_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3328_codec_open_playback(%struct.rk3328_codec_priv* %0) #0 {
  %2 = alloca %struct.rk3328_codec_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.rk3328_codec_priv* %0, %struct.rk3328_codec_priv** %2, align 8
  %4 = load %struct.rk3328_codec_priv*, %struct.rk3328_codec_priv** %2, align 8
  %5 = getelementptr inbounds %struct.rk3328_codec_priv, %struct.rk3328_codec_priv* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @DAC_PRECHARGE_CTRL, align 4
  %8 = load i32, i32* @DAC_CHARGE_CURRENT_ALL_MASK, align 4
  %9 = load i32, i32* @DAC_CHARGE_CURRENT_I, align 4
  %10 = call i32 @regmap_update_bits(i32 %6, i32 %7, i32 %8, i32 %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %40, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @playback_open_list, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %11
  %17 = load %struct.rk3328_codec_priv*, %struct.rk3328_codec_priv** %2, align 8
  %18 = getelementptr inbounds %struct.rk3328_codec_priv, %struct.rk3328_codec_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @playback_open_list, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @playback_open_list, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @playback_open_list, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @regmap_update_bits(i32 %19, i32 %25, i32 %31, i32 %37)
  %39 = call i32 @mdelay(i32 1)
  br label %40

40:                                               ; preds = %16
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %11

43:                                               ; preds = %11
  %44 = load %struct.rk3328_codec_priv*, %struct.rk3328_codec_priv** %2, align 8
  %45 = getelementptr inbounds %struct.rk3328_codec_priv, %struct.rk3328_codec_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @msleep(i32 %46)
  %48 = load %struct.rk3328_codec_priv*, %struct.rk3328_codec_priv** %2, align 8
  %49 = call i32 @rk3328_analog_output(%struct.rk3328_codec_priv* %48, i32 1)
  %50 = load %struct.rk3328_codec_priv*, %struct.rk3328_codec_priv** %2, align 8
  %51 = getelementptr inbounds %struct.rk3328_codec_priv, %struct.rk3328_codec_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @HPOUTL_GAIN_CTRL, align 4
  %54 = load i32, i32* @HPOUTL_GAIN_MASK, align 4
  %55 = load i32, i32* @OUT_VOLUME, align 4
  %56 = call i32 @regmap_update_bits(i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.rk3328_codec_priv*, %struct.rk3328_codec_priv** %2, align 8
  %58 = getelementptr inbounds %struct.rk3328_codec_priv, %struct.rk3328_codec_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @HPOUTR_GAIN_CTRL, align 4
  %61 = load i32, i32* @HPOUTR_GAIN_MASK, align 4
  %62 = load i32, i32* @OUT_VOLUME, align 4
  %63 = call i32 @regmap_update_bits(i32 %59, i32 %60, i32 %61, i32 %62)
  ret i32 0
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rk3328_analog_output(%struct.rk3328_codec_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
