; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_update_spdif_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_update_spdif_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@SPDIF_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32)* @update_spdif_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_spdif_rate(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %9 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %13 = load i32, i32* @SPDIF_CTRL, align 4
  %14 = call i32 @ICEMT1724(%struct.snd_ice1712* %12, i32 %13)
  %15 = call i32 @inw(i32 %14)
  store i32 %15, i32* %5, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, -28673
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %38 [
    i32 44100, label %19
    i32 48000, label %20
    i32 32000, label %23
    i32 88200, label %26
    i32 96000, label %29
    i32 192000, label %32
    i32 176400, label %35
  ]

19:                                               ; preds = %2
  br label %38

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, 8192
  store i32 %22, i32* %6, align 4
  br label %38

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, 12288
  store i32 %25, i32* %6, align 4
  br label %38

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, 16384
  store i32 %28, i32* %6, align 4
  br label %38

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, 20480
  store i32 %31, i32* %6, align 4
  br label %38

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, 24576
  store i32 %34, i32* %6, align 4
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, 28672
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %2, %35, %32, %29, %26, %23, %20, %19
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @update_spdif_bits(%struct.snd_ice1712* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %48 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %47, i32 0, i32 0
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @ICEMT1724(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @update_spdif_bits(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
