; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_pcm.c_oxygen_rec_b_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_pcm.c_oxygen_rec_b_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.oxygen = type { i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 (%struct.oxygen.0*, %struct.snd_pcm_hw_params*)* }
%struct.oxygen.0 = type opaque

@CAPTURE_2_FROM_AC97_1 = common dso_local global i32 0, align 4
@OXYGEN_REC_FORMAT = common dso_local global i32 0, align 4
@OXYGEN_REC_FORMAT_B_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_REC_FORMAT_B_MASK = common dso_local global i32 0, align 4
@OXYGEN_I2S_B_FORMAT = common dso_local global i32 0, align 4
@PCM_B = common dso_local global i32 0, align 4
@OXYGEN_I2S_RATE_MASK = common dso_local global i32 0, align 4
@OXYGEN_I2S_FORMAT_MASK = common dso_local global i32 0, align 4
@OXYGEN_I2S_MCLK_MASK = common dso_local global i32 0, align 4
@OXYGEN_I2S_BITS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @oxygen_rec_b_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxygen_rec_b_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
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
  br label %95

18:                                               ; preds = %2
  %19 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %20 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %25 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CAPTURE_2_FROM_AC97_1, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %23, %18
  %32 = phi i1 [ false, %18 ], [ %30, %23 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %35 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %34, i32 0, i32 2
  %36 = call i32 @spin_lock_irq(i32* %35)
  %37 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %38 = load i32, i32* @OXYGEN_REC_FORMAT, align 4
  %39 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %40 = call i32 @oxygen_format(%struct.snd_pcm_hw_params* %39)
  %41 = load i32, i32* @OXYGEN_REC_FORMAT_B_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* @OXYGEN_REC_FORMAT_B_MASK, align 4
  %44 = call i32 @oxygen_write8_masked(%struct.oxygen* %37, i32 %38, i32 %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %73, label %47

47:                                               ; preds = %31
  %48 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %49 = load i32, i32* @OXYGEN_I2S_B_FORMAT, align 4
  %50 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %51 = call i32 @oxygen_rate(%struct.snd_pcm_hw_params* %50)
  %52 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %53 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %51, %55
  %57 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %58 = load i32, i32* @PCM_B, align 4
  %59 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %60 = call i32 @get_mclk(%struct.oxygen* %57, i32 %58, %struct.snd_pcm_hw_params* %59)
  %61 = or i32 %56, %60
  %62 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %63 = call i32 @oxygen_i2s_bits(%struct.snd_pcm_hw_params* %62)
  %64 = or i32 %61, %63
  %65 = load i32, i32* @OXYGEN_I2S_RATE_MASK, align 4
  %66 = load i32, i32* @OXYGEN_I2S_FORMAT_MASK, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @OXYGEN_I2S_MCLK_MASK, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @OXYGEN_I2S_BITS_MASK, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @oxygen_write16_masked(%struct.oxygen* %48, i32 %49, i32 %64, i32 %71)
  br label %73

73:                                               ; preds = %47, %31
  %74 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %75 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %74, i32 0, i32 2
  %76 = call i32 @spin_unlock_irq(i32* %75)
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %73
  %80 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %81 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %80, i32 0, i32 0
  %82 = call i32 @mutex_lock(i32* %81)
  %83 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %84 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32 (%struct.oxygen.0*, %struct.snd_pcm_hw_params*)*, i32 (%struct.oxygen.0*, %struct.snd_pcm_hw_params*)** %85, align 8
  %87 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %88 = bitcast %struct.oxygen* %87 to %struct.oxygen.0*
  %89 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %90 = call i32 %86(%struct.oxygen.0* %88, %struct.snd_pcm_hw_params* %89)
  %91 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %92 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  br label %94

94:                                               ; preds = %79, %73
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %16
  %96 = load i32, i32* %3, align 4
  ret i32 %96
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
