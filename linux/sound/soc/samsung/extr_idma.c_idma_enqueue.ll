; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_idma.c_idma_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_idma.c_idma_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, %struct.idma_ctrl* }
%struct.idma_ctrl = type { i32, i32, i8* }

@idma = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@I2SLVL0ADDR = common dso_local global i64 0, align 8
@I2SSTR0 = common dso_local global i64 0, align 8
@I2SSIZE = common dso_local global i64 0, align 8
@I2SSIZE_TRNMSK = common dso_local global i32 0, align 4
@I2SSIZE_SHIFT = common dso_local global i32 0, align 4
@I2SAHB = common dso_local global i64 0, align 8
@AHB_INTENLVL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @idma_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idma_enqueue(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.idma_ctrl*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 0
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  store %struct.snd_pcm_runtime* %8, %struct.snd_pcm_runtime** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 1
  %13 = load %struct.idma_ctrl*, %struct.idma_ctrl** %12, align 8
  store %struct.idma_ctrl* %13, %struct.idma_ctrl** %4, align 8
  %14 = load %struct.idma_ctrl*, %struct.idma_ctrl** %4, align 8
  %15 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %14, i32 0, i32 1
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %18 = bitcast %struct.snd_pcm_substream* %17 to i8*
  %19 = load %struct.idma_ctrl*, %struct.idma_ctrl** %4, align 8
  %20 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.idma_ctrl*, %struct.idma_ctrl** %4, align 8
  %22 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %21, i32 0, i32 1
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 0), align 8
  %25 = load %struct.idma_ctrl*, %struct.idma_ctrl** %4, align 8
  %26 = getelementptr inbounds %struct.idma_ctrl, %struct.idma_ctrl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %24, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 1), align 8
  %31 = load i64, i64* @I2SLVL0ADDR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %29, i64 %32)
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 0), align 8
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 1), align 8
  %37 = load i64, i64* @I2SSTR0, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %35, i64 %38)
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 1), align 8
  %41 = load i64, i64* @I2SSIZE, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* @I2SSIZE_TRNMSK, align 4
  %45 = load i32, i32* @I2SSIZE_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = ashr i32 %52, 2
  %54 = load i32, i32* @I2SSIZE_TRNMSK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @I2SSIZE_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 1), align 8
  %62 = load i64, i64* @I2SSIZE, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %60, i64 %63)
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 1), align 8
  %66 = load i64, i64* @I2SAHB, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @readl(i64 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* @AHB_INTENLVL0, align 4
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idma, i32 0, i32 1), align 8
  %74 = load i64, i64* @I2SAHB, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %72, i64 %75)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
