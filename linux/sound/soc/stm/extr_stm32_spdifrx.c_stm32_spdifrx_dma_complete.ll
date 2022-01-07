; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_dma_complete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_dma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spdifrx_data = type { i8*, i32, %struct.TYPE_2__*, i32, i64, %struct.platform_device* }
%struct.TYPE_2__ = type { i64 }
%struct.platform_device = type { i32 }

@SPDIFRX_CS_BYTES_NB = common dso_local global i32 0, align 4
@STM32_SPDIFRX_CR = common dso_local global i32 0, align 4
@SPDIFRX_CR_CBDMAEN = common dso_local global i64 0, align 8
@SPDIFRX_CSR_SOB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Start of S/PDIF block not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to get channel status\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @stm32_spdifrx_dma_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_spdifrx_dma_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stm32_spdifrx_data*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.stm32_spdifrx_data*
  store %struct.stm32_spdifrx_data* %11, %struct.stm32_spdifrx_data** %3, align 8
  %12 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %13 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %12, i32 0, i32 5
  %14 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  store %struct.platform_device* %14, %struct.platform_device** %4, align 8
  %15 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %16 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @SPDIFRX_CS_BYTES_NB, align 4
  %23 = mul nsw i32 2, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = getelementptr inbounds i32, i32* %25, i64 -1
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %5, align 8
  store i32* %27, i32** %7, align 8
  %28 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %29 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i16*
  store i16* %31, i16** %8, align 8
  store i32 0, i32* %9, align 4
  %32 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %33 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @STM32_SPDIFRX_CR, align 4
  %36 = load i64, i64* @SPDIFRX_CR_CBDMAEN, align 8
  %37 = load i64, i64* @SPDIFRX_CR_CBDMAEN, align 8
  %38 = xor i64 %37, -1
  %39 = trunc i64 %38 to i32
  %40 = call i32 @regmap_update_bits(i32 %34, i32 %35, i64 %36, i32 %39)
  %41 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %42 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %1
  br label %108

48:                                               ; preds = %1
  br label %49

49:                                               ; preds = %60, %48
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = icmp ule i32* %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SPDIFRX_CSR_SOB, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %63

60:                                               ; preds = %53
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %7, align 8
  br label %49

63:                                               ; preds = %59, %49
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = icmp ugt i32* %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %108

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %101, %71
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @SPDIFRX_CS_BYTES_NB, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %104

76:                                               ; preds = %72
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @SPDIFRX_CSR_CSGET(i32 %78)
  %80 = trunc i64 %79 to i8
  %81 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %82 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  store i8 %80, i8* %86, align 1
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %7, align 8
  %89 = load i32, i32* %87, align 4
  %90 = call i32 @SPDIFRX_CSR_USRGET(i32 %89)
  %91 = trunc i32 %90 to i16
  %92 = load i16*, i16** %8, align 8
  %93 = getelementptr inbounds i16, i16* %92, i32 1
  store i16* %93, i16** %8, align 8
  store i16 %91, i16* %92, align 2
  %94 = load i32*, i32** %7, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = icmp ugt i32* %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %76
  %98 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 @dev_err(i32* %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %108

101:                                              ; preds = %76
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %72

104:                                              ; preds = %72
  %105 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %106 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %105, i32 0, i32 1
  %107 = call i32 @complete(i32* %106)
  br label %108

108:                                              ; preds = %104, %97, %67, %47
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @SPDIFRX_CSR_CSGET(i32) #1

declare dso_local i32 @SPDIFRX_CSR_USRGET(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
