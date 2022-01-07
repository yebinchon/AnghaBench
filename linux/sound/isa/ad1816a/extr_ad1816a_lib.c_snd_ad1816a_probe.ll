; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ad1816a = type { i32, i32, i32 }

@AD1816A_VERSION_ID = common dso_local global i32 0, align 4
@AD1816A_HW_AD1815 = common dso_local global i32 0, align 4
@AD1816A_HW_AD18MAX10 = common dso_local global i32 0, align 4
@AD1816A_HW_AD1816A = common dso_local global i32 0, align 4
@AD1816A_HW_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ad1816a*)* @snd_ad1816a_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ad1816a_probe(%struct.snd_ad1816a* %0) #0 {
  %2 = alloca %struct.snd_ad1816a*, align 8
  %3 = alloca i64, align 8
  store %struct.snd_ad1816a* %0, %struct.snd_ad1816a** %2, align 8
  %4 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %2, align 8
  %5 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %2, align 8
  %9 = load i32, i32* @AD1816A_VERSION_ID, align 4
  %10 = call i32 @snd_ad1816a_read(%struct.snd_ad1816a* %8, i32 %9)
  %11 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %2, align 8
  %12 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  switch i32 %10, label %25 [
    i32 0, label %13
    i32 1, label %17
    i32 3, label %21
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @AD1816A_HW_AD1815, align 4
  %15 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %2, align 8
  %16 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  br label %29

17:                                               ; preds = %1
  %18 = load i32, i32* @AD1816A_HW_AD18MAX10, align 4
  %19 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %2, align 8
  %20 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %29

21:                                               ; preds = %1
  %22 = load i32, i32* @AD1816A_HW_AD1816A, align 4
  %23 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %2, align 8
  %24 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @AD1816A_HW_AUTO, align 4
  %27 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %2, align 8
  %28 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %21, %17, %13
  %30 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %2, align 8
  %31 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %30, i32 0, i32 0
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_ad1816a_read(%struct.snd_ad1816a*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
