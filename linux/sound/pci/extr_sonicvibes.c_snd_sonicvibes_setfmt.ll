; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_setfmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_setfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sonicvibes = type { i8, i32 }

@SV_MCE = common dso_local global i32 0, align 4
@SV_IREG_DMA_DATA_FMT = common dso_local global i32 0, align 4
@INDEX = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sonicvibes*, i8, i8)* @snd_sonicvibes_setfmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_sonicvibes_setfmt(%struct.sonicvibes* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.sonicvibes*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store %struct.sonicvibes* %0, %struct.sonicvibes** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %8 = load %struct.sonicvibes*, %struct.sonicvibes** %4, align 8
  %9 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %8, i32 0, i32 1
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* @SV_MCE, align 4
  %13 = load i32, i32* @SV_IREG_DMA_DATA_FMT, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.sonicvibes*, %struct.sonicvibes** %4, align 8
  %16 = load i32, i32* @INDEX, align 4
  %17 = call i32 @SV_REG(%struct.sonicvibes* %15, i32 %16)
  %18 = call i32 @outb(i32 %14, i32 %17)
  %19 = load i8, i8* %5, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.sonicvibes*, %struct.sonicvibes** %4, align 8
  %23 = load i32, i32* @DATA, align 4
  %24 = call i32 @SV_REG(%struct.sonicvibes* %22, i32 %23)
  %25 = call zeroext i8 @inb(i32 %24)
  %26 = load %struct.sonicvibes*, %struct.sonicvibes** %4, align 8
  %27 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %26, i32 0, i32 0
  store i8 %25, i8* %27, align 4
  %28 = call i32 @udelay(i32 10)
  br label %29

29:                                               ; preds = %21, %3
  %30 = load %struct.sonicvibes*, %struct.sonicvibes** %4, align 8
  %31 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 4
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %33, %35
  %37 = load i8, i8* %6, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %36, %38
  %40 = trunc i32 %39 to i8
  %41 = load %struct.sonicvibes*, %struct.sonicvibes** %4, align 8
  %42 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %41, i32 0, i32 0
  store i8 %40, i8* %42, align 4
  %43 = load %struct.sonicvibes*, %struct.sonicvibes** %4, align 8
  %44 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %43, i32 0, i32 0
  %45 = load i8, i8* %44, align 4
  %46 = zext i8 %45 to i32
  %47 = load %struct.sonicvibes*, %struct.sonicvibes** %4, align 8
  %48 = load i32, i32* @DATA, align 4
  %49 = call i32 @SV_REG(%struct.sonicvibes* %47, i32 %48)
  %50 = call i32 @outb(i32 %46, i32 %49)
  %51 = call i32 @udelay(i32 10)
  %52 = load %struct.sonicvibes*, %struct.sonicvibes** %4, align 8
  %53 = load i32, i32* @INDEX, align 4
  %54 = call i32 @SV_REG(%struct.sonicvibes* %52, i32 %53)
  %55 = call i32 @outb(i32 0, i32 %54)
  %56 = call i32 @udelay(i32 10)
  %57 = load %struct.sonicvibes*, %struct.sonicvibes** %4, align 8
  %58 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %57, i32 0, i32 1
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @SV_REG(%struct.sonicvibes*, i32) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
