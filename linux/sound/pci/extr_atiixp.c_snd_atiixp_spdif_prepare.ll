; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_spdif_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_spdif_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.atiixp = type { i32, i64 }

@CMD = common dso_local global i32 0, align 4
@ATI_REG_CMD_SPDF_CONFIG_MASK = common dso_local global i32 0, align 4
@ATI_REG_CMD_SPDF_CONFIG_01 = common dso_local global i32 0, align 4
@OUT_DMA_SLOT = common dso_local global i32 0, align 4
@ATI_REG_OUT_DMA_SLOT_MASK = common dso_local global i32 0, align 4
@ATI_REG_OUT_DMA_THRESHOLD_SHIFT = common dso_local global i32 0, align 4
@ATI_REG_CMD_INTERLEAVE_OUT = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_S16_LE = common dso_local global i64 0, align 8
@ATI_REG_CMD_INTERLEAVE_SPDF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_atiixp_spdif_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_atiixp_spdif_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.atiixp*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.atiixp* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.atiixp* %6, %struct.atiixp** %3, align 8
  %7 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %8 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %11 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %55

14:                                               ; preds = %1
  %15 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %16 = load i32, i32* @CMD, align 4
  %17 = load i32, i32* @ATI_REG_CMD_SPDF_CONFIG_MASK, align 4
  %18 = load i32, i32* @ATI_REG_CMD_SPDF_CONFIG_01, align 4
  %19 = call i32 @atiixp_update(%struct.atiixp* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %21 = load i32, i32* @OUT_DMA_SLOT, align 4
  %22 = call i32 @atiixp_read(%struct.atiixp* %20, i32 %21)
  %23 = load i32, i32* @ATI_REG_OUT_DMA_SLOT_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  store i32 %25, i32* %4, align 4
  %26 = call i32 @ATI_REG_OUT_DMA_SLOT_BIT(i32 10)
  %27 = call i32 @ATI_REG_OUT_DMA_SLOT_BIT(i32 11)
  %28 = or i32 %26, %27
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @ATI_REG_OUT_DMA_THRESHOLD_SHIFT, align 4
  %32 = shl i32 4, %31
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %36 = load i32, i32* @OUT_DMA_SLOT, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @atiixp_write(%struct.atiixp* %35, i32 %36, i32 %37)
  %39 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %40 = load i32, i32* @CMD, align 4
  %41 = load i32, i32* @ATI_REG_CMD_INTERLEAVE_OUT, align 4
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SNDRV_PCM_FORMAT_S16_LE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %14
  %50 = load i32, i32* @ATI_REG_CMD_INTERLEAVE_OUT, align 4
  br label %52

51:                                               ; preds = %14
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  %54 = call i32 @atiixp_update(%struct.atiixp* %39, i32 %40, i32 %41, i32 %53)
  br label %64

55:                                               ; preds = %1
  %56 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %57 = load i32, i32* @CMD, align 4
  %58 = load i32, i32* @ATI_REG_CMD_SPDF_CONFIG_MASK, align 4
  %59 = call i32 @atiixp_update(%struct.atiixp* %56, i32 %57, i32 %58, i32 0)
  %60 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %61 = load i32, i32* @CMD, align 4
  %62 = load i32, i32* @ATI_REG_CMD_INTERLEAVE_SPDF, align 4
  %63 = call i32 @atiixp_update(%struct.atiixp* %60, i32 %61, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %55, %52
  %65 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %66 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock_irq(i32* %66)
  ret i32 0
}

declare dso_local %struct.atiixp* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @atiixp_update(%struct.atiixp*, i32, i32, i32) #1

declare dso_local i32 @atiixp_read(%struct.atiixp*, i32) #1

declare dso_local i32 @ATI_REG_OUT_DMA_SLOT_BIT(i32) #1

declare dso_local i32 @atiixp_write(%struct.atiixp*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
