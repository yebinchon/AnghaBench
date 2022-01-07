; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_mixer_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_mixer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1938 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MIXERADDR = common dso_local global i32 0, align 4
@MIXERDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Mixer reg %02x now is %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es1938*, i8)* @snd_es1938_mixer_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1938_mixer_read(%struct.es1938* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.es1938*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.es1938* %0, %struct.es1938** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.es1938*, %struct.es1938** %3, align 8
  %8 = getelementptr inbounds %struct.es1938, %struct.es1938* %7, i32 0, i32 1
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i8, i8* %4, align 1
  %12 = load %struct.es1938*, %struct.es1938** %3, align 8
  %13 = load i32, i32* @MIXERADDR, align 4
  %14 = call i32 @SLSB_REG(%struct.es1938* %12, i32 %13)
  %15 = call i32 @outb(i8 zeroext %11, i32 %14)
  %16 = load %struct.es1938*, %struct.es1938** %3, align 8
  %17 = load i32, i32* @MIXERDATA, align 4
  %18 = call i32 @SLSB_REG(%struct.es1938* %16, i32 %17)
  %19 = call i32 @inb(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.es1938*, %struct.es1938** %3, align 8
  %21 = getelementptr inbounds %struct.es1938, %struct.es1938* %20, i32 0, i32 1
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.es1938*, %struct.es1938** %3, align 8
  %25 = getelementptr inbounds %struct.es1938, %struct.es1938* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8, i8* %4, align 1
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8 zeroext %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @SLSB_REG(%struct.es1938*, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
