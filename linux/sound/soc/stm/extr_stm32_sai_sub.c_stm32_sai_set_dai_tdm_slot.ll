; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_set_dai_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_set_dai_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.stm32_sai_sub_data = type { i32, i32, i32, i8* }

@.str = private unnamed_addr constant [36 x i8] c"Slot setting relevant only for TDM\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Masks tx/rx:%#x/%#x, slots:%d, width:%d\0A\00", align 1
@SAI_SLOT_SIZE_16 = common dso_local global i32 0, align 4
@SAI_SLOT_SIZE_32 = common dso_local global i32 0, align 4
@SAI_SLOT_SIZE_AUTO = common dso_local global i32 0, align 4
@SAI_XSLOTR_SLOTSZ_MASK = common dso_local global i32 0, align 4
@SAI_XSLOTR_NBSLOT_MASK = common dso_local global i32 0, align 4
@SAI_XSLOTR_SLOTEN_MASK = common dso_local global i32 0, align 4
@STM_SAI_SLOTR_REGX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i8*, i8*, i32, i32)* @stm32_sai_set_dai_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_sai_set_dai_tdm_slot(%struct.snd_soc_dai* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.stm32_sai_sub_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %17 = call %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %16)
  store %struct.stm32_sai_sub_data* %17, %struct.stm32_sai_sub_data** %12, align 8
  %18 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %12, align 8
  %19 = call i64 @STM_SAI_PROTOCOL_IS_SPDIF(%struct.stm32_sai_sub_data* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_warn(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %92

26:                                               ; preds = %5
  %27 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %28 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %11, align 4
  switch i32 %35, label %40 [
    i32 16, label %36
    i32 32, label %38
  ]

36:                                               ; preds = %26
  %37 = load i32, i32* @SAI_SLOT_SIZE_16, align 4
  store i32 %37, i32* %15, align 4
  br label %42

38:                                               ; preds = %26
  %39 = load i32, i32* @SAI_SLOT_SIZE_32, align 4
  store i32 %39, i32* %15, align 4
  br label %42

40:                                               ; preds = %26
  %41 = load i32, i32* @SAI_SLOT_SIZE_AUTO, align 4
  store i32 %41, i32* %15, align 4
  br label %42

42:                                               ; preds = %40, %38, %36
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @SAI_XSLOTR_SLOTSZ_SET(i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %45, 1
  %47 = call i32 @SAI_XSLOTR_NBSLOT_SET(i32 %46)
  %48 = or i32 %44, %47
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* @SAI_XSLOTR_SLOTSZ_MASK, align 4
  %50 = load i32, i32* @SAI_XSLOTR_NBSLOT_MASK, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %14, align 4
  %52 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %12, align 8
  %53 = call i64 @STM_SAI_IS_PLAYBACK(%struct.stm32_sai_sub_data* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %42
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %12, align 8
  %58 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @SAI_XSLOTR_SLOTEN_SET(i8* %59)
  %61 = load i32, i32* %13, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %55, %42
  %64 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %12, align 8
  %65 = call i64 @STM_SAI_IS_CAPTURE(%struct.stm32_sai_sub_data* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i8*, i8** %9, align 8
  %69 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %12, align 8
  %70 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @SAI_XSLOTR_SLOTEN_SET(i8* %71)
  %73 = load i32, i32* %13, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %67, %63
  %76 = load i32, i32* @SAI_XSLOTR_SLOTEN_MASK, align 4
  %77 = load i32, i32* %14, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %14, align 4
  %79 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %12, align 8
  %80 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @STM_SAI_SLOTR_REGX, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @regmap_update_bits(i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %12, align 8
  %88 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %12, align 8
  %91 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %75, %21
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i64 @STM_SAI_PROTOCOL_IS_SPDIF(%struct.stm32_sai_sub_data*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @SAI_XSLOTR_SLOTSZ_SET(i32) #1

declare dso_local i32 @SAI_XSLOTR_NBSLOT_SET(i32) #1

declare dso_local i64 @STM_SAI_IS_PLAYBACK(%struct.stm32_sai_sub_data*) #1

declare dso_local i32 @SAI_XSLOTR_SLOTEN_SET(i8*) #1

declare dso_local i64 @STM_SAI_IS_CAPTURE(%struct.stm32_sai_sub_data*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
