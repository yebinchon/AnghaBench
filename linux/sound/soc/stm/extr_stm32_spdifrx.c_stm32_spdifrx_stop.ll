; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spdifrx_data = type { i32, i32, i64 }

@SPDIFRX_SPDIFEN_DISABLE = common dso_local global i32 0, align 4
@SPDIFRX_CR_SPDIFEN_MASK = common dso_local global i32 0, align 4
@SPDIFRX_CR_RXDMAEN = common dso_local global i32 0, align 4
@STM32_SPDIFRX_CR = common dso_local global i32 0, align 4
@STM32_SPDIFRX_IMR = common dso_local global i32 0, align 4
@SPDIFRX_XIMR_MASK = common dso_local global i32 0, align 4
@STM32_SPDIFRX_IFCR = common dso_local global i32 0, align 4
@SPDIFRX_XIFCR_MASK = common dso_local global i32 0, align 4
@STM32_SPDIFRX_DR = common dso_local global i32 0, align 4
@STM32_SPDIFRX_CSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_spdifrx_data*)* @stm32_spdifrx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_spdifrx_stop(%struct.stm32_spdifrx_data* %0) #0 {
  %2 = alloca %struct.stm32_spdifrx_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stm32_spdifrx_data* %0, %struct.stm32_spdifrx_data** %2, align 8
  %6 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %2, align 8
  %7 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %2, align 8
  %10 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %2, align 8
  %16 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %15, i32 0, i32 0
  %17 = call i32 @spin_unlock(i32* %16)
  br label %57

18:                                               ; preds = %1
  %19 = load i32, i32* @SPDIFRX_SPDIFEN_DISABLE, align 4
  %20 = call i32 @SPDIFRX_CR_SPDIFENSET(i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @SPDIFRX_CR_SPDIFEN_MASK, align 4
  %22 = load i32, i32* @SPDIFRX_CR_RXDMAEN, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %4, align 4
  %24 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %2, align 8
  %25 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @STM32_SPDIFRX_CR, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %2, align 8
  %32 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @STM32_SPDIFRX_IMR, align 4
  %35 = load i32, i32* @SPDIFRX_XIMR_MASK, align 4
  %36 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %35, i32 0)
  %37 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %2, align 8
  %38 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @STM32_SPDIFRX_IFCR, align 4
  %41 = load i32, i32* @SPDIFRX_XIFCR_MASK, align 4
  %42 = load i32, i32* @SPDIFRX_XIFCR_MASK, align 4
  %43 = call i32 @regmap_update_bits(i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %2, align 8
  %45 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @STM32_SPDIFRX_DR, align 4
  %48 = call i32 @regmap_read(i32 %46, i32 %47, i32* %5)
  %49 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %2, align 8
  %50 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @STM32_SPDIFRX_CSR, align 4
  %53 = call i32 @regmap_read(i32 %51, i32 %52, i32* %5)
  %54 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %2, align 8
  %55 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  br label %57

57:                                               ; preds = %18, %14
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @SPDIFRX_CR_SPDIFENSET(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
