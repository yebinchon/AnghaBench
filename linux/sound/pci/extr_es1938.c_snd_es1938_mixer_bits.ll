; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_mixer_bits.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_mixer_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1938 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MIXERADDR = common dso_local global i32 0, align 4
@MIXERDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Mixer reg %02x was %02x, set to %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es1938*, i8, i8, i8)* @snd_es1938_mixer_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1938_mixer_bits(%struct.es1938* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.es1938*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.es1938* %0, %struct.es1938** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %13 = load %struct.es1938*, %struct.es1938** %5, align 8
  %14 = getelementptr inbounds %struct.es1938, %struct.es1938* %13, i32 0, i32 0
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i8, i8* %6, align 1
  %18 = load %struct.es1938*, %struct.es1938** %5, align 8
  %19 = load i32, i32* @MIXERADDR, align 4
  %20 = call i32 @SLSB_REG(%struct.es1938* %18, i32 %19)
  %21 = call i32 @outb(i8 zeroext %17, i32 %20)
  %22 = load %struct.es1938*, %struct.es1938** %5, align 8
  %23 = load i32, i32* @MIXERDATA, align 4
  %24 = call i32 @SLSB_REG(%struct.es1938* %22, i32 %23)
  %25 = call zeroext i8 @inb(i32 %24)
  store i8 %25, i8* %10, align 1
  %26 = load i8, i8* %10, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %27, %29
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %12, align 1
  %32 = load i8, i8* %8, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* %12, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %4
  %38 = load i8, i8* %10, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* %7, align 1
  %41 = zext i8 %40 to i32
  %42 = xor i32 %41, -1
  %43 = and i32 %39, %42
  %44 = load i8, i8* %8, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* %7, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %45, %47
  %49 = or i32 %43, %48
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %11, align 1
  %51 = load i8, i8* %11, align 1
  %52 = load %struct.es1938*, %struct.es1938** %5, align 8
  %53 = load i32, i32* @MIXERDATA, align 4
  %54 = call i32 @SLSB_REG(%struct.es1938* %52, i32 %53)
  %55 = call i32 @outb(i8 zeroext %51, i32 %54)
  %56 = load %struct.es1938*, %struct.es1938** %5, align 8
  %57 = getelementptr inbounds %struct.es1938, %struct.es1938* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8, i8* %6, align 1
  %62 = load i8, i8* %10, align 1
  %63 = load i8, i8* %11, align 1
  %64 = call i32 @dev_dbg(i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8 zeroext %61, i8 zeroext %62, i8 zeroext %63)
  br label %65

65:                                               ; preds = %37, %4
  %66 = load %struct.es1938*, %struct.es1938** %5, align 8
  %67 = getelementptr inbounds %struct.es1938, %struct.es1938* %66, i32 0, i32 0
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i8, i8* %12, align 1
  %71 = zext i8 %70 to i32
  ret i32 %71
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @SLSB_REG(%struct.es1938*, i32) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
