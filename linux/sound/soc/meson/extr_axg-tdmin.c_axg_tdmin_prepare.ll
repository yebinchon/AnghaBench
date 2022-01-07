; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdmin.c_axg_tdmin_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdmin.c_axg_tdmin_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.axg_tdm_formatter_hw = type { i32 }
%struct.axg_tdm_stream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unsupported format: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TDMIN_CTRL_I2S_MODE = common dso_local global i32 0, align 4
@TDMIN_CTRL_WS_INV = common dso_local global i32 0, align 4
@TDMIN_CTRL = common dso_local global i32 0, align 4
@TDMIN_CTRL_IN_BIT_SKEW_MASK = common dso_local global i32 0, align 4
@TDMIN_CTRL_LSB_FIRST = common dso_local global i32 0, align 4
@TDMIN_CTRL_BITNUM_MASK = common dso_local global i32 0, align 4
@TDMIN_SWAP = common dso_local global i32 0, align 4
@TDMIN_MASK0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, %struct.axg_tdm_formatter_hw*, %struct.axg_tdm_stream*)* @axg_tdmin_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_tdmin_prepare(%struct.regmap* %0, %struct.axg_tdm_formatter_hw* %1, %struct.axg_tdm_stream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.axg_tdm_formatter_hw*, align 8
  %7 = alloca %struct.axg_tdm_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %5, align 8
  store %struct.axg_tdm_formatter_hw* %1, %struct.axg_tdm_formatter_hw** %6, align 8
  store %struct.axg_tdm_stream* %2, %struct.axg_tdm_stream** %7, align 8
  %10 = load %struct.axg_tdm_formatter_hw*, %struct.axg_tdm_formatter_hw** %6, align 8
  %11 = getelementptr inbounds %struct.axg_tdm_formatter_hw, %struct.axg_tdm_formatter_hw* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %7, align 8
  %14 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %24 [
    i32 130, label %20
    i32 132, label %20
    i32 129, label %23
    i32 131, label %23
  ]

20:                                               ; preds = %3, %3
  %21 = load i32, i32* %9, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %9, align 4
  br label %35

23:                                               ; preds = %3, %3
  br label %35

24:                                               ; preds = %3
  %25 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %7, align 8
  %26 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %91

35:                                               ; preds = %23, %20
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @TDMIN_CTRL_IN_BIT_SKEW(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %7, align 8
  %39 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %44 = and i32 %42, %43
  switch i32 %44, label %49 [
    i32 130, label %45
    i32 129, label %45
    i32 128, label %45
  ]

45:                                               ; preds = %35, %35, %35
  %46 = load i32, i32* @TDMIN_CTRL_I2S_MODE, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %35, %45
  %50 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %7, align 8
  %51 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @axg_tdm_lrclk_invert(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i32, i32* @TDMIN_CTRL_WS_INV, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %57, %49
  %62 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %7, align 8
  %63 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %66, 1
  %68 = call i32 @TDMIN_CTRL_BITNUM(i64 %67)
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load %struct.regmap*, %struct.regmap** %5, align 8
  %72 = load i32, i32* @TDMIN_CTRL, align 4
  %73 = load i32, i32* @TDMIN_CTRL_IN_BIT_SKEW_MASK, align 4
  %74 = load i32, i32* @TDMIN_CTRL_WS_INV, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @TDMIN_CTRL_I2S_MODE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @TDMIN_CTRL_LSB_FIRST, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @TDMIN_CTRL_BITNUM_MASK, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @regmap_update_bits(%struct.regmap* %71, i32 %72, i32 %81, i32 %82)
  %84 = load %struct.regmap*, %struct.regmap** %5, align 8
  %85 = load i32, i32* @TDMIN_SWAP, align 4
  %86 = call i32 @regmap_write(%struct.regmap* %84, i32 %85, i32 1985229328)
  %87 = load %struct.regmap*, %struct.regmap** %5, align 8
  %88 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %7, align 8
  %89 = load i32, i32* @TDMIN_MASK0, align 4
  %90 = call i32 @axg_tdm_formatter_set_channel_masks(%struct.regmap* %87, %struct.axg_tdm_stream* %88, i32 %89)
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %61, %24
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @TDMIN_CTRL_IN_BIT_SKEW(i32) #1

declare dso_local i64 @axg_tdm_lrclk_invert(i32) #1

declare dso_local i32 @TDMIN_CTRL_BITNUM(i64) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @axg_tdm_formatter_set_channel_masks(%struct.regmap*, %struct.axg_tdm_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
