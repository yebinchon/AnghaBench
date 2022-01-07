; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_idma.c_idma_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_idma.c_idma_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i64, %struct.idma_ctrl* }
%struct.idma_ctrl = type { i64, i32, i32, i64, i64 }
%struct.snd_pcm_hw_params = type { i32 }

@idma = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@I2SMOD = common dso_local global i64 0, align 8
@I2SAHB = common dso_local global i64 0, align 8
@AHB_DMARLD = common dso_local global i32 0, align 4
@AHB_INTMASK = common dso_local global i32 0, align 4
@MOD_TXS_IDMA = common dso_local global i32 0, align 4
@idma_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @idma_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idma_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.idma_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 1
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %14, i32 0, i32 2
  %16 = load %struct.idma_ctrl*, %struct.idma_ctrl** %15, align 8
  store %struct.idma_ctrl* %16, %struct.idma_ctrl** %6, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 0), align 8
  %18 = load i64, i64* @I2SMOD, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 0), align 8
  %22 = load i64, i64* @I2SAHB, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @AHB_DMARLD, align 4
  %26 = load i32, i32* @AHB_INTMASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @MOD_TXS_IDMA, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 0), align 8
  %35 = load i64, i64* @I2SAHB, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %33, i64 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 0), align 8
  %40 = load i64, i64* @I2SMOD, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %38, i64 %41)
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %44, i32 0, i32 0
  %46 = call i32 @snd_pcm_set_runtime_buffer(%struct.snd_pcm_substream* %43, i32* %45)
  %47 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %48 = call i64 @params_buffer_bytes(%struct.snd_pcm_hw_params* %47)
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.idma_ctrl*, %struct.idma_ctrl** %6, align 8
  %55 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  %56 = load %struct.idma_ctrl*, %struct.idma_ctrl** %6, align 8
  %57 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %56, i32 0, i32 4
  store i64 %53, i64* %57, align 8
  %58 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %59 = call i32 @params_periods(%struct.snd_pcm_hw_params* %58)
  %60 = load %struct.idma_ctrl*, %struct.idma_ctrl** %6, align 8
  %61 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %63 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %62)
  %64 = load %struct.idma_ctrl*, %struct.idma_ctrl** %6, align 8
  %65 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load %struct.idma_ctrl*, %struct.idma_ctrl** %6, align 8
  %74 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %76 = load i32, i32* @idma_done, align 4
  %77 = call i32 @idma_setcallbk(%struct.snd_pcm_substream* %75, i32 %76)
  ret i32 0
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @snd_pcm_set_runtime_buffer(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i64 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_periods(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @idma_setcallbk(%struct.snd_pcm_substream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
