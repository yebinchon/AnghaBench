; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_ali_ac97spdifout_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_ali_ac97spdifout_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.intel8x0 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@ALID_AC97SPDIFOUT = common dso_local global i64 0, align 8
@ALI_INTERFACECR = common dso_local global i32 0, align 4
@ICH_ALI_IF_AC97SP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_intel8x0_ali_ac97spdifout_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0_ali_ac97spdifout_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.intel8x0*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.intel8x0* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.intel8x0* %6, %struct.intel8x0** %3, align 8
  %7 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %8 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i64, i64* @ALID_AC97SPDIFOUT, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %14 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %17 = load i32, i32* @ALI_INTERFACECR, align 4
  %18 = call i32 @ICHREG(i32 %17)
  %19 = call i32 @igetdword(%struct.intel8x0* %16, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @ICH_ALI_IF_AC97SP, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %25 = load i32, i32* @ALI_INTERFACECR, align 4
  %26 = call i32 @ICHREG(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @iputdword(%struct.intel8x0* %24, i32 %26, i32 %27)
  %29 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %30 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_irq(i32* %30)
  ret i32 0
}

declare dso_local %struct.intel8x0* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @igetdword(%struct.intel8x0*, i32) #1

declare dso_local i32 @ICHREG(i32) #1

declare dso_local i32 @iputdword(%struct.intel8x0*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
