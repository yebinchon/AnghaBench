; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-fifo.c_axg_fifo_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-fifo.c_axg_fifo_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.axg_fifo = type { i32 }

@AXG_FIFO_BURST = common dso_local global i32 0, align 4
@FIFO_START_ADDR = common dso_local global i32 0, align 4
@FIFO_FINISH_ADDR = common dso_local global i32 0, align 4
@FIFO_INT_ADDR = common dso_local global i32 0, align 4
@FIFO_CTRL0 = common dso_local global i32 0, align 4
@FIFO_INT_COUNT_REPEAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @axg_fifo_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_fifo_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.axg_fifo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %6, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = call %struct.axg_fifo* @axg_fifo_data(%struct.snd_pcm_substream* %14)
  store %struct.axg_fifo* %15, %struct.axg_fifo** %7, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %18 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %17)
  %19 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %16, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %3, align 4
  br label %67

24:                                               ; preds = %2
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add i32 %27, %30
  %32 = load i32, i32* @AXG_FIFO_BURST, align 4
  %33 = sub i32 %31, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.axg_fifo*, %struct.axg_fifo** %7, align 8
  %35 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FIFO_START_ADDR, align 4
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regmap_write(i32 %36, i32 %37, i32 %40)
  %42 = load %struct.axg_fifo*, %struct.axg_fifo** %7, align 8
  %43 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FIFO_FINISH_ADDR, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @regmap_write(i32 %44, i32 %45, i32 %46)
  %48 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %49 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %48)
  %50 = load i32, i32* @AXG_FIFO_BURST, align 4
  %51 = udiv i32 %49, %50
  store i32 %51, i32* %9, align 4
  %52 = load %struct.axg_fifo*, %struct.axg_fifo** %7, align 8
  %53 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @FIFO_INT_ADDR, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @regmap_write(i32 %54, i32 %55, i32 %56)
  %58 = load %struct.axg_fifo*, %struct.axg_fifo** %7, align 8
  %59 = getelementptr inbounds %struct.axg_fifo, %struct.axg_fifo* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @FIFO_CTRL0, align 4
  %62 = load i32, i32* @FIFO_INT_COUNT_REPEAT, align 4
  %63 = call i32 @CTRL0_INT_EN(i32 %62)
  %64 = load i32, i32* @FIFO_INT_COUNT_REPEAT, align 4
  %65 = call i32 @CTRL0_INT_EN(i32 %64)
  %66 = call i32 @regmap_update_bits(i32 %60, i32 %61, i32 %63, i32 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %24, %22
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.axg_fifo* @axg_fifo_data(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @CTRL0_INT_EN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
