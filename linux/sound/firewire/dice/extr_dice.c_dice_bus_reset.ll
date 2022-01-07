; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice.c_dice_bus_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice.c_dice_bus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.snd_dice = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_unit*)* @dice_bus_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dice_bus_reset(%struct.fw_unit* %0) #0 {
  %2 = alloca %struct.fw_unit*, align 8
  %3 = alloca %struct.snd_dice*, align 8
  store %struct.fw_unit* %0, %struct.fw_unit** %2, align 8
  %4 = load %struct.fw_unit*, %struct.fw_unit** %2, align 8
  %5 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %4, i32 0, i32 0
  %6 = call %struct.snd_dice* @dev_get_drvdata(i32* %5)
  store %struct.snd_dice* %6, %struct.snd_dice** %3, align 8
  %7 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %8 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.fw_unit*, %struct.fw_unit** %2, align 8
  %13 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %14 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %13, i32 0, i32 2
  %15 = call i32 @snd_fw_schedule_registration(%struct.fw_unit* %12, i32* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %18 = call i32 @snd_dice_transaction_reinit(%struct.snd_dice* %17)
  %19 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %20 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %25 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %28 = call i32 @snd_dice_stream_update_duplex(%struct.snd_dice* %27)
  %29 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %30 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  br label %32

32:                                               ; preds = %23, %16
  ret void
}

declare dso_local %struct.snd_dice* @dev_get_drvdata(i32*) #1

declare dso_local i32 @snd_fw_schedule_registration(%struct.fw_unit*, i32*) #1

declare dso_local i32 @snd_dice_transaction_reinit(%struct.snd_dice*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_dice_stream_update_duplex(%struct.snd_dice*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
