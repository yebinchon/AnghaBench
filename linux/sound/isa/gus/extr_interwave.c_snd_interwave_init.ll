; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_interwave.c_snd_interwave_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_interwave.c_snd_interwave_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { i32, i32, i32, i32, i32, i32 }

@SNDRV_GF1_GB_SOUND_BLASTER_CONTROL = common dso_local global i32 0, align 4
@SNDRV_GF1_GB_COMPATIBILITY = common dso_local global i32 0, align 4
@SNDRV_GF1_GB_DECODE_CONTROL = common dso_local global i32 0, align 4
@SNDRV_GF1_GB_VERSION_NUMBER = common dso_local global i32 0, align 4
@SNDRV_GF1_GB_MPU401_CONTROL_A = common dso_local global i32 0, align 4
@SNDRV_GF1_GB_MPU401_CONTROL_B = common dso_local global i32 0, align 4
@SNDRV_GF1_GB_EMULATION_IRQ = common dso_local global i32 0, align 4
@joystick_dac = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.snd_gus_card*)* @snd_interwave_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_interwave_init(i32 %0, %struct.snd_gus_card* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_gus_card*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.snd_gus_card* %1, %struct.snd_gus_card** %4, align 8
  %6 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %7 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %6, i32 0, i32 5
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %11 = load i32, i32* @SNDRV_GF1_GB_SOUND_BLASTER_CONTROL, align 4
  %12 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %10, i32 %11, i32 0)
  %13 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %14 = load i32, i32* @SNDRV_GF1_GB_COMPATIBILITY, align 4
  %15 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %13, i32 %14, i32 31)
  %16 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %17 = load i32, i32* @SNDRV_GF1_GB_DECODE_CONTROL, align 4
  %18 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %16, i32 %17, i32 73)
  %19 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %20 = load i32, i32* @SNDRV_GF1_GB_VERSION_NUMBER, align 4
  %21 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %19, i32 %20, i32 17)
  %22 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %23 = load i32, i32* @SNDRV_GF1_GB_MPU401_CONTROL_A, align 4
  %24 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %22, i32 %23, i32 0)
  %25 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %26 = load i32, i32* @SNDRV_GF1_GB_MPU401_CONTROL_B, align 4
  %27 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %25, i32 %26, i32 48)
  %28 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %29 = load i32, i32* @SNDRV_GF1_GB_EMULATION_IRQ, align 4
  %30 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %28, i32 %29, i32 0)
  %31 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %32 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %31, i32 0, i32 5
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %36 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %38 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %40 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %39, i32 0, i32 2
  store i32 1, i32* %40, align 4
  %41 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %42 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %41, i32 0, i32 3
  store i32 1, i32* %42, align 4
  %43 = load i32*, i32** @joystick_dac, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %49 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_gf1_write8(%struct.snd_gus_card*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
