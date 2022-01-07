; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_pcm.c_snd_ac97_pcm_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_pcm.c_snd_ac97_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_pcm = type { i16, i32, i64, %struct.snd_ac97_bus*, %struct.TYPE_2__* }
%struct.snd_ac97_bus = type { i32**, i32 }
%struct.TYPE_2__ = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ac97_pcm_close(%struct.ac97_pcm* %0) #0 {
  %2 = alloca %struct.ac97_pcm*, align 8
  %3 = alloca %struct.snd_ac97_bus*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ac97_pcm* %0, %struct.ac97_pcm** %2, align 8
  %7 = load %struct.ac97_pcm*, %struct.ac97_pcm** %2, align 8
  %8 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %7, i32 0, i32 0
  %9 = load i16, i16* %8, align 8
  store i16 %9, i16* %4, align 2
  %10 = load %struct.ac97_pcm*, %struct.ac97_pcm** %2, align 8
  %11 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %10, i32 0, i32 3
  %12 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %11, align 8
  store %struct.snd_ac97_bus* %12, %struct.snd_ac97_bus** %3, align 8
  %13 = load %struct.ac97_pcm*, %struct.ac97_pcm** %2, align 8
  %14 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %13, i32 0, i32 3
  %15 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %14, align 8
  %16 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %15, i32 0, i32 1
  %17 = call i32 @spin_lock_irq(i32* %16)
  store i32 3, i32* %5, align 4
  br label %18

18:                                               ; preds = %54, %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 12
  br i1 %20, label %21, label %57

21:                                               ; preds = %18
  %22 = load i16, i16* %4, align 2
  %23 = zext i16 %22 to i32
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %54

29:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %50, %29
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = shl i32 1, %34
  %36 = xor i32 %35, -1
  %37 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %3, align 8
  %38 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %37, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = load %struct.ac97_pcm*, %struct.ac97_pcm** %2, align 8
  %41 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32*, i32** %39, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %36
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %33
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %30

53:                                               ; preds = %30
  br label %54

54:                                               ; preds = %53, %28
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %18

57:                                               ; preds = %18
  %58 = load %struct.ac97_pcm*, %struct.ac97_pcm** %2, align 8
  %59 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %58, i32 0, i32 0
  store i16 0, i16* %59, align 8
  %60 = load %struct.ac97_pcm*, %struct.ac97_pcm** %2, align 8
  %61 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = load %struct.ac97_pcm*, %struct.ac97_pcm** %2, align 8
  %63 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %62, i32 0, i32 3
  %64 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %63, align 8
  %65 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %64, i32 0, i32 1
  %66 = call i32 @spin_unlock_irq(i32* %65)
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
