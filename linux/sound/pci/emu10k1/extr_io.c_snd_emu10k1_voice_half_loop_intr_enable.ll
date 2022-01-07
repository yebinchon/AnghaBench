; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_io.c_snd_emu10k1_voice_half_loop_intr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_io.c_snd_emu10k1_voice_half_loop_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, i64 }

@HLIEH = common dso_local global i32 0, align 4
@PTR = common dso_local global i64 0, align 8
@DATA = common dso_local global i64 0, align 8
@HLIEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emu10k1_voice_half_loop_intr_enable(%struct.snd_emu10k1* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %8 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp uge i32 %11, 32
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load i32, i32* @HLIEH, align 4
  %15 = shl i32 %14, 16
  %16 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %17 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PTR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outl(i32 %15, i64 %20)
  %22 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %23 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DATA, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @inl(i64 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sub i32 %28, 32
  %30 = shl i32 1, %29
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %52

33:                                               ; preds = %2
  %34 = load i32, i32* @HLIEL, align 4
  %35 = shl i32 %34, 16
  %36 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %37 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PTR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outl(i32 %35, i64 %40)
  %42 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %43 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DATA, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @inl(i64 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %4, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %33, %13
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %55 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DATA, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outl(i32 %53, i64 %58)
  %60 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %61 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %60, i32 0, i32 0
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
