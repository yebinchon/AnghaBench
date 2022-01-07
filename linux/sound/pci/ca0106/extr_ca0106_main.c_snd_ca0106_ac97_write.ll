; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_ac97_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_ac97_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.snd_ca0106* }
%struct.snd_ca0106 = type { i32, i64 }

@AC97ADDRESS = common dso_local global i64 0, align 8
@AC97DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @snd_ca0106_ac97_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ca0106_ac97_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.snd_ca0106*, align 8
  %8 = alloca i64, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %9, i32 0, i32 0
  %11 = load %struct.snd_ca0106*, %struct.snd_ca0106** %10, align 8
  store %struct.snd_ca0106* %11, %struct.snd_ca0106** %7, align 8
  %12 = load %struct.snd_ca0106*, %struct.snd_ca0106** %7, align 8
  %13 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i16, i16* %5, align 2
  %17 = load %struct.snd_ca0106*, %struct.snd_ca0106** %7, align 8
  %18 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AC97ADDRESS, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outb(i16 zeroext %16, i64 %21)
  %23 = load i16, i16* %6, align 2
  %24 = load %struct.snd_ca0106*, %struct.snd_ca0106** %7, align 8
  %25 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AC97DATA, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outw(i16 zeroext %23, i64 %28)
  %30 = load %struct.snd_ca0106*, %struct.snd_ca0106** %7, align 8
  %31 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %30, i32 0, i32 0
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i16 zeroext, i64) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
