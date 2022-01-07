; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_config_acp3x_dma.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/raven/extr_acp3x-pcm-dma.c_config_acp3x_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2s_stream_instance = type { i32, i64, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@ACP_SRAM_PTE_OFFSET = common dso_local global i32 0, align 4
@mmACPAXI2AXI_ATU_BASE_ADDR_GRP_1 = common dso_local global i64 0, align 8
@PAGE_SIZE_4K_ENABLE = common dso_local global i32 0, align 4
@mmACPAXI2AXI_ATU_PAGE_SIZE_GRP_1 = common dso_local global i64 0, align 8
@mmACP_SCRATCH_REG_0 = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@MEM_WINDOW_START = common dso_local global i32 0, align 4
@mmACP_BT_TX_RINGBUFADDR = common dso_local global i64 0, align 8
@MAX_BUFFER = common dso_local global i32 0, align 4
@mmACP_BT_TX_RINGBUFSIZE = common dso_local global i64 0, align 8
@DMA_SIZE = common dso_local global i32 0, align 4
@mmACP_BT_TX_DMA_SIZE = common dso_local global i64 0, align 8
@PLAYBACK_FIFO_ADDR_OFFSET = common dso_local global i32 0, align 4
@mmACP_BT_TX_FIFOADDR = common dso_local global i64 0, align 8
@FIFO_SIZE = common dso_local global i32 0, align 4
@mmACP_BT_TX_FIFOSIZE = common dso_local global i64 0, align 8
@mmACP_BT_RX_RINGBUFADDR = common dso_local global i64 0, align 8
@mmACP_BT_RX_RINGBUFSIZE = common dso_local global i64 0, align 8
@mmACP_BT_RX_DMA_SIZE = common dso_local global i64 0, align 8
@CAPTURE_FIFO_ADDR_OFFSET = common dso_local global i32 0, align 4
@mmACP_BT_RX_FIFOADDR = common dso_local global i64 0, align 8
@mmACP_BT_RX_FIFOSIZE = common dso_local global i64 0, align 8
@BT_TX_THRESHOLD = common dso_local global i32 0, align 4
@BT_RX_THRESHOLD = common dso_local global i32 0, align 4
@mmACP_EXTERNAL_INTR_CNTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2s_stream_instance*, i32)* @config_acp3x_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_acp3x_dma(%struct.i2s_stream_instance* %0, i32 %1) #0 {
  %3 = alloca %struct.i2s_stream_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2s_stream_instance* %0, %struct.i2s_stream_instance** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %12 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %20 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 8
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %18, %17
  %24 = load i32, i32* @ACP_SRAM_PTE_OFFSET, align 4
  %25 = call i32 @BIT(i32 31)
  %26 = or i32 %24, %25
  %27 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %28 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @mmACPAXI2AXI_ATU_BASE_ADDR_GRP_1, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @rv_writel(i32 %26, i64 %31)
  %33 = load i32, i32* @PAGE_SIZE_4K_ENABLE, align 4
  %34 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %35 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @mmACPAXI2AXI_ATU_PAGE_SIZE_GRP_1, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @rv_writel(i32 %33, i64 %38)
  store i64 0, i64* %5, align 8
  br label %40

40:                                               ; preds = %83, %23
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %43 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = icmp slt i64 %41, %45
  br i1 %46, label %47, label %86

47:                                               ; preds = %40
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @lower_32_bits(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @upper_32_bits(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %54 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @mmACP_SCRATCH_REG_0, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = call i32 @rv_writel(i32 %52, i64 %60)
  %62 = call i32 @BIT(i32 31)
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %67 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @mmACP_SCRATCH_REG_0, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = add nsw i64 %73, 4
  %75 = call i32 @rv_writel(i32 %65, i64 %74)
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 8
  store i32 %77, i32* %8, align 4
  %78 = load i64, i64* @PAGE_SIZE, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %47
  %84 = load i64, i64* %5, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %5, align 8
  br label %40

86:                                               ; preds = %40
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %134

90:                                               ; preds = %86
  %91 = load i32, i32* @MEM_WINDOW_START, align 4
  %92 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %93 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @mmACP_BT_TX_RINGBUFADDR, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @rv_writel(i32 %91, i64 %96)
  %98 = load i32, i32* @MAX_BUFFER, align 4
  %99 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %100 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @mmACP_BT_TX_RINGBUFSIZE, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @rv_writel(i32 %98, i64 %103)
  %105 = load i32, i32* @DMA_SIZE, align 4
  %106 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %107 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @mmACP_BT_TX_DMA_SIZE, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @rv_writel(i32 %105, i64 %110)
  %112 = load i32, i32* @ACP_SRAM_PTE_OFFSET, align 4
  %113 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %114 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = mul nsw i32 %115, 8
  %117 = add nsw i32 %112, %116
  %118 = load i32, i32* @PLAYBACK_FIFO_ADDR_OFFSET, align 4
  %119 = add nsw i32 %117, %118
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %122 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @mmACP_BT_TX_FIFOADDR, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @rv_writel(i32 %120, i64 %125)
  %127 = load i32, i32* @FIFO_SIZE, align 4
  %128 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %129 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @mmACP_BT_TX_FIFOSIZE, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @rv_writel(i32 %127, i64 %132)
  br label %180

134:                                              ; preds = %86
  %135 = load i32, i32* @MEM_WINDOW_START, align 4
  %136 = load i32, i32* @MAX_BUFFER, align 4
  %137 = add nsw i32 %135, %136
  %138 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %139 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @mmACP_BT_RX_RINGBUFADDR, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @rv_writel(i32 %137, i64 %142)
  %144 = load i32, i32* @MAX_BUFFER, align 4
  %145 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %146 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @mmACP_BT_RX_RINGBUFSIZE, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @rv_writel(i32 %144, i64 %149)
  %151 = load i32, i32* @DMA_SIZE, align 4
  %152 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %153 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @mmACP_BT_RX_DMA_SIZE, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @rv_writel(i32 %151, i64 %156)
  %158 = load i32, i32* @ACP_SRAM_PTE_OFFSET, align 4
  %159 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %160 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = mul nsw i32 %161, 8
  %163 = add nsw i32 %158, %162
  %164 = load i32, i32* @CAPTURE_FIFO_ADDR_OFFSET, align 4
  %165 = add nsw i32 %163, %164
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %168 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @mmACP_BT_RX_FIFOADDR, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @rv_writel(i32 %166, i64 %171)
  %173 = load i32, i32* @FIFO_SIZE, align 4
  %174 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %175 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @mmACP_BT_RX_FIFOSIZE, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @rv_writel(i32 %173, i64 %178)
  br label %180

180:                                              ; preds = %134, %90
  %181 = load i32, i32* @BT_TX_THRESHOLD, align 4
  %182 = call i32 @BIT(i32 %181)
  %183 = load i32, i32* @BT_RX_THRESHOLD, align 4
  %184 = call i32 @BIT(i32 %183)
  %185 = or i32 %182, %184
  %186 = load %struct.i2s_stream_instance*, %struct.i2s_stream_instance** %3, align 8
  %187 = getelementptr inbounds %struct.i2s_stream_instance, %struct.i2s_stream_instance* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @mmACP_EXTERNAL_INTR_CNTL, align 8
  %190 = add nsw i64 %188, %189
  %191 = call i32 @rv_writel(i32 %185, i64 %190)
  ret void
}

declare dso_local i32 @rv_writel(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
