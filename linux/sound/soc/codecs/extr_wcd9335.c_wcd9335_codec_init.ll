; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.snd_soc_component = type { i32 }
%struct.wcd9335_codec = type { i32 }

@WCD9335_CODEC_RPM_CLK_GATE = common dso_local global i32 0, align 4
@WCD9335_CODEC_RPM_CLK_GATE_MCLK_GATE_MASK = common dso_local global i32 0, align 4
@WCD9335_CODEC_RPM_CLK_MCLK_CFG = common dso_local global i32 0, align 4
@WCD9335_CODEC_RPM_CLK_MCLK_CFG_MCLK_MASK = common dso_local global i32 0, align 4
@WCD9335_CODEC_RPM_CLK_MCLK_CFG_9P6MHZ = common dso_local global i32 0, align 4
@wcd9335_codec_reg_init = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @wcd9335_codec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcd9335_codec_init(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wcd9335_codec*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.wcd9335_codec* @dev_get_drvdata(i32 %7)
  store %struct.wcd9335_codec* %8, %struct.wcd9335_codec** %3, align 8
  %9 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %10 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @WCD9335_CODEC_RPM_CLK_GATE, align 4
  %13 = load i32, i32* @WCD9335_CODEC_RPM_CLK_GATE_MCLK_GATE_MASK, align 4
  %14 = call i32 @regmap_update_bits(i32 %11, i32 %12, i32 %13, i32 0)
  %15 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %16 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @WCD9335_CODEC_RPM_CLK_MCLK_CFG, align 4
  %19 = load i32, i32* @WCD9335_CODEC_RPM_CLK_MCLK_CFG_MCLK_MASK, align 4
  %20 = load i32, i32* @WCD9335_CODEC_RPM_CLK_MCLK_CFG_9P6MHZ, align 4
  %21 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 %19, i32 %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %48, %1
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wcd9335_codec_reg_init, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %22
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wcd9335_codec_reg_init, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wcd9335_codec_reg_init, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wcd9335_codec_reg_init, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %28, i32 %34, i32 %40, i32 %46)
  br label %48

48:                                               ; preds = %27
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %22

51:                                               ; preds = %22
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %53 = call i32 @wcd9335_enable_efuse_sensing(%struct.snd_soc_component* %52)
  ret void
}

declare dso_local %struct.wcd9335_codec* @dev_get_drvdata(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @wcd9335_enable_efuse_sensing(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
