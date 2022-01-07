; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sirf/extr_sirf-usp.c_sirf_usp_i2s_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sirf/extr_sirf-usp.c_sirf_usp_i2s_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirf_usp = type { i32 }

@USP_RISC_DSP_MODE = common dso_local global i32 0, align 4
@USP_RISC_DSP_SEL = common dso_local global i32 0, align 4
@USP_TX_DMA_IO_LEN = common dso_local global i32 0, align 4
@USP_RX_DMA_IO_LEN = common dso_local global i32 0, align 4
@USP_MODE2 = common dso_local global i32 0, align 4
@USP_RXD_DELAY_LEN_OFFSET = common dso_local global i32 0, align 4
@USP_TXD_DELAY_LEN_OFFSET = common dso_local global i32 0, align 4
@USP_TFS_CLK_SLAVE_MODE = common dso_local global i32 0, align 4
@USP_RFS_CLK_SLAVE_MODE = common dso_local global i32 0, align 4
@USP_MODE1 = common dso_local global i32 0, align 4
@USP_SYNC_MODE = common dso_local global i32 0, align 4
@USP_EN = common dso_local global i32 0, align 4
@USP_TXD_ACT_EDGE_FALLING = common dso_local global i32 0, align 4
@USP_RFS_ACT_LEVEL_LOGIC1 = common dso_local global i32 0, align 4
@USP_TFS_ACT_LEVEL_LOGIC1 = common dso_local global i32 0, align 4
@USP_TX_UFLOW_REPEAT_ZERO = common dso_local global i32 0, align 4
@USP_CLOCK_MODE_SLAVE = common dso_local global i32 0, align 4
@USP_RX_DMA_IO_CTRL = common dso_local global i32 0, align 4
@USP_RX_FIFO_CTRL = common dso_local global i32 0, align 4
@USP_RX_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@USP_RX_FIFO_THD_OFFSET = common dso_local global i32 0, align 4
@USP_TX_RX_FIFO_WIDTH_DWORD = common dso_local global i32 0, align 4
@USP_RX_FIFO_WIDTH_OFFSET = common dso_local global i32 0, align 4
@USP_RX_FIFO_LEVEL_CHK = common dso_local global i32 0, align 4
@USP_TX_DMA_IO_CTRL = common dso_local global i32 0, align 4
@USP_TX_FIFO_CTRL = common dso_local global i32 0, align 4
@USP_TX_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@USP_TX_FIFO_THD_OFFSET = common dso_local global i32 0, align 4
@USP_TX_FIFO_WIDTH_OFFSET = common dso_local global i32 0, align 4
@USP_TX_FIFO_LEVEL_CHK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sirf_usp*)* @sirf_usp_i2s_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirf_usp_i2s_init(%struct.sirf_usp* %0) #0 {
  %2 = alloca %struct.sirf_usp*, align 8
  store %struct.sirf_usp* %0, %struct.sirf_usp** %2, align 8
  %3 = load %struct.sirf_usp*, %struct.sirf_usp** %2, align 8
  %4 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @USP_RISC_DSP_MODE, align 4
  %7 = load i32, i32* @USP_RISC_DSP_SEL, align 4
  %8 = load i32, i32* @USP_RISC_DSP_SEL, align 4
  %9 = xor i32 %8, -1
  %10 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 %7, i32 %9)
  %11 = load %struct.sirf_usp*, %struct.sirf_usp** %2, align 8
  %12 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @USP_TX_DMA_IO_LEN, align 4
  %15 = call i32 @regmap_write(i32 %13, i32 %14, i32 0)
  %16 = load %struct.sirf_usp*, %struct.sirf_usp** %2, align 8
  %17 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @USP_RX_DMA_IO_LEN, align 4
  %20 = call i32 @regmap_write(i32 %18, i32 %19, i32 0)
  %21 = load %struct.sirf_usp*, %struct.sirf_usp** %2, align 8
  %22 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @USP_MODE2, align 4
  %25 = load i32, i32* @USP_RXD_DELAY_LEN_OFFSET, align 4
  %26 = shl i32 1, %25
  %27 = load i32, i32* @USP_TXD_DELAY_LEN_OFFSET, align 4
  %28 = shl i32 0, %27
  %29 = or i32 %26, %28
  %30 = load i32, i32* @USP_TFS_CLK_SLAVE_MODE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @USP_RFS_CLK_SLAVE_MODE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @regmap_write(i32 %23, i32 %24, i32 %33)
  %35 = load %struct.sirf_usp*, %struct.sirf_usp** %2, align 8
  %36 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @USP_MODE1, align 4
  %39 = load i32, i32* @USP_SYNC_MODE, align 4
  %40 = load i32, i32* @USP_EN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @USP_TXD_ACT_EDGE_FALLING, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @USP_RFS_ACT_LEVEL_LOGIC1, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @USP_TFS_ACT_LEVEL_LOGIC1, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @USP_TX_UFLOW_REPEAT_ZERO, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @USP_CLOCK_MODE_SLAVE, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @regmap_write(i32 %37, i32 %38, i32 %51)
  %53 = load %struct.sirf_usp*, %struct.sirf_usp** %2, align 8
  %54 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @USP_RX_DMA_IO_CTRL, align 4
  %57 = call i32 @regmap_write(i32 %55, i32 %56, i32 0)
  %58 = load %struct.sirf_usp*, %struct.sirf_usp** %2, align 8
  %59 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @USP_RX_FIFO_CTRL, align 4
  %62 = load i32, i32* @USP_RX_FIFO_THRESHOLD, align 4
  %63 = load i32, i32* @USP_RX_FIFO_THD_OFFSET, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* @USP_TX_RX_FIFO_WIDTH_DWORD, align 4
  %66 = load i32, i32* @USP_RX_FIFO_WIDTH_OFFSET, align 4
  %67 = shl i32 %65, %66
  %68 = or i32 %64, %67
  %69 = call i32 @regmap_write(i32 %60, i32 %61, i32 %68)
  %70 = load %struct.sirf_usp*, %struct.sirf_usp** %2, align 8
  %71 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @USP_RX_FIFO_LEVEL_CHK, align 4
  %74 = call i32 @RX_FIFO_SC(i32 4)
  %75 = call i32 @RX_FIFO_LC(i32 14)
  %76 = or i32 %74, %75
  %77 = call i32 @RX_FIFO_HC(i32 27)
  %78 = or i32 %76, %77
  %79 = call i32 @regmap_write(i32 %72, i32 %73, i32 %78)
  %80 = load %struct.sirf_usp*, %struct.sirf_usp** %2, align 8
  %81 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @USP_TX_DMA_IO_CTRL, align 4
  %84 = call i32 @regmap_write(i32 %82, i32 %83, i32 0)
  %85 = load %struct.sirf_usp*, %struct.sirf_usp** %2, align 8
  %86 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @USP_TX_FIFO_CTRL, align 4
  %89 = load i32, i32* @USP_TX_FIFO_THRESHOLD, align 4
  %90 = load i32, i32* @USP_TX_FIFO_THD_OFFSET, align 4
  %91 = shl i32 %89, %90
  %92 = load i32, i32* @USP_TX_RX_FIFO_WIDTH_DWORD, align 4
  %93 = load i32, i32* @USP_TX_FIFO_WIDTH_OFFSET, align 4
  %94 = shl i32 %92, %93
  %95 = or i32 %91, %94
  %96 = call i32 @regmap_write(i32 %87, i32 %88, i32 %95)
  %97 = load %struct.sirf_usp*, %struct.sirf_usp** %2, align 8
  %98 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @USP_TX_FIFO_LEVEL_CHK, align 4
  %101 = call i32 @TX_FIFO_SC(i32 27)
  %102 = call i32 @TX_FIFO_LC(i32 14)
  %103 = or i32 %101, %102
  %104 = call i32 @TX_FIFO_HC(i32 4)
  %105 = or i32 %103, %104
  %106 = call i32 @regmap_write(i32 %99, i32 %100, i32 %105)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @RX_FIFO_SC(i32) #1

declare dso_local i32 @RX_FIFO_LC(i32) #1

declare dso_local i32 @RX_FIFO_HC(i32) #1

declare dso_local i32 @TX_FIFO_SC(i32) #1

declare dso_local i32 @TX_FIFO_LC(i32) #1

declare dso_local i32 @TX_FIFO_HC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
