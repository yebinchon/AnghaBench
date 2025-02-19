; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_set_dai_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_set_dai_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@DA7218_DAI_TDM_CTRL = common dso_local global i32 0, align 4
@DA7218_DAI_TDM_CH_EN_MASK = common dso_local global i32 0, align 4
@DA7218_DAI_TDM_MODE_EN_MASK = common dso_local global i32 0, align 4
@DA7218_DAI_CLK_MODE = common dso_local global i32 0, align 4
@DA7218_DAI_BCLKS_PER_WCLK_MASK = common dso_local global i32 0, align 4
@DA7218_DAI_BCLKS_PER_WCLK_64 = common dso_local global i32 0, align 4
@DA7218_DAI_TDM_MAX_SLOTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Invalid number of slots, max = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DA7218_2BYTE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid slot offset, max = %d\0A\00", align 1
@DA7218_2BYTE_MASK = common dso_local global i32 0, align 4
@DA7218_DAI_BCLKS_PER_WCLK_32 = common dso_local global i32 0, align 4
@DA7218_DAI_BCLKS_PER_WCLK_128 = common dso_local global i32 0, align 4
@DA7218_DAI_BCLKS_PER_WCLK_256 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid frame size\0A\00", align 1
@DA7218_DAI_OFFSET_LOWER = common dso_local global i32 0, align 4
@DA7218_BYTE_MASK = common dso_local global i32 0, align 4
@DA7218_DAI_OFFSET_UPPER = common dso_local global i32 0, align 4
@DA7218_BYTE_SHIFT = common dso_local global i32 0, align 4
@DA7218_DAI_TDM_CH_EN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @da7218_set_dai_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7218_set_dai_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %12, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %5
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %22 = load i32, i32* @DA7218_DAI_TDM_CTRL, align 4
  %23 = load i32, i32* @DA7218_DAI_TDM_CH_EN_MASK, align 4
  %24 = load i32, i32* @DA7218_DAI_TDM_MODE_EN_MASK, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %21, i32 %22, i32 %25, i32 0)
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %28 = load i32, i32* @DA7218_DAI_CLK_MODE, align 4
  %29 = load i32, i32* @DA7218_DAI_BCLKS_PER_WCLK_MASK, align 4
  %30 = load i32, i32* @DA7218_DAI_BCLKS_PER_WCLK_64, align 4
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %27, i32 %28, i32 %29, i32 %30)
  store i32 0, i32* %6, align 4
  br label %109

32:                                               ; preds = %5
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @fls(i32 %33)
  %35 = load i64, i64* @DA7218_DAI_TDM_MAX_SLOTS, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %39 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* @DA7218_DAI_TDM_MAX_SLOTS, align 8
  %42 = call i32 (i32, i8*, ...) @dev_err(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %109

45:                                               ; preds = %32
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @DA7218_2BYTE_SHIFT, align 4
  %48 = lshr i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %52 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DA7218_2BYTE_MASK, align 4
  %55 = call i32 (i32, i8*, ...) @dev_err(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %109

58:                                               ; preds = %45
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = mul nsw i32 %59, %60
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  switch i32 %62, label %71 [
    i32 32, label %63
    i32 64, label %65
    i32 128, label %67
    i32 256, label %69
  ]

63:                                               ; preds = %58
  %64 = load i32, i32* @DA7218_DAI_BCLKS_PER_WCLK_32, align 4
  store i32 %64, i32* %13, align 4
  br label %78

65:                                               ; preds = %58
  %66 = load i32, i32* @DA7218_DAI_BCLKS_PER_WCLK_64, align 4
  store i32 %66, i32* %13, align 4
  br label %78

67:                                               ; preds = %58
  %68 = load i32, i32* @DA7218_DAI_BCLKS_PER_WCLK_128, align 4
  store i32 %68, i32* %13, align 4
  br label %78

69:                                               ; preds = %58
  %70 = load i32, i32* @DA7218_DAI_BCLKS_PER_WCLK_256, align 4
  store i32 %70, i32* %13, align 4
  br label %78

71:                                               ; preds = %58
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %73 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %109

78:                                               ; preds = %69, %67, %65, %63
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %80 = load i32, i32* @DA7218_DAI_CLK_MODE, align 4
  %81 = load i32, i32* @DA7218_DAI_BCLKS_PER_WCLK_MASK, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %79, i32 %80, i32 %81, i32 %82)
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %85 = load i32, i32* @DA7218_DAI_OFFSET_LOWER, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @DA7218_BYTE_MASK, align 4
  %88 = and i32 %86, %87
  %89 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %84, i32 %85, i32 %88)
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %91 = load i32, i32* @DA7218_DAI_OFFSET_UPPER, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @DA7218_BYTE_SHIFT, align 4
  %94 = lshr i32 %92, %93
  %95 = load i32, i32* @DA7218_BYTE_MASK, align 4
  %96 = and i32 %94, %95
  %97 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %90, i32 %91, i32 %96)
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %99 = load i32, i32* @DA7218_DAI_TDM_CTRL, align 4
  %100 = load i32, i32* @DA7218_DAI_TDM_CH_EN_MASK, align 4
  %101 = load i32, i32* @DA7218_DAI_TDM_MODE_EN_MASK, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @DA7218_DAI_TDM_CH_EN_SHIFT, align 4
  %105 = shl i32 %103, %104
  %106 = load i32, i32* @DA7218_DAI_TDM_MODE_EN_MASK, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %98, i32 %99, i32 %102, i32 %107)
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %78, %71, %50, %37, %20
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i64 @fls(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
