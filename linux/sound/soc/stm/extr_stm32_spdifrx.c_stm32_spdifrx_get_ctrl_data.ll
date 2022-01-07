; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_get_ctrl_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_get_ctrl_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spdifrx_data = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SPDIFRX_CS_BYTES_NB = common dso_local global i32 0, align 4
@SPDIFRX_UB_BYTES_NB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Enable kclk failed: %d\0A\00", align 1
@STM32_SPDIFRX_CR = common dso_local global i32 0, align 4
@SPDIFRX_CR_CBDMAEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to get control data\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_spdifrx_data*)* @stm32_spdifrx_get_ctrl_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_spdifrx_get_ctrl_data(%struct.stm32_spdifrx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_spdifrx_data*, align 8
  %4 = alloca i32, align 4
  store %struct.stm32_spdifrx_data* %0, %struct.stm32_spdifrx_data** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %6 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @SPDIFRX_CS_BYTES_NB, align 4
  %9 = call i32 @memset(i32 %7, i32 0, i32 %8)
  %10 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %11 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SPDIFRX_UB_BYTES_NB, align 4
  %14 = call i32 @memset(i32 %12, i32 0, i32 %13)
  %15 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %16 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @pinctrl_pm_select_default_state(i32* %18)
  %20 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %21 = call i32 @stm32_spdifrx_dma_ctrl_start(%struct.stm32_spdifrx_data* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %88

26:                                               ; preds = %1
  %27 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %28 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @clk_prepare_enable(i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %35 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %88

41:                                               ; preds = %26
  %42 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %43 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @STM32_SPDIFRX_CR, align 4
  %46 = load i32, i32* @SPDIFRX_CR_CBDMAEN, align 4
  %47 = load i32, i32* @SPDIFRX_CR_CBDMAEN, align 4
  %48 = call i32 @regmap_update_bits(i32 %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %77

52:                                               ; preds = %41
  %53 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %54 = call i32 @stm32_spdifrx_start_sync(%struct.stm32_spdifrx_data* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %77

58:                                               ; preds = %52
  %59 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %60 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %59, i32 0, i32 2
  %61 = call i32 @msecs_to_jiffies(i32 100)
  %62 = call i64 @wait_for_completion_interruptible_timeout(i32* %60, i32 %61)
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %66 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @dev_dbg(i32* %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @EAGAIN, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %64, %58
  %73 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %74 = call i32 @stm32_spdifrx_stop(%struct.stm32_spdifrx_data* %73)
  %75 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %76 = call i32 @stm32_spdifrx_dma_ctrl_stop(%struct.stm32_spdifrx_data* %75)
  br label %77

77:                                               ; preds = %72, %57, %51
  %78 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %79 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @clk_disable_unprepare(i32 %80)
  %82 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %83 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = call i32 @pinctrl_pm_select_sleep_state(i32* %85)
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %77, %33, %24
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @pinctrl_pm_select_default_state(i32*) #1

declare dso_local i32 @stm32_spdifrx_dma_ctrl_start(%struct.stm32_spdifrx_data*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @stm32_spdifrx_start_sync(%struct.stm32_spdifrx_data*) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @stm32_spdifrx_stop(%struct.stm32_spdifrx_data*) #1

declare dso_local i32 @stm32_spdifrx_dma_ctrl_stop(%struct.stm32_spdifrx_data*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pinctrl_pm_select_sleep_state(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
