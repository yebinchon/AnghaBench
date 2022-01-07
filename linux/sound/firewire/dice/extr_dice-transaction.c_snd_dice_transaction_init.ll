; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-transaction.c_snd_dice_transaction_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-transaction.c_snd_dice_transaction_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { %struct.fw_address_handler }
%struct.fw_address_handler = type { i32, %struct.snd_dice*, i32 }

@dice_notification = common dso_local global i32 0, align 4
@fw_high_memory_region = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dice_transaction_init(%struct.snd_dice* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_dice*, align 8
  %4 = alloca %struct.fw_address_handler*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %3, align 8
  %6 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %7 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %6, i32 0, i32 0
  store %struct.fw_address_handler* %7, %struct.fw_address_handler** %4, align 8
  %8 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %9 = call i32 @get_subaddrs(%struct.snd_dice* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %16 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %15, i32 0, i32 0
  store i32 4, i32* %16, align 8
  %17 = load i32, i32* @dice_notification, align 4
  %18 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %19 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %21 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %22 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %21, i32 0, i32 1
  store %struct.snd_dice* %20, %struct.snd_dice** %22, align 8
  %23 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %24 = call i32 @fw_core_add_address_handler(%struct.fw_address_handler* %23, i32* @fw_high_memory_region)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %14
  %28 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %29 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %28, i32 0, i32 1
  store %struct.snd_dice* null, %struct.snd_dice** %29, align 8
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %43

31:                                               ; preds = %14
  %32 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %33 = call i32 @register_notification_address(%struct.snd_dice* %32, i32 1)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %38 = call i32 @fw_core_remove_address_handler(%struct.fw_address_handler* %37)
  %39 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %40 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %39, i32 0, i32 1
  store %struct.snd_dice* null, %struct.snd_dice** %40, align 8
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %27, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @get_subaddrs(%struct.snd_dice*) #1

declare dso_local i32 @fw_core_add_address_handler(%struct.fw_address_handler*, i32*) #1

declare dso_local i32 @register_notification_address(%struct.snd_dice*, i32) #1

declare dso_local i32 @fw_core_remove_address_handler(%struct.fw_address_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
