; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_atiixp_spdif_flush_dma.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_atiixp_spdif_flush_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp = type { i32 }

@SPDF_DMA_DT_SIZE = common dso_local global i32 0, align 4
@ATI_REG_DMA_FIFO_USED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atiixp*)* @atiixp_spdif_flush_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atiixp_spdif_flush_dma(%struct.atiixp* %0) #0 {
  %2 = alloca %struct.atiixp*, align 8
  %3 = alloca i32, align 4
  store %struct.atiixp* %0, %struct.atiixp** %2, align 8
  %4 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %5 = call i32 @atiixp_spdif_enable_dma(%struct.atiixp* %4, i32 0)
  %6 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %7 = call i32 @atiixp_spdif_enable_transfer(%struct.atiixp* %6, i32 1)
  store i32 100, i32* %3, align 4
  br label %8

8:                                                ; preds = %18, %1
  %9 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %10 = load i32, i32* @SPDF_DMA_DT_SIZE, align 4
  %11 = call i32 @atiixp_read(%struct.atiixp* %9, i32 %10)
  %12 = load i32, i32* @ATI_REG_DMA_FIFO_USED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  br label %22

16:                                               ; preds = %8
  %17 = call i32 @udelay(i32 1)
  br label %18

18:                                               ; preds = %16
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %3, align 4
  %21 = icmp sgt i32 %19, 0
  br i1 %21, label %8, label %22

22:                                               ; preds = %18, %15
  %23 = load %struct.atiixp*, %struct.atiixp** %2, align 8
  %24 = call i32 @atiixp_spdif_enable_transfer(%struct.atiixp* %23, i32 0)
  ret void
}

declare dso_local i32 @atiixp_spdif_enable_dma(%struct.atiixp*, i32) #1

declare dso_local i32 @atiixp_spdif_enable_transfer(%struct.atiixp*, i32) #1

declare dso_local i32 @atiixp_read(%struct.atiixp*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
