; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_fx8010_register_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_fx8010_register_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.snd_emu10k1_fx8010_irq* }
%struct.snd_emu10k1_fx8010_irq = type { i8, %struct.snd_emu10k1_fx8010_irq*, i8*, i32* }

@snd_emu10k1_fx8010_interrupt = common dso_local global i32 0, align 4
@INTE_FXDSPENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_fx8010_register_irq_handler(%struct.snd_emu10k1* %0, i32* %1, i8 zeroext %2, i8* %3, %struct.snd_emu10k1_fx8010_irq* %4) #0 {
  %6 = alloca %struct.snd_emu10k1*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca %struct.snd_emu10k1_fx8010_irq*, align 8
  %11 = alloca i64, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  store %struct.snd_emu10k1_fx8010_irq* %4, %struct.snd_emu10k1_fx8010_irq** %10, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %10, align 8
  %14 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %13, i32 0, i32 3
  store i32* %12, i32** %14, align 8
  %15 = load i8, i8* %8, align 1
  %16 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %10, align 8
  %17 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %16, i32 0, i32 0
  store i8 %15, i8* %17, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %10, align 8
  %20 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %10, align 8
  %22 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %21, i32 0, i32 1
  store %struct.snd_emu10k1_fx8010_irq* null, %struct.snd_emu10k1_fx8010_irq** %22, align 8
  %23 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %24 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %29 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %30, align 8
  %32 = icmp eq %struct.snd_emu10k1_fx8010_irq* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %5
  %34 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %10, align 8
  %35 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %36 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store %struct.snd_emu10k1_fx8010_irq* %34, %struct.snd_emu10k1_fx8010_irq** %37, align 8
  %38 = load i32, i32* @snd_emu10k1_fx8010_interrupt, align 4
  %39 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %40 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %42 = load i32, i32* @INTE_FXDSPENABLE, align 4
  %43 = call i32 @snd_emu10k1_intr_enable(%struct.snd_emu10k1* %41, i32 %42)
  br label %55

44:                                               ; preds = %5
  %45 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %46 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %47, align 8
  %49 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %10, align 8
  %50 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %49, i32 0, i32 1
  store %struct.snd_emu10k1_fx8010_irq* %48, %struct.snd_emu10k1_fx8010_irq** %50, align 8
  %51 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %10, align 8
  %52 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %53 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store %struct.snd_emu10k1_fx8010_irq* %51, %struct.snd_emu10k1_fx8010_irq** %54, align 8
  br label %55

55:                                               ; preds = %44, %33
  %56 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %57 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_emu10k1_intr_enable(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
