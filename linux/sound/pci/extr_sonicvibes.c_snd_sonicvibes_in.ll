; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_in.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sonicvibes = type { i32 }

@INDEX = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.sonicvibes*, i8)* @snd_sonicvibes_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @snd_sonicvibes_in(%struct.sonicvibes* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.sonicvibes*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store %struct.sonicvibes* %0, %struct.sonicvibes** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %8 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i8, i8* %4, align 1
  %12 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %13 = load i32, i32* @INDEX, align 4
  %14 = call i32 @SV_REG(%struct.sonicvibes* %12, i32 %13)
  %15 = call i32 @outb(i8 zeroext %11, i32 %14)
  %16 = call i32 @udelay(i32 10)
  %17 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %18 = load i32, i32* @DATA, align 4
  %19 = call i32 @SV_REG(%struct.sonicvibes* %17, i32 %18)
  %20 = call zeroext i8 @inb(i32 %19)
  store i8 %20, i8* %6, align 1
  %21 = call i32 @udelay(i32 10)
  %22 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %23 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %22, i32 0, i32 0
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load i8, i8* %6, align 1
  ret i8 %26
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @SV_REG(%struct.sonicvibes*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
