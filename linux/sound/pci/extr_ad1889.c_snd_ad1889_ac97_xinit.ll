; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ad1889.c_snd_ad1889_ac97_xinit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ad1889.c_snd_ad1889_ac97_xinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ad1889 = type { i32 }

@AD_AC97_ACIC = common dso_local global i32 0, align 4
@AD_AC97_ACIC_ACRD = common dso_local global i32 0, align 4
@AD_AC97_ACIC_ACIE = common dso_local global i32 0, align 4
@AD_AC97_ACIC_ASOE = common dso_local global i32 0, align 4
@AD_AC97_ACIC_VSRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ad1889*)* @snd_ad1889_ac97_xinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ad1889_ac97_xinit(%struct.snd_ad1889* %0) #0 {
  %2 = alloca %struct.snd_ad1889*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_ad1889* %0, %struct.snd_ad1889** %2, align 8
  %4 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %5 = load i32, i32* @AD_AC97_ACIC, align 4
  %6 = call i32 @ad1889_readw(%struct.snd_ad1889* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @AD_AC97_ACIC_ACRD, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %11 = load i32, i32* @AD_AC97_ACIC, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ad1889_writew(%struct.snd_ad1889* %10, i32 %11, i32 %12)
  %14 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %15 = load i32, i32* @AD_AC97_ACIC, align 4
  %16 = call i32 @ad1889_readw(%struct.snd_ad1889* %14, i32 %15)
  %17 = call i32 @udelay(i32 10)
  %18 = load i32, i32* @AD_AC97_ACIC_ACIE, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %22 = load i32, i32* @AD_AC97_ACIC, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @ad1889_writew(%struct.snd_ad1889* %21, i32 %22, i32 %23)
  %25 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %26 = call i32 @snd_ad1889_ac97_ready(%struct.snd_ad1889* %25)
  %27 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %28 = load i32, i32* @AD_AC97_ACIC, align 4
  %29 = call i32 @ad1889_readw(%struct.snd_ad1889* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @AD_AC97_ACIC_ASOE, align 4
  %31 = load i32, i32* @AD_AC97_ACIC_VSRM, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %36 = load i32, i32* @AD_AC97_ACIC, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @ad1889_writew(%struct.snd_ad1889* %35, i32 %36, i32 %37)
  %39 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %40 = load i32, i32* @AD_AC97_ACIC, align 4
  %41 = call i32 @ad1889_readw(%struct.snd_ad1889* %39, i32 %40)
  ret void
}

declare dso_local i32 @ad1889_readw(%struct.snd_ad1889*, i32) #1

declare dso_local i32 @ad1889_writew(%struct.snd_ad1889*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_ad1889_ac97_ready(%struct.snd_ad1889*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
