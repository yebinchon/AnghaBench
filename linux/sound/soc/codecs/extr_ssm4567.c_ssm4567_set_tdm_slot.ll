; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm4567.c_ssm4567_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm4567.c_ssm4567_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.ssm4567 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SSM4567_SAI_CTRL_1_TDM_BLCKS_32 = common dso_local global i32 0, align 4
@SSM4567_SAI_CTRL_1_TDM_BLCKS_48 = common dso_local global i32 0, align 4
@SSM4567_SAI_CTRL_1_TDM_BLCKS_64 = common dso_local global i32 0, align 4
@SSM4567_REG_SAI_CTRL_2 = common dso_local global i32 0, align 4
@SSM4567_SAI_CTRL_2_AUTO_SLOT = common dso_local global i32 0, align 4
@SSM4567_SAI_CTRL_2_TDM_SLOT_MASK = common dso_local global i32 0, align 4
@SSM4567_REG_SAI_CTRL_1 = common dso_local global i32 0, align 4
@SSM4567_SAI_CTRL_1_TDM_BLCKS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @ssm4567_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssm4567_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ssm4567*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %17 = call %struct.ssm4567* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %16)
  store %struct.ssm4567* %17, %struct.ssm4567** %12, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %77

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %77

33:                                               ; preds = %26, %23
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @__ffs(i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %77

43:                                               ; preds = %33
  %44 = load i32, i32* %11, align 4
  switch i32 %44, label %51 [
    i32 32, label %45
    i32 48, label %47
    i32 64, label %49
  ]

45:                                               ; preds = %43
  %46 = load i32, i32* @SSM4567_SAI_CTRL_1_TDM_BLCKS_32, align 4
  store i32 %46, i32* %13, align 4
  br label %54

47:                                               ; preds = %43
  %48 = load i32, i32* @SSM4567_SAI_CTRL_1_TDM_BLCKS_48, align 4
  store i32 %48, i32* %13, align 4
  br label %54

49:                                               ; preds = %43
  %50 = load i32, i32* @SSM4567_SAI_CTRL_1_TDM_BLCKS_64, align 4
  store i32 %50, i32* %13, align 4
  br label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %77

54:                                               ; preds = %49, %47, %45
  %55 = load %struct.ssm4567*, %struct.ssm4567** %12, align 8
  %56 = getelementptr inbounds %struct.ssm4567, %struct.ssm4567* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SSM4567_REG_SAI_CTRL_2, align 4
  %59 = load i32, i32* @SSM4567_SAI_CTRL_2_AUTO_SLOT, align 4
  %60 = load i32, i32* @SSM4567_SAI_CTRL_2_TDM_SLOT_MASK, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @SSM4567_SAI_CTRL_2_TDM_SLOT(i32 %62)
  %64 = call i32 @regmap_update_bits(i32 %57, i32 %58, i32 %61, i32 %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %6, align 4
  br label %77

69:                                               ; preds = %54
  %70 = load %struct.ssm4567*, %struct.ssm4567** %12, align 8
  %71 = getelementptr inbounds %struct.ssm4567, %struct.ssm4567* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @SSM4567_REG_SAI_CTRL_1, align 4
  %74 = load i32, i32* @SSM4567_SAI_CTRL_1_TDM_BLCKS_MASK, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @regmap_update_bits(i32 %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %69, %67, %51, %40, %30, %20
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local %struct.ssm4567* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SSM4567_SAI_CTRL_2_TDM_SLOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
