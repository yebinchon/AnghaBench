; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-tdm.c_zx_tdm_init_state.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-tdm.c_zx_tdm_init_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_tdm_info = type { i32 }

@REG_PROCESS_CTRL = common dso_local global i32 0, align 4
@PROCESS_DISABLE_ALL = common dso_local global i32 0, align 4
@REG_TIMING_CTRL = common dso_local global i32 0, align 4
@TIMING_LSB_FIRST = common dso_local global i32 0, align 4
@TIMING_CLK_SEL_MASK = common dso_local global i32 0, align 4
@TIMING_CLK_SEL_DEF = common dso_local global i32 0, align 4
@REG_INT_EN = common dso_local global i32 0, align 4
@INT_DISABLE_ALL = common dso_local global i32 0, align 4
@REG_INT_STATUS = common dso_local global i32 0, align 4
@INT_STATUS_MASK = common dso_local global i32 0, align 4
@REG_RX_FIFO_CTRL = common dso_local global i32 0, align 4
@FIFOCTRL_RX_FIFO_RST = common dso_local global i32 0, align 4
@REG_TX_FIFO_CTRL = common dso_local global i32 0, align 4
@FIFOCTRL_TX_FIFO_RST = common dso_local global i32 0, align 4
@RXTH_MASK = common dso_local global i32 0, align 4
@RX_FIFO_RST_MASK = common dso_local global i32 0, align 4
@TXTH_MASK = common dso_local global i32 0, align 4
@TX_FIFO_RST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zx_tdm_info*)* @zx_tdm_init_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_tdm_init_state(%struct.zx_tdm_info* %0) #0 {
  %2 = alloca %struct.zx_tdm_info*, align 8
  %3 = alloca i32, align 4
  store %struct.zx_tdm_info* %0, %struct.zx_tdm_info** %2, align 8
  %4 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %2, align 8
  %5 = load i32, i32* @REG_PROCESS_CTRL, align 4
  %6 = load i32, i32* @PROCESS_DISABLE_ALL, align 4
  %7 = call i32 @zx_tdm_writel(%struct.zx_tdm_info* %4, i32 %5, i32 %6)
  %8 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %2, align 8
  %9 = load i32, i32* @REG_TIMING_CTRL, align 4
  %10 = call i32 @zx_tdm_readl(%struct.zx_tdm_info* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @TIMING_LSB_FIRST, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @TIMING_CLK_SEL_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @TIMING_CLK_SEL_DEF, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %2, align 8
  %22 = load i32, i32* @REG_TIMING_CTRL, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @zx_tdm_writel(%struct.zx_tdm_info* %21, i32 %22, i32 %23)
  %25 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %2, align 8
  %26 = load i32, i32* @REG_INT_EN, align 4
  %27 = load i32, i32* @INT_DISABLE_ALL, align 4
  %28 = call i32 @zx_tdm_writel(%struct.zx_tdm_info* %25, i32 %26, i32 %27)
  %29 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %2, align 8
  %30 = load i32, i32* @REG_INT_STATUS, align 4
  %31 = load i32, i32* @INT_STATUS_MASK, align 4
  %32 = call i32 @zx_tdm_writel(%struct.zx_tdm_info* %29, i32 %30, i32 %31)
  %33 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %2, align 8
  %34 = load i32, i32* @REG_RX_FIFO_CTRL, align 4
  %35 = load i32, i32* @FIFOCTRL_RX_FIFO_RST, align 4
  %36 = call i32 @zx_tdm_writel(%struct.zx_tdm_info* %33, i32 %34, i32 %35)
  %37 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %2, align 8
  %38 = load i32, i32* @REG_TX_FIFO_CTRL, align 4
  %39 = load i32, i32* @FIFOCTRL_TX_FIFO_RST, align 4
  %40 = call i32 @zx_tdm_writel(%struct.zx_tdm_info* %37, i32 %38, i32 %39)
  %41 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %2, align 8
  %42 = load i32, i32* @REG_RX_FIFO_CTRL, align 4
  %43 = call i32 @zx_tdm_readl(%struct.zx_tdm_info* %41, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @RXTH_MASK, align 4
  %45 = load i32, i32* @RX_FIFO_RST_MASK, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = call i32 @FIFOCTRL_THRESHOLD(i32 8)
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  %53 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %2, align 8
  %54 = load i32, i32* @REG_RX_FIFO_CTRL, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @zx_tdm_writel(%struct.zx_tdm_info* %53, i32 %54, i32 %55)
  %57 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %2, align 8
  %58 = load i32, i32* @REG_TX_FIFO_CTRL, align 4
  %59 = call i32 @zx_tdm_readl(%struct.zx_tdm_info* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* @TXTH_MASK, align 4
  %61 = load i32, i32* @TX_FIFO_RST_MASK, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %3, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %3, align 4
  %66 = call i32 @FIFOCTRL_THRESHOLD(i32 8)
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  %69 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %2, align 8
  %70 = load i32, i32* @REG_TX_FIFO_CTRL, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @zx_tdm_writel(%struct.zx_tdm_info* %69, i32 %70, i32 %71)
  ret void
}

declare dso_local i32 @zx_tdm_writel(%struct.zx_tdm_info*, i32, i32) #1

declare dso_local i32 @zx_tdm_readl(%struct.zx_tdm_info*, i32) #1

declare dso_local i32 @FIFOCTRL_THRESHOLD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
