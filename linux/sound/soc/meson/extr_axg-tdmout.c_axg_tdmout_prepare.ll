; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdmout.c_axg_tdmout_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdmout.c_axg_tdmout_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.axg_tdm_formatter_hw = type { i32 }
%struct.axg_tdm_stream = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unsupported format: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TDMOUT_CTRL0 = common dso_local global i32 0, align 4
@TDMOUT_CTRL0_INIT_BITNUM_MASK = common dso_local global i32 0, align 4
@TDMOUT_CTRL0_BITNUM_MASK = common dso_local global i32 0, align 4
@TDMOUT_CTRL0_SLOTNUM_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unsupported physical width: %u\0A\00", align 1
@TDMOUT_CTRL1_WS_INV = common dso_local global i32 0, align 4
@TDMOUT_CTRL1 = common dso_local global i32 0, align 4
@TDMOUT_CTRL1_TYPE_MASK = common dso_local global i32 0, align 4
@TDMOUT_CTRL1_MSB_POS_MASK = common dso_local global i32 0, align 4
@TDMOUT_SWAP = common dso_local global i32 0, align 4
@TDMOUT_MASK0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, %struct.axg_tdm_formatter_hw*, %struct.axg_tdm_stream*)* @axg_tdmout_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_tdmout_prepare(%struct.regmap* %0, %struct.axg_tdm_formatter_hw* %1, %struct.axg_tdm_stream* %2) #0 {
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
  %14 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %24 [
    i32 129, label %20
    i32 131, label %20
    i32 128, label %21
    i32 130, label %21
  ]

20:                                               ; preds = %3, %3
  br label %35

21:                                               ; preds = %3, %3
  %22 = load i32, i32* %9, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %9, align 4
  br label %35

24:                                               ; preds = %3
  %25 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %7, align 8
  %26 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %121

35:                                               ; preds = %21, %20
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @TDMOUT_CTRL0_INIT_BITNUM(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %7, align 8
  %39 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, 1
  %44 = call i32 @TDMOUT_CTRL0_BITNUM(i64 %43)
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %7, align 8
  %48 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, 1
  %53 = call i32 @TDMOUT_CTRL0_SLOTNUM(i64 %52)
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load %struct.regmap*, %struct.regmap** %5, align 8
  %57 = load i32, i32* @TDMOUT_CTRL0, align 4
  %58 = load i32, i32* @TDMOUT_CTRL0_INIT_BITNUM_MASK, align 4
  %59 = load i32, i32* @TDMOUT_CTRL0_BITNUM_MASK, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @TDMOUT_CTRL0_SLOTNUM_MASK, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @regmap_update_bits(%struct.regmap* %56, i32 %57, i32 %62, i32 %63)
  %65 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %7, align 8
  %66 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, 1
  %69 = call i32 @TDMOUT_CTRL1_MSB_POS(i64 %68)
  store i32 %69, i32* %8, align 4
  %70 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %7, align 8
  %71 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  switch i32 %72, label %85 [
    i32 8, label %73
    i32 16, label %77
    i32 32, label %81
  ]

73:                                               ; preds = %35
  %74 = call i32 @TDMOUT_CTRL1_TYPE(i32 0)
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %92

77:                                               ; preds = %35
  %78 = call i32 @TDMOUT_CTRL1_TYPE(i32 2)
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %92

81:                                               ; preds = %35
  %82 = call i32 @TDMOUT_CTRL1_TYPE(i32 4)
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %92

85:                                               ; preds = %35
  %86 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %7, align 8
  %87 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %121

92:                                               ; preds = %81, %77, %73
  %93 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %7, align 8
  %94 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @axg_tdm_lrclk_invert(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %92
  %101 = load i32, i32* @TDMOUT_CTRL1_WS_INV, align 4
  %102 = load i32, i32* %8, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %100, %92
  %105 = load %struct.regmap*, %struct.regmap** %5, align 8
  %106 = load i32, i32* @TDMOUT_CTRL1, align 4
  %107 = load i32, i32* @TDMOUT_CTRL1_TYPE_MASK, align 4
  %108 = load i32, i32* @TDMOUT_CTRL1_MSB_POS_MASK, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @TDMOUT_CTRL1_WS_INV, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @regmap_update_bits(%struct.regmap* %105, i32 %106, i32 %111, i32 %112)
  %114 = load %struct.regmap*, %struct.regmap** %5, align 8
  %115 = load i32, i32* @TDMOUT_SWAP, align 4
  %116 = call i32 @regmap_write(%struct.regmap* %114, i32 %115, i32 1985229328)
  %117 = load %struct.regmap*, %struct.regmap** %5, align 8
  %118 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %7, align 8
  %119 = load i32, i32* @TDMOUT_MASK0, align 4
  %120 = call i32 @axg_tdm_formatter_set_channel_masks(%struct.regmap* %117, %struct.axg_tdm_stream* %118, i32 %119)
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %104, %85, %24
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @TDMOUT_CTRL0_INIT_BITNUM(i32) #1

declare dso_local i32 @TDMOUT_CTRL0_BITNUM(i64) #1

declare dso_local i32 @TDMOUT_CTRL0_SLOTNUM(i64) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @TDMOUT_CTRL1_MSB_POS(i64) #1

declare dso_local i32 @TDMOUT_CTRL1_TYPE(i32) #1

declare dso_local i64 @axg_tdm_lrclk_invert(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @axg_tdm_formatter_set_channel_masks(%struct.regmap*, %struct.axg_tdm_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
