; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_snd_emu8000_peek.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_snd_emu8000_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu8000 = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @snd_emu8000_peek(%struct.snd_emu8000* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_emu8000*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i64, align 8
  store %struct.snd_emu8000* %0, %struct.snd_emu8000** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %10 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %9, i32 0, i32 1
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %15 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = trunc i32 %19 to i16
  %21 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %22 = call i32 @EMU8000_PTR(%struct.snd_emu8000* %21)
  %23 = call i32 @outw(i16 zeroext %20, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %26 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %18, %3
  %28 = load i32, i32* %5, align 4
  %29 = call zeroext i16 @inw(i32 %28)
  store i16 %29, i16* %7, align 2
  %30 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %31 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %30, i32 0, i32 1
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i16, i16* %7, align 2
  ret i16 %34
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i16 zeroext, i32) #1

declare dso_local i32 @EMU8000_PTR(%struct.snd_emu8000*) #1

declare dso_local zeroext i16 @inw(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
