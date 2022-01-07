; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_dma_push_start_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_dma_push_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { i32 }
%struct.fsi_stream = type { i32 }
%struct.fsi_master = type { i32 }

@CRA = common dso_local global i64 0, align 8
@CRB = common dso_local global i64 0, align 8
@DMA_ON = common dso_local global i64 0, align 8
@OUT_DMAC = common dso_local global i32 0, align 4
@CLK_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_priv*, %struct.fsi_stream*, i32)* @fsi_dma_push_start_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_dma_push_start_stop(%struct.fsi_priv* %0, %struct.fsi_stream* %1, i32 %2) #0 {
  %4 = alloca %struct.fsi_priv*, align 8
  %5 = alloca %struct.fsi_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsi_master*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.fsi_priv* %0, %struct.fsi_priv** %4, align 8
  store %struct.fsi_stream* %1, %struct.fsi_stream** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %11 = call %struct.fsi_master* @fsi_get_master(%struct.fsi_priv* %10)
  store %struct.fsi_master* %11, %struct.fsi_master** %7, align 8
  %12 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %13 = call i64 @fsi_is_port_a(%struct.fsi_priv* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @CRA, align 8
  br label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @CRB, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i64 [ %16, %15 ], [ %18, %17 ]
  store i64 %20, i64* %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* @DMA_ON, align 8
  br label %26

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i64 [ %24, %23 ], [ 0, %25 ]
  store i64 %27, i64* %9, align 8
  %28 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %29 = load i32, i32* @OUT_DMAC, align 4
  %30 = load i64, i64* @DMA_ON, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @fsi_reg_mask_set(%struct.fsi_priv* %28, i32 %29, i64 %30, i64 %31)
  %33 = load %struct.fsi_stream*, %struct.fsi_stream** %5, align 8
  %34 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dmaengine_terminate_all(i32 %35)
  %37 = load %struct.fsi_priv*, %struct.fsi_priv** %4, align 8
  %38 = call i64 @fsi_is_clk_master(%struct.fsi_priv* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %26
  %41 = load %struct.fsi_master*, %struct.fsi_master** %7, align 8
  %42 = load i32, i32* @CLK_RST, align 4
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i64, i64* %8, align 8
  br label %49

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i64 [ %47, %46 ], [ 0, %48 ]
  %51 = call i32 @fsi_master_mask_set(%struct.fsi_master* %41, i32 %42, i64 %43, i64 %50)
  br label %52

52:                                               ; preds = %49, %26
  ret i32 0
}

declare dso_local %struct.fsi_master* @fsi_get_master(%struct.fsi_priv*) #1

declare dso_local i64 @fsi_is_port_a(%struct.fsi_priv*) #1

declare dso_local i32 @fsi_reg_mask_set(%struct.fsi_priv*, i32, i64, i64) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i64 @fsi_is_clk_master(%struct.fsi_priv*) #1

declare dso_local i32 @fsi_master_mask_set(%struct.fsi_master*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
