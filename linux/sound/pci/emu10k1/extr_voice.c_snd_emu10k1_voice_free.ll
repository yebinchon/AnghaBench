; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_voice.c_snd_emu10k1_voice_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_voice.c_snd_emu10k1_voice_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32 }
%struct.snd_emu10k1_voice = type { i32, i32*, i64, i64, i64, i64, i64, i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_voice_free(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_voice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_emu10k1_voice*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store %struct.snd_emu10k1_voice* %1, %struct.snd_emu10k1_voice** %5, align 8
  %7 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %5, align 8
  %8 = icmp ne %struct.snd_emu10k1_voice* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @snd_BUG_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %44

16:                                               ; preds = %2
  %17 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %18 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %17, i32 0, i32 0
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %5, align 8
  %22 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %21, i32 0, i32 7
  store i32* null, i32** %22, align 8
  %23 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %5, align 8
  %24 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %5, align 8
  %26 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %5, align 8
  %28 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %5, align 8
  %30 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %5, align 8
  %32 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %5, align 8
  %34 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %36 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %5, align 8
  %37 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @snd_emu10k1_voice_init(%struct.snd_emu10k1* %35, i32 %38)
  %40 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %41 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %40, i32 0, i32 0
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %16, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_emu10k1_voice_init(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
