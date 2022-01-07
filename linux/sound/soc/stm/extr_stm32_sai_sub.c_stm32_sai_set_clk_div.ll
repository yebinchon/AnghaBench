; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_set_clk_div.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_set_clk_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_sai_sub_data = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Divider %d out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@STM_SAI_CR1_REGX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to update CR1 register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_sai_sub_data*, i32)* @stm32_sai_set_clk_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_sai_set_clk_div(%struct.stm32_sai_sub_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_sai_sub_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stm32_sai_sub_data* %0, %struct.stm32_sai_sub_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %11 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @SAI_XCR1_MCKDIV_MAX(i32 %17)
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %22 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i32*, i8*, ...) @dev_err(i32* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %52

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @SAI_XCR1_MCKDIV_WIDTH(i32 %30)
  %32 = call i32 @SAI_XCR1_MCKDIV_MASK(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @SAI_XCR1_MCKDIV_SET(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %36 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @STM_SAI_CR1_REGX, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %29
  %45 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %46 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %44, %29
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %20
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @SAI_XCR1_MCKDIV_MAX(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @SAI_XCR1_MCKDIV_MASK(i32) #1

declare dso_local i32 @SAI_XCR1_MCKDIV_WIDTH(i32) #1

declare dso_local i32 @SAI_XCR1_MCKDIV_SET(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
