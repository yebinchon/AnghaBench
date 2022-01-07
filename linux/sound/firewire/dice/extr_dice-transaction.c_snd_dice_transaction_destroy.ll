; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-transaction.c_snd_dice_transaction_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-transaction.c_snd_dice_transaction_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { %struct.fw_address_handler }
%struct.fw_address_handler = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_dice_transaction_destroy(%struct.snd_dice* %0) #0 {
  %2 = alloca %struct.snd_dice*, align 8
  %3 = alloca %struct.fw_address_handler*, align 8
  store %struct.snd_dice* %0, %struct.snd_dice** %2, align 8
  %4 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %5 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %4, i32 0, i32 0
  store %struct.fw_address_handler* %5, %struct.fw_address_handler** %3, align 8
  %6 = load %struct.fw_address_handler*, %struct.fw_address_handler** %3, align 8
  %7 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %18

11:                                               ; preds = %1
  %12 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %13 = call i32 @unregister_notification_address(%struct.snd_dice* %12)
  %14 = load %struct.fw_address_handler*, %struct.fw_address_handler** %3, align 8
  %15 = call i32 @fw_core_remove_address_handler(%struct.fw_address_handler* %14)
  %16 = load %struct.fw_address_handler*, %struct.fw_address_handler** %3, align 8
  %17 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @unregister_notification_address(%struct.snd_dice*) #1

declare dso_local i32 @fw_core_remove_address_handler(%struct.fw_address_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
