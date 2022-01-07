; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_pcm.c_oxygen_rec_c_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_pcm.c_oxygen_rec_c_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.oxygen = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 (%struct.oxygen.0*, %struct.snd_pcm_hw_params*)* }
%struct.oxygen.0 = type opaque

@CAPTURE_1_FROM_SPDIF = common dso_local global i32 0, align 4
@OXYGEN_REC_FORMAT = common dso_local global i32 0, align 4
@OXYGEN_REC_FORMAT_C_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_REC_FORMAT_C_MASK = common dso_local global i32 0, align 4
@OXYGEN_I2S_C_FORMAT = common dso_local global i32 0, align 4
@PCM_B = common dso_local global i32 0, align 4
@OXYGEN_I2S_RATE_MASK = common dso_local global i32 0, align 4
@OXYGEN_I2S_FORMAT_MASK = common dso_local global i32 0, align 4
@OXYGEN_I2S_MCLK_MASK = common dso_local global i32 0, align 4
@OXYGEN_I2S_BITS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @oxygen_rec_c_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxygen_rec_c_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.oxygen*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.oxygen* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.oxygen* %10, %struct.oxygen** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %13 = call i32 @oxygen_hw_params(%struct.snd_pcm_substream* %11, %struct.snd_pcm_hw_params* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %86

18:                                               ; preds = %2
  %19 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %20 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CAPTURE_1_FROM_SPDIF, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %26 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %25, i32 0, i32 2
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %29 = load i32, i32* @OXYGEN_REC_FORMAT, align 4
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %31 = call i32 @oxygen_format(%struct.snd_pcm_hw_params* %30)
  %32 = load i32, i32* @OXYGEN_REC_FORMAT_C_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* @OXYGEN_REC_FORMAT_C_MASK, align 4
  %35 = call i32 @oxygen_write8_masked(%struct.oxygen* %28, i32 %29, i32 %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %64, label %38

38:                                               ; preds = %18
  %39 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %40 = load i32, i32* @OXYGEN_I2S_C_FORMAT, align 4
  %41 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %42 = call i32 @oxygen_rate(%struct.snd_pcm_hw_params* %41)
  %43 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %44 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %42, %46
  %48 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %49 = load i32, i32* @PCM_B, align 4
  %50 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %51 = call i32 @get_mclk(%struct.oxygen* %48, i32 %49, %struct.snd_pcm_hw_params* %50)
  %52 = or i32 %47, %51
  %53 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %54 = call i32 @oxygen_i2s_bits(%struct.snd_pcm_hw_params* %53)
  %55 = or i32 %52, %54
  %56 = load i32, i32* @OXYGEN_I2S_RATE_MASK, align 4
  %57 = load i32, i32* @OXYGEN_I2S_FORMAT_MASK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @OXYGEN_I2S_MCLK_MASK, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @OXYGEN_I2S_BITS_MASK, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @oxygen_write16_masked(%struct.oxygen* %39, i32 %40, i32 %55, i32 %62)
  br label %64

64:                                               ; preds = %38, %18
  %65 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %66 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %65, i32 0, i32 2
  %67 = call i32 @spin_unlock_irq(i32* %66)
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %64
  %71 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %72 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %71, i32 0, i32 0
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %75 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32 (%struct.oxygen.0*, %struct.snd_pcm_hw_params*)*, i32 (%struct.oxygen.0*, %struct.snd_pcm_hw_params*)** %76, align 8
  %78 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %79 = bitcast %struct.oxygen* %78 to %struct.oxygen.0*
  %80 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %81 = call i32 %77(%struct.oxygen.0* %79, %struct.snd_pcm_hw_params* %80)
  %82 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %83 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  br label %85

85:                                               ; preds = %70, %64
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %16
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.oxygen* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @oxygen_hw_params(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @oxygen_write8_masked(%struct.oxygen*, i32, i32, i32) #1

declare dso_local i32 @oxygen_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @oxygen_write16_masked(%struct.oxygen*, i32, i32, i32) #1

declare dso_local i32 @oxygen_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @get_mclk(%struct.oxygen*, i32, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @oxygen_i2s_bits(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
