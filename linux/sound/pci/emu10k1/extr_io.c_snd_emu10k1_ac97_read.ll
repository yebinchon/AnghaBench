; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_io.c_snd_emu10k1_ac97_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_io.c_snd_emu10k1_ac97_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.snd_emu10k1* }
%struct.snd_emu10k1 = type { i32, i64 }

@AC97ADDRESS = common dso_local global i64 0, align 8
@AC97DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @snd_emu10k1_ac97_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  store i16 %1, i16* %4, align 2
  %8 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %9 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %8, i32 0, i32 0
  %10 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  store %struct.snd_emu10k1* %10, %struct.snd_emu10k1** %5, align 8
  %11 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %12 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i16, i16* %4, align 2
  %16 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %17 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AC97ADDRESS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb(i16 zeroext %15, i64 %20)
  %22 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %23 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AC97DATA, align 8
  %26 = add nsw i64 %24, %25
  %27 = call zeroext i16 @inw(i64 %26)
  store i16 %27, i16* %7, align 2
  %28 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %29 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %28, i32 0, i32 0
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i16, i16* %7, align 2
  ret i16 %32
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i16 zeroext, i64) #1

declare dso_local zeroext i16 @inw(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
