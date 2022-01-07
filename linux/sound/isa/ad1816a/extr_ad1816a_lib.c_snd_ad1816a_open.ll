; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ad1816a = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@AD1816A_MODE_OPEN = common dso_local global i32 0, align 4
@AD1816A_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@AD1816A_PLAYBACK_IRQ_PENDING = common dso_local global i32 0, align 4
@AD1816A_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@AD1816A_PLAYBACK_IRQ_ENABLE = common dso_local global i32 0, align 4
@AD1816A_CAPTURE_IRQ_PENDING = common dso_local global i32 0, align 4
@AD1816A_CAPTURE_IRQ_ENABLE = common dso_local global i32 0, align 4
@AD1816A_TIMER_IRQ_PENDING = common dso_local global i32 0, align 4
@AD1816A_TIMER_IRQ_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ad1816a*, i32)* @snd_ad1816a_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ad1816a_open(%struct.snd_ad1816a* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ad1816a*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.snd_ad1816a* %0, %struct.snd_ad1816a** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %8 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %7, i32 0, i32 1
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %19 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %18, i32 0, i32 1
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %65

24:                                               ; preds = %2
  %25 = load i32, i32* @AD1816A_MODE_OPEN, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  switch i32 %27, label %55 [
    i32 129, label %28
    i32 130, label %37
    i32 128, label %46
  ]

28:                                               ; preds = %24
  %29 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %30 = load i32, i32* @AD1816A_INTERRUPT_STATUS, align 4
  %31 = load i32, i32* @AD1816A_PLAYBACK_IRQ_PENDING, align 4
  %32 = call i32 @snd_ad1816a_out_mask(%struct.snd_ad1816a* %29, i32 %30, i32 %31, i32 0)
  %33 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %34 = load i32, i32* @AD1816A_INTERRUPT_ENABLE, align 4
  %35 = load i32, i32* @AD1816A_PLAYBACK_IRQ_ENABLE, align 4
  %36 = call i32 @snd_ad1816a_write_mask(%struct.snd_ad1816a* %33, i32 %34, i32 %35, i32 65535)
  br label %55

37:                                               ; preds = %24
  %38 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %39 = load i32, i32* @AD1816A_INTERRUPT_STATUS, align 4
  %40 = load i32, i32* @AD1816A_CAPTURE_IRQ_PENDING, align 4
  %41 = call i32 @snd_ad1816a_out_mask(%struct.snd_ad1816a* %38, i32 %39, i32 %40, i32 0)
  %42 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %43 = load i32, i32* @AD1816A_INTERRUPT_ENABLE, align 4
  %44 = load i32, i32* @AD1816A_CAPTURE_IRQ_ENABLE, align 4
  %45 = call i32 @snd_ad1816a_write_mask(%struct.snd_ad1816a* %42, i32 %43, i32 %44, i32 65535)
  br label %55

46:                                               ; preds = %24
  %47 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %48 = load i32, i32* @AD1816A_INTERRUPT_STATUS, align 4
  %49 = load i32, i32* @AD1816A_TIMER_IRQ_PENDING, align 4
  %50 = call i32 @snd_ad1816a_out_mask(%struct.snd_ad1816a* %47, i32 %48, i32 %49, i32 0)
  %51 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %52 = load i32, i32* @AD1816A_INTERRUPT_ENABLE, align 4
  %53 = load i32, i32* @AD1816A_TIMER_IRQ_ENABLE, align 4
  %54 = call i32 @snd_ad1816a_write_mask(%struct.snd_ad1816a* %51, i32 %52, i32 %53, i32 65535)
  br label %55

55:                                               ; preds = %46, %24, %37, %28
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %58 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %4, align 8
  %62 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %61, i32 0, i32 1
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %55, %17
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_ad1816a_out_mask(%struct.snd_ad1816a*, i32, i32, i32) #1

declare dso_local i32 @snd_ad1816a_write_mask(%struct.snd_ad1816a*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
