; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_io.c_snd_gf1_peek.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_io.c_snd_gf1_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@SNDRV_GF1_GW_DRAM_IO_LOW = common dso_local global i8 0, align 1
@SNDRV_GF1_GB_DRAM_IO_HIGH = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @snd_gf1_peek(%struct.snd_gus_card* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_gus_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %8 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i8, i8* @SNDRV_GF1_GW_DRAM_IO_LOW, align 1
  %12 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %13 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @outb(i8 zeroext %11, i32 %15)
  %17 = call i32 (...) @mb()
  %18 = load i32, i32* %4, align 4
  %19 = trunc i32 %18 to i16
  %20 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %21 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @outw(i16 zeroext %19, i32 %23)
  %25 = call i32 (...) @mb()
  %26 = load i8, i8* @SNDRV_GF1_GB_DRAM_IO_HIGH, align 1
  %27 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %28 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @outb(i8 zeroext %26, i32 %30)
  %32 = call i32 (...) @mb()
  %33 = load i32, i32* %4, align 4
  %34 = lshr i32 %33, 16
  %35 = trunc i32 %34 to i8
  %36 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %37 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @outb(i8 zeroext %35, i32 %39)
  %41 = call i32 (...) @mb()
  %42 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %43 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call zeroext i8 @inb(i32 %45)
  store i8 %46, i8* %6, align 1
  %47 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %48 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %47, i32 0, i32 0
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i8, i8* %6, align 1
  ret i8 %51
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @outw(i16 zeroext, i32) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
