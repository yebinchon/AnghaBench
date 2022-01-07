; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ad1889.c_ad1889_unmute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ad1889.c_ad1889_unmute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ad1889 = type { i32 }

@AD_DS_WADA = common dso_local global i32 0, align 4
@AD_DS_WADA_RWAM = common dso_local global i32 0, align 4
@AD_DS_WADA_LWAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ad1889*)* @ad1889_unmute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad1889_unmute(%struct.snd_ad1889* %0) #0 {
  %2 = alloca %struct.snd_ad1889*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_ad1889* %0, %struct.snd_ad1889** %2, align 8
  %4 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %5 = load i32, i32* @AD_DS_WADA, align 4
  %6 = call i32 @ad1889_readw(%struct.snd_ad1889* %4, i32 %5)
  %7 = load i32, i32* @AD_DS_WADA_RWAM, align 4
  %8 = load i32, i32* @AD_DS_WADA_LWAM, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = and i32 %6, %10
  store i32 %11, i32* %3, align 4
  %12 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %13 = load i32, i32* @AD_DS_WADA, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ad1889_writew(%struct.snd_ad1889* %12, i32 %13, i32 %14)
  %16 = load %struct.snd_ad1889*, %struct.snd_ad1889** %2, align 8
  %17 = load i32, i32* @AD_DS_WADA, align 4
  %18 = call i32 @ad1889_readw(%struct.snd_ad1889* %16, i32 %17)
  ret void
}

declare dso_local i32 @ad1889_readw(%struct.snd_ad1889*, i32) #1

declare dso_local i32 @ad1889_writew(%struct.snd_ad1889*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
