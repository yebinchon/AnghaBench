; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_set_slots.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_set_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.stm32_sai_sub_data = type { i64, i64, i32, i32, i32 }

@STM_SAI_SLOTR_REGX = common dso_local global i32 0, align 4
@SAI_XSLOTR_SLOTSZ_MASK = common dso_local global i32 0, align 4
@SAI_SLOT_SIZE_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Data size %d larger than slot width\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SAI_XSLOTR_NBSLOT_MASK = common dso_local global i32 0, align 4
@SAI_XSLOTR_SLOTEN_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Slots %d, slot width %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @stm32_sai_set_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_sai_set_slots(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca %struct.stm32_sai_sub_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %8 = call %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %7)
  store %struct.stm32_sai_sub_data* %8, %struct.stm32_sai_sub_data** %4, align 8
  %9 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %10 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @STM_SAI_SLOTR_REGX, align 4
  %13 = call i32 @regmap_read(i32 %11, i32 %12, i32* %5)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SAI_XSLOTR_SLOTSZ_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SAI_SLOT_SIZE_AUTO, align 4
  %19 = call i32 @SAI_XSLOTR_SLOTSZ_SET(i32 %18)
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %23 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %26 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %21, %1
  %28 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %29 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %32 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %37 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %40 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %98

45:                                               ; preds = %27
  %46 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %47 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %52 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %51, i32 0, i32 2
  store i32 2, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %55 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @STM_SAI_SLOTR_REGX, align 4
  %58 = load i32, i32* @SAI_XSLOTR_NBSLOT_MASK, align 4
  %59 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %60 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = call i32 @SAI_XSLOTR_NBSLOT_SET(i32 %62)
  %64 = call i32 @regmap_update_bits(i32 %56, i32 %57, i32 %58, i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @SAI_XSLOTR_SLOTEN_MASK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %53
  %70 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %71 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 1, %72
  %74 = sub nsw i32 %73, 1
  %75 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %76 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %78 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @STM_SAI_SLOTR_REGX, align 4
  %81 = load i32, i32* @SAI_XSLOTR_SLOTEN_MASK, align 4
  %82 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %83 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @SAI_XSLOTR_SLOTEN_SET(i32 %84)
  %86 = call i32 @regmap_update_bits(i32 %79, i32 %80, i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %69, %53
  %88 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %89 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %92 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %95 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @dev_dbg(i32 %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %93, i64 %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %87, %35
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @SAI_XSLOTR_SLOTSZ_SET(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SAI_XSLOTR_NBSLOT_SET(i32) #1

declare dso_local i32 @SAI_XSLOTR_SLOTEN_SET(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
