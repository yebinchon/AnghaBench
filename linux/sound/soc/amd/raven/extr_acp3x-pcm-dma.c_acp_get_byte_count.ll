; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_acp_get_byte_count.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_acp_get_byte_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2s_stream_instance = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@mmACP_BT_TX_LINEARPOSITIONCNTR_HIGH = common dso_local global i64 0, align 8
@mmACP_BT_TX_LINEARPOSITIONCNTR_LOW = common dso_local global i64 0, align 8
@mmACP_BT_RX_LINEARPOSITIONCNTR_HIGH = common dso_local global i64 0, align 8
@mmACP_BT_RX_LINEARPOSITIONCNTR_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2s_stream_instance*, i32)* @acp_get_byte_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acp_get_byte_count(%struct.i2s_stream_instance* %0, i32 %1) #0 {
  %3 = alloca %struct.i2s_stream_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2s_stream_instance* %0, %struct.i2s_stream_instance** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %11 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @mmACP_BT_TX_LINEARPOSITIONCNTR_HIGH, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @rv_readl(i64 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %17 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @mmACP_BT_TX_LINEARPOSITIONCNTR_LOW, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @rv_readl(i64 %20)
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %39

24:                                               ; preds = %2
  %25 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %26 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @mmACP_BT_RX_LINEARPOSITIONCNTR_HIGH, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @rv_readl(i64 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %32 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @mmACP_BT_RX_LINEARPOSITIONCNTR_LOW, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @rv_readl(i64 %35)
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %24, %9
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @rv_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
