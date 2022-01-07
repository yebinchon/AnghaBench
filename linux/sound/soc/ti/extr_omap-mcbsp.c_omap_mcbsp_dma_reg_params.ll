; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_dma_reg_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_dma_reg_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@OMAP_MCBSP_REG_DXR1 = common dso_local global i32 0, align 4
@OMAP_MCBSP_REG_DXR = common dso_local global i32 0, align 4
@OMAP_MCBSP_REG_DRR1 = common dso_local global i32 0, align 4
@OMAP_MCBSP_REG_DRR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_mcbsp*, i32)* @omap_mcbsp_dma_reg_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcbsp_dma_reg_params(%struct.omap_mcbsp* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_mcbsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.omap_mcbsp* %0, %struct.omap_mcbsp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %11 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* @OMAP_MCBSP_REG_DXR1, align 4
  store i32 %17, i32* %5, align 4
  br label %20

18:                                               ; preds = %9
  %19 = load i32, i32* @OMAP_MCBSP_REG_DXR, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %18, %16
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %23 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @OMAP_MCBSP_REG_DRR1, align 4
  store i32 %29, i32* %5, align 4
  br label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @OMAP_MCBSP_REG_DRR, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %28
  br label %33

33:                                               ; preds = %32, %20
  %34 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %35 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %39 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %37, %42
  %44 = add nsw i32 %36, %43
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
