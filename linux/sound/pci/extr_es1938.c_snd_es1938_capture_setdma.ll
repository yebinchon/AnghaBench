; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_capture_setdma.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_capture_setdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1938 = type { i64, i32, i32 }

@DMACOMMAND = common dso_local global i32 0, align 4
@DMACLEAR = common dso_local global i32 0, align 4
@DMAMASK = common dso_local global i32 0, align 4
@DMAMODE = common dso_local global i32 0, align 4
@DMAADDR = common dso_local global i32 0, align 4
@DMACOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1938*)* @snd_es1938_capture_setdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1938_capture_setdma(%struct.es1938* %0) #0 {
  %2 = alloca %struct.es1938*, align 8
  store %struct.es1938* %0, %struct.es1938** %2, align 8
  %3 = load %struct.es1938*, %struct.es1938** %2, align 8
  %4 = load i32, i32* @DMACOMMAND, align 4
  %5 = call i32 @SLDM_REG(%struct.es1938* %3, i32 %4)
  %6 = call i32 @outb(i32 196, i32 %5)
  %7 = load %struct.es1938*, %struct.es1938** %2, align 8
  %8 = load i32, i32* @DMACLEAR, align 4
  %9 = call i32 @SLDM_REG(%struct.es1938* %7, i32 %8)
  %10 = call i32 @outb(i32 0, i32 %9)
  %11 = load %struct.es1938*, %struct.es1938** %2, align 8
  %12 = load i32, i32* @DMAMASK, align 4
  %13 = call i32 @SLDM_REG(%struct.es1938* %11, i32 %12)
  %14 = call i32 @outb(i32 1, i32 %13)
  %15 = load %struct.es1938*, %struct.es1938** %2, align 8
  %16 = load i32, i32* @DMAMODE, align 4
  %17 = call i32 @SLDM_REG(%struct.es1938* %15, i32 %16)
  %18 = call i32 @outb(i32 20, i32 %17)
  %19 = load %struct.es1938*, %struct.es1938** %2, align 8
  %20 = getelementptr inbounds %struct.es1938, %struct.es1938* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.es1938*, %struct.es1938** %2, align 8
  %23 = load i32, i32* @DMAADDR, align 4
  %24 = call i32 @SLDM_REG(%struct.es1938* %22, i32 %23)
  %25 = call i32 @outl(i32 %21, i32 %24)
  %26 = load %struct.es1938*, %struct.es1938** %2, align 8
  %27 = getelementptr inbounds %struct.es1938, %struct.es1938* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.es1938*, %struct.es1938** %2, align 8
  %30 = getelementptr inbounds %struct.es1938, %struct.es1938* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.es1938*, %struct.es1938** %2, align 8
  %32 = getelementptr inbounds %struct.es1938, %struct.es1938* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %33, 1
  %35 = load %struct.es1938*, %struct.es1938** %2, align 8
  %36 = load i32, i32* @DMACOUNT, align 4
  %37 = call i32 @SLDM_REG(%struct.es1938* %35, i32 %36)
  %38 = call i32 @outw(i64 %34, i32 %37)
  %39 = load %struct.es1938*, %struct.es1938** %2, align 8
  %40 = load i32, i32* @DMAMASK, align 4
  %41 = call i32 @SLDM_REG(%struct.es1938* %39, i32 %40)
  %42 = call i32 @outb(i32 0, i32 %41)
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @SLDM_REG(%struct.es1938*, i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @outw(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
