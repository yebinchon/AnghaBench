; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_transaction.c_snd_efw_transaction_add_instance.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_transaction.c_snd_efw_transaction_add_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_efw = type { i32 }

@instances_lock = common dso_local global i32 0, align 4
@SNDRV_CARDS = common dso_local global i32 0, align 4
@instances = common dso_local global %struct.snd_efw** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_efw_transaction_add_instance(%struct.snd_efw* %0) #0 {
  %2 = alloca %struct.snd_efw*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_efw* %0, %struct.snd_efw** %2, align 8
  %4 = call i32 @spin_lock_irq(i32* @instances_lock)
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %23, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @SNDRV_CARDS, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load %struct.snd_efw**, %struct.snd_efw*** @instances, align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.snd_efw*, %struct.snd_efw** %10, i64 %12
  %14 = load %struct.snd_efw*, %struct.snd_efw** %13, align 8
  %15 = icmp ne %struct.snd_efw* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %23

17:                                               ; preds = %9
  %18 = load %struct.snd_efw*, %struct.snd_efw** %2, align 8
  %19 = load %struct.snd_efw**, %struct.snd_efw*** @instances, align 8
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.snd_efw*, %struct.snd_efw** %19, i64 %21
  store %struct.snd_efw* %18, %struct.snd_efw** %22, align 8
  br label %26

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %5

26:                                               ; preds = %17, %5
  %27 = call i32 @spin_unlock_irq(i32* @instances_lock)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
