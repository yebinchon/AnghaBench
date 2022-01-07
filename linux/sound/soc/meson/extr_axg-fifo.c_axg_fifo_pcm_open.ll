; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-fifo.c_axg_fifo_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-fifo.c_axg_fifo_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.axg_fifo = type { i32, i32, i32, i32 }
%struct.device = type { i32 }

@axg_fifo_hw = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@AXG_FIFO_MIN_DEPTH = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@axg_fifo_pcm_irq_block = common dso_local global i32 0, align 4
@FIFO_CTRL1 = common dso_local global i32 0, align 4
@CTRL1_STATUS2_SEL_MASK = common dso_local global i32 0, align 4
@STATUS2_SEL_DDR_READ = common dso_local global i32 0, align 4
@FIFO_CTRL0 = common dso_local global i32 0, align 4
@FIFO_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @axg_fifo_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_fifo_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.axg_fifo*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.axg_fifo* @axg_fifo_data(%struct.snd_pcm_substream* %7)
  store %struct.axg_fifo* %8, %struct.axg_fifo** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.device* @axg_fifo_dev(%struct.snd_pcm_substream* %9)
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = call i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream* %11, i32* @axg_fifo_hw)
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %17 = load i32, i32* @AXG_FIFO_MIN_DEPTH, align 4
  %18 = call i32 @snd_pcm_hw_constraint_step(i32 %15, i32 0, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %90

23:                                               ; preds = %1
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %28 = load i32, i32* @AXG_FIFO_MIN_DEPTH, align 4
  %29 = call i32 @snd_pcm_hw_constraint_step(i32 %26, i32 0, i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %90

34:                                               ; preds = %23
  %35 = load %struct.axg_fifo*, %struct.axg_fifo** %4, align 8
  %36 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @axg_fifo_pcm_irq_block, align 4
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = call i32 @dev_name(%struct.device* %39)
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %42 = call i32 @request_irq(i32 %37, i32 %38, i32 0, i32 %40, %struct.snd_pcm_substream* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %90

47:                                               ; preds = %34
  %48 = load %struct.axg_fifo*, %struct.axg_fifo** %4, align 8
  %49 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @clk_prepare_enable(i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %90

56:                                               ; preds = %47
  %57 = load %struct.axg_fifo*, %struct.axg_fifo** %4, align 8
  %58 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @FIFO_CTRL1, align 4
  %61 = load i32, i32* @CTRL1_STATUS2_SEL_MASK, align 4
  %62 = load i32, i32* @STATUS2_SEL_DDR_READ, align 4
  %63 = call i32 @CTRL1_STATUS2_SEL(i32 %62)
  %64 = call i32 @regmap_update_bits(i32 %59, i32 %60, i32 %61, i32 %63)
  %65 = load %struct.axg_fifo*, %struct.axg_fifo** %4, align 8
  %66 = call i32 @__dma_enable(%struct.axg_fifo* %65, i32 0)
  %67 = load %struct.axg_fifo*, %struct.axg_fifo** %4, align 8
  %68 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @FIFO_CTRL0, align 4
  %71 = load i32, i32* @FIFO_INT_MASK, align 4
  %72 = call i32 @CTRL0_INT_EN(i32 %71)
  %73 = call i32 @regmap_update_bits(i32 %69, i32 %70, i32 %72, i32 0)
  %74 = load %struct.axg_fifo*, %struct.axg_fifo** %4, align 8
  %75 = load i32, i32* @FIFO_INT_MASK, align 4
  %76 = call i32 @axg_fifo_ack_irq(%struct.axg_fifo* %74, i32 %75)
  %77 = load %struct.axg_fifo*, %struct.axg_fifo** %4, align 8
  %78 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @reset_control_deassert(i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %56
  %84 = load %struct.axg_fifo*, %struct.axg_fifo** %4, align 8
  %85 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @clk_disable_unprepare(i32 %86)
  br label %88

88:                                               ; preds = %83, %56
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %54, %45, %32, %21
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.axg_fifo* @axg_fifo_data(%struct.snd_pcm_substream*) #1

declare dso_local %struct.device* @axg_fifo_dev(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(i32, i32, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @CTRL1_STATUS2_SEL(i32) #1

declare dso_local i32 @__dma_enable(%struct.axg_fifo*, i32) #1

declare dso_local i32 @CTRL0_INT_EN(i32) #1

declare dso_local i32 @axg_fifo_ack_irq(%struct.axg_fifo*, i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
