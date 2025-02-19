; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_playback1_setdma.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_playback1_setdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1938 = type { i32, i32 }

@AUDIO2MODE = common dso_local global i32 0, align 4
@AUDIO2DMAADDR = common dso_local global i32 0, align 4
@AUDIO2DMACOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1938*)* @snd_es1938_playback1_setdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1938_playback1_setdma(%struct.es1938* %0) #0 {
  %2 = alloca %struct.es1938*, align 8
  store %struct.es1938* %0, %struct.es1938** %2, align 8
  %3 = load %struct.es1938*, %struct.es1938** %2, align 8
  %4 = load i32, i32* @AUDIO2MODE, align 4
  %5 = call i32 @SLIO_REG(%struct.es1938* %3, i32 %4)
  %6 = call i32 @outb(i32 0, i32 %5)
  %7 = load %struct.es1938*, %struct.es1938** %2, align 8
  %8 = getelementptr inbounds %struct.es1938, %struct.es1938* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.es1938*, %struct.es1938** %2, align 8
  %11 = load i32, i32* @AUDIO2DMAADDR, align 4
  %12 = call i32 @SLIO_REG(%struct.es1938* %10, i32 %11)
  %13 = call i32 @outl(i32 %9, i32 %12)
  %14 = load %struct.es1938*, %struct.es1938** %2, align 8
  %15 = load i32, i32* @AUDIO2DMACOUNT, align 4
  %16 = call i32 @SLIO_REG(%struct.es1938* %14, i32 %15)
  %17 = call i32 @outw(i32 0, i32 %16)
  %18 = load %struct.es1938*, %struct.es1938** %2, align 8
  %19 = getelementptr inbounds %struct.es1938, %struct.es1938* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.es1938*, %struct.es1938** %2, align 8
  %22 = load i32, i32* @AUDIO2DMACOUNT, align 4
  %23 = call i32 @SLIO_REG(%struct.es1938* %21, i32 %22)
  %24 = call i32 @outw(i32 %20, i32 %23)
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @SLIO_REG(%struct.es1938*, i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @outw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
