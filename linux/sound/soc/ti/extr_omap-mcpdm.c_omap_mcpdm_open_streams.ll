; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcpdm.c_omap_mcpdm_open_streams.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcpdm.c_omap_mcpdm_open_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcpdm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MCPDM_REG_CTRL = common dso_local global i32 0, align 4
@MCPDM_WD_EN = common dso_local global i32 0, align 4
@MCPDM_REG_IRQENABLE_SET = common dso_local global i32 0, align 4
@MCPDM_DN_IRQ_EMPTY = common dso_local global i32 0, align 4
@MCPDM_DN_IRQ_FULL = common dso_local global i32 0, align 4
@MCPDM_UP_IRQ_EMPTY = common dso_local global i32 0, align 4
@MCPDM_UP_IRQ_FULL = common dso_local global i32 0, align 4
@MCPDM_REG_DN_OFFSET = common dso_local global i32 0, align 4
@MCPDM_DN_OFST_RX1_EN = common dso_local global i32 0, align 4
@MCPDM_DN_OFST_RX2_EN = common dso_local global i32 0, align 4
@MCPDM_REG_FIFO_CTRL_DN = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@MCPDM_REG_FIFO_CTRL_UP = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@MCPDM_REG_DMAENABLE_SET = common dso_local global i32 0, align 4
@MCPDM_DMA_DN_ENABLE = common dso_local global i32 0, align 4
@MCPDM_DMA_UP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_mcpdm*)* @omap_mcpdm_open_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_mcpdm_open_streams(%struct.omap_mcpdm* %0) #0 {
  %2 = alloca %struct.omap_mcpdm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.omap_mcpdm* %0, %struct.omap_mcpdm** %2, align 8
  %5 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %2, align 8
  %6 = load i32, i32* @MCPDM_REG_CTRL, align 4
  %7 = call i32 @omap_mcpdm_read(%struct.omap_mcpdm* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %2, align 8
  %9 = load i32, i32* @MCPDM_REG_CTRL, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MCPDM_WD_EN, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @omap_mcpdm_write(%struct.omap_mcpdm* %8, i32 %9, i32 %12)
  %14 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %2, align 8
  %15 = load i32, i32* @MCPDM_REG_IRQENABLE_SET, align 4
  %16 = load i32, i32* @MCPDM_DN_IRQ_EMPTY, align 4
  %17 = load i32, i32* @MCPDM_DN_IRQ_FULL, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MCPDM_UP_IRQ_EMPTY, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MCPDM_UP_IRQ_FULL, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @omap_mcpdm_write(%struct.omap_mcpdm* %14, i32 %15, i32 %22)
  %24 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %2, align 8
  %25 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %1
  %29 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %2, align 8
  %30 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %4, align 4
  %32 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %2, align 8
  %33 = load i32, i32* @MCPDM_REG_DN_OFFSET, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @omap_mcpdm_write(%struct.omap_mcpdm* %32, i32 %33, i32 %34)
  %36 = load i32, i32* @MCPDM_DN_OFST_RX1_EN, align 4
  %37 = load i32, i32* @MCPDM_DN_OFST_RX2_EN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %2, align 8
  %42 = load i32, i32* @MCPDM_REG_DN_OFFSET, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @omap_mcpdm_write(%struct.omap_mcpdm* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %28, %1
  %46 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %2, align 8
  %47 = load i32, i32* @MCPDM_REG_FIFO_CTRL_DN, align 4
  %48 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %2, align 8
  %49 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @omap_mcpdm_write(%struct.omap_mcpdm* %46, i32 %47, i32 %54)
  %56 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %2, align 8
  %57 = load i32, i32* @MCPDM_REG_FIFO_CTRL_UP, align 4
  %58 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %2, align 8
  %59 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @omap_mcpdm_write(%struct.omap_mcpdm* %56, i32 %57, i32 %64)
  %66 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %2, align 8
  %67 = load i32, i32* @MCPDM_REG_DMAENABLE_SET, align 4
  %68 = load i32, i32* @MCPDM_DMA_DN_ENABLE, align 4
  %69 = load i32, i32* @MCPDM_DMA_UP_ENABLE, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @omap_mcpdm_write(%struct.omap_mcpdm* %66, i32 %67, i32 %70)
  ret void
}

declare dso_local i32 @omap_mcpdm_read(%struct.omap_mcpdm*, i32) #1

declare dso_local i32 @omap_mcpdm_write(%struct.omap_mcpdm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
