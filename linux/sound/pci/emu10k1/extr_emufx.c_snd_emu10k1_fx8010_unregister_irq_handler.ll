; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_fx8010_unregister_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_fx8010_unregister_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, %struct.snd_emu10k1_fx8010_irq* }
%struct.snd_emu10k1_fx8010_irq = type { %struct.snd_emu10k1_fx8010_irq* }

@INTE_FXDSPENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_fx8010_unregister_irq_handler(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_fx8010_irq* %1) #0 {
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca %struct.snd_emu10k1_fx8010_irq*, align 8
  %5 = alloca %struct.snd_emu10k1_fx8010_irq*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %3, align 8
  store %struct.snd_emu10k1_fx8010_irq* %1, %struct.snd_emu10k1_fx8010_irq** %4, align 8
  %7 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %8 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %13 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %14, align 8
  store %struct.snd_emu10k1_fx8010_irq* %15, %struct.snd_emu10k1_fx8010_irq** %5, align 8
  %16 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %4, align 8
  %17 = icmp eq %struct.snd_emu10k1_fx8010_irq* %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %2
  %19 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %5, align 8
  %20 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %19, i32 0, i32 0
  %21 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %20, align 8
  %22 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %23 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store %struct.snd_emu10k1_fx8010_irq* %21, %struct.snd_emu10k1_fx8010_irq** %24, align 8
  %25 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %26 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %27, align 8
  %29 = icmp eq %struct.snd_emu10k1_fx8010_irq* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %18
  %31 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %32 = load i32, i32* @INTE_FXDSPENABLE, align 4
  %33 = call i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1* %31, i32 %32)
  %34 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %35 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %30, %18
  br label %65

37:                                               ; preds = %2
  br label %38

38:                                               ; preds = %49, %37
  %39 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %5, align 8
  %40 = icmp ne %struct.snd_emu10k1_fx8010_irq* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %5, align 8
  %43 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %42, i32 0, i32 0
  %44 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %43, align 8
  %45 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %4, align 8
  %46 = icmp ne %struct.snd_emu10k1_fx8010_irq* %44, %45
  br label %47

47:                                               ; preds = %41, %38
  %48 = phi i1 [ false, %38 ], [ %46, %41 ]
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %5, align 8
  %51 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %50, i32 0, i32 0
  %52 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %51, align 8
  store %struct.snd_emu10k1_fx8010_irq* %52, %struct.snd_emu10k1_fx8010_irq** %5, align 8
  br label %38

53:                                               ; preds = %47
  %54 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %5, align 8
  %55 = icmp ne %struct.snd_emu10k1_fx8010_irq* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %5, align 8
  %58 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %57, i32 0, i32 0
  %59 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %58, align 8
  %60 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %59, i32 0, i32 0
  %61 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %60, align 8
  %62 = load %struct.snd_emu10k1_fx8010_irq*, %struct.snd_emu10k1_fx8010_irq** %5, align 8
  %63 = getelementptr inbounds %struct.snd_emu10k1_fx8010_irq, %struct.snd_emu10k1_fx8010_irq* %62, i32 0, i32 0
  store %struct.snd_emu10k1_fx8010_irq* %61, %struct.snd_emu10k1_fx8010_irq** %63, align 8
  br label %64

64:                                               ; preds = %56, %53
  br label %65

65:                                               ; preds = %64, %36
  %66 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %67 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
