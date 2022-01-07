; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-clock-ctrl.c_mt2701_afe_enable_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-clock-ctrl.c_mt2701_afe_enable_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"failed to enable audio system %d\0A\00", align 1
@ASYS_TOP_CON = common dso_local global i32 0, align 4
@ASYS_TOP_CON_ASYS_TIMING_ON = common dso_local global i32 0, align 4
@AFE_DAC_CON0 = common dso_local global i32 0, align 4
@AFE_DAC_CON0_AFE_ON = common dso_local global i32 0, align 4
@PWR1_ASM_CON1 = common dso_local global i32 0, align 4
@PWR1_ASM_CON1_INIT_VAL = common dso_local global i32 0, align 4
@PWR2_ASM_CON1 = common dso_local global i32 0, align 4
@PWR2_ASM_CON1_INIT_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt2701_afe_enable_clock(%struct.mtk_base_afe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_base_afe*, align 8
  %4 = alloca i32, align 4
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %3, align 8
  %5 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %6 = call i32 @mt2701_afe_enable_audsys(%struct.mtk_base_afe* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %11 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @dev_err(i32 %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %18 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ASYS_TOP_CON, align 4
  %21 = load i32, i32* @ASYS_TOP_CON_ASYS_TIMING_ON, align 4
  %22 = load i32, i32* @ASYS_TOP_CON_ASYS_TIMING_ON, align 4
  %23 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %25 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AFE_DAC_CON0, align 4
  %28 = load i32, i32* @AFE_DAC_CON0_AFE_ON, align 4
  %29 = load i32, i32* @AFE_DAC_CON0_AFE_ON, align 4
  %30 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %32 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PWR1_ASM_CON1, align 4
  %35 = load i32, i32* @PWR1_ASM_CON1_INIT_VAL, align 4
  %36 = call i32 @regmap_write(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %38 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PWR2_ASM_CON1, align 4
  %41 = load i32, i32* @PWR2_ASM_CON1_INIT_VAL, align 4
  %42 = call i32 @regmap_write(i32 %39, i32 %40, i32 %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %16, %9
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @mt2701_afe_enable_audsys(%struct.mtk_base_afe*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
