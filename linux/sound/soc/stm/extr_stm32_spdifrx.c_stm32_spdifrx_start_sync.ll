; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_start_sync.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_start_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spdifrx_data = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SPDIFRX_IMR_IFEIE = common dso_local global i32 0, align 4
@SPDIFRX_IMR_SYNCDIE = common dso_local global i32 0, align 4
@SPDIFRX_IMR_PERRIE = common dso_local global i32 0, align 4
@STM32_SPDIFRX_IMR = common dso_local global i32 0, align 4
@STM32_SPDIFRX_CR = common dso_local global i32 0, align 4
@SPDIFRX_CR_SPDIFEN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"start synchronization\0A\00", align 1
@SPDIFRX_CR_WFA = common dso_local global i32 0, align 4
@SPDIFRX_CR_PMSK = common dso_local global i32 0, align 4
@SPDIFRX_CR_VMSK = common dso_local global i32 0, align 4
@SPDIFRX_CR_CUMSK = common dso_local global i32 0, align 4
@SPDIFRX_CR_PTMSK = common dso_local global i32 0, align 4
@SPDIFRX_CR_RXSTEO = common dso_local global i32 0, align 4
@SPDIFRX_SPDIFEN_SYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to start synchronization\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_spdifrx_data*)* @stm32_spdifrx_start_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_spdifrx_start_sync(%struct.stm32_spdifrx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_spdifrx_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stm32_spdifrx_data* %0, %struct.stm32_spdifrx_data** %3, align 8
  %8 = load i32, i32* @SPDIFRX_IMR_IFEIE, align 4
  %9 = load i32, i32* @SPDIFRX_IMR_SYNCDIE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SPDIFRX_IMR_PERRIE, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %14 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @STM32_SPDIFRX_IMR, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %87

24:                                               ; preds = %1
  %25 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %26 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %29 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %33 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @STM32_SPDIFRX_CR, align 4
  %36 = call i32 @regmap_read(i32 %34, i32 %35, i32* %4)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @SPDIFRX_CR_SPDIFEN_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %82, label %41

41:                                               ; preds = %24
  %42 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %43 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @dev_dbg(i32* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @SPDIFRX_CR_WFA, align 4
  %48 = load i32, i32* @SPDIFRX_CR_PMSK, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @SPDIFRX_CR_VMSK, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @SPDIFRX_CR_CUMSK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @SPDIFRX_CR_PTMSK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @SPDIFRX_CR_RXSTEO, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @SPDIFRX_SPDIFEN_SYNC, align 4
  %60 = call i32 @SPDIFRX_CR_SPDIFENSET(i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* @SPDIFRX_CR_SPDIFEN_MASK, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %67 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @STM32_SPDIFRX_CR, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @regmap_update_bits(i32 %68, i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %41
  %76 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %77 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %75, %41
  br label %82

82:                                               ; preds = %81, %24
  %83 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %84 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %82, %22
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @SPDIFRX_CR_SPDIFENSET(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
