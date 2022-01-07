; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rk3328_codec.c_rk3328_codec_close_playback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rk3328_codec.c_rk3328_codec_close_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.rk3328_codec_priv = type { i32 }

@HPOUTL_GAIN_CTRL = common dso_local global i32 0, align 4
@HPOUTL_GAIN_MASK = common dso_local global i32 0, align 4
@HPOUTR_GAIN_CTRL = common dso_local global i32 0, align 4
@HPOUTR_GAIN_MASK = common dso_local global i32 0, align 4
@playback_close_list = common dso_local global %struct.TYPE_3__* null, align 8
@DAC_PRECHARGE_CTRL = common dso_local global i32 0, align 4
@DAC_CHARGE_CURRENT_ALL_MASK = common dso_local global i32 0, align 4
@DAC_CHARGE_CURRENT_ALL_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk3328_codec_priv*)* @rk3328_codec_close_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3328_codec_close_playback(%struct.rk3328_codec_priv* %0) #0 {
  %2 = alloca %struct.rk3328_codec_priv*, align 8
  %3 = alloca i64, align 8
  store %struct.rk3328_codec_priv* %0, %struct.rk3328_codec_priv** %2, align 8
  %4 = load %struct.rk3328_codec_priv*, %struct.rk3328_codec_priv** %2, align 8
  %5 = call i32 @rk3328_analog_output(%struct.rk3328_codec_priv* %4, i32 0)
  %6 = load %struct.rk3328_codec_priv*, %struct.rk3328_codec_priv** %2, align 8
  %7 = getelementptr inbounds %struct.rk3328_codec_priv, %struct.rk3328_codec_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @HPOUTL_GAIN_CTRL, align 4
  %10 = load i32, i32* @HPOUTL_GAIN_MASK, align 4
  %11 = call i32 @regmap_update_bits(i32 %8, i32 %9, i32 %10, i32 0)
  %12 = load %struct.rk3328_codec_priv*, %struct.rk3328_codec_priv** %2, align 8
  %13 = getelementptr inbounds %struct.rk3328_codec_priv, %struct.rk3328_codec_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @HPOUTR_GAIN_CTRL, align 4
  %16 = load i32, i32* @HPOUTR_GAIN_MASK, align 4
  %17 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %16, i32 0)
  store i64 0, i64* %3, align 8
  br label %18

18:                                               ; preds = %44, %1
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @playback_close_list, align 8
  %21 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %20)
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  %24 = load %struct.rk3328_codec_priv*, %struct.rk3328_codec_priv** %2, align 8
  %25 = getelementptr inbounds %struct.rk3328_codec_priv, %struct.rk3328_codec_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @playback_close_list, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @playback_close_list, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @playback_close_list, align 8
  %38 = load i64, i64* %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @regmap_update_bits(i32 %26, i32 %31, i32 %36, i32 %41)
  %43 = call i32 @mdelay(i32 1)
  br label %44

44:                                               ; preds = %23
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %3, align 8
  br label %18

47:                                               ; preds = %18
  %48 = load %struct.rk3328_codec_priv*, %struct.rk3328_codec_priv** %2, align 8
  %49 = call i32 @rk3328_codec_reset(%struct.rk3328_codec_priv* %48)
  %50 = load %struct.rk3328_codec_priv*, %struct.rk3328_codec_priv** %2, align 8
  %51 = getelementptr inbounds %struct.rk3328_codec_priv, %struct.rk3328_codec_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DAC_PRECHARGE_CTRL, align 4
  %54 = load i32, i32* @DAC_CHARGE_CURRENT_ALL_MASK, align 4
  %55 = load i32, i32* @DAC_CHARGE_CURRENT_ALL_ON, align 4
  %56 = call i32 @regmap_update_bits(i32 %52, i32 %53, i32 %54, i32 %55)
  ret i32 0
}

declare dso_local i32 @rk3328_analog_output(%struct.rk3328_codec_priv*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rk3328_codec_reset(%struct.rk3328_codec_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
