; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_mclk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_mclk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.stm32_sai_mclk_data = type { i64, %struct.stm32_sai_sub_data* }
%struct.stm32_sai_sub_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @stm32_sai_mclk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_sai_mclk_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.stm32_sai_mclk_data*, align 8
  %9 = alloca %struct.stm32_sai_sub_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %13 = call %struct.stm32_sai_mclk_data* @to_mclk_data(%struct.clk_hw* %12)
  store %struct.stm32_sai_mclk_data* %13, %struct.stm32_sai_mclk_data** %8, align 8
  %14 = load %struct.stm32_sai_mclk_data*, %struct.stm32_sai_mclk_data** %8, align 8
  %15 = getelementptr inbounds %struct.stm32_sai_mclk_data, %struct.stm32_sai_mclk_data* %14, i32 0, i32 1
  %16 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %15, align 8
  store %struct.stm32_sai_sub_data* %16, %struct.stm32_sai_sub_data** %9, align 8
  %17 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @stm32_sai_get_clk_div(%struct.stm32_sai_sub_data* %17, i64 %18, i64 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %37

25:                                               ; preds = %3
  %26 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @stm32_sai_set_clk_div(%struct.stm32_sai_sub_data* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %37

33:                                               ; preds = %25
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.stm32_sai_mclk_data*, %struct.stm32_sai_mclk_data** %8, align 8
  %36 = getelementptr inbounds %struct.stm32_sai_mclk_data, %struct.stm32_sai_mclk_data* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %31, %23
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.stm32_sai_mclk_data* @to_mclk_data(%struct.clk_hw*) #1

declare dso_local i32 @stm32_sai_get_clk_div(%struct.stm32_sai_sub_data*, i64, i64) #1

declare dso_local i32 @stm32_sai_set_clk_div(%struct.stm32_sai_sub_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
