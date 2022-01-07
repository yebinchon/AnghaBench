; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-transaction.c_unregister_notification_address.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-transaction.c_unregister_notification_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fw_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@OWNER_NODE_SHIFT = common dso_local global i32 0, align 4
@OWNER_NO_OWNER = common dso_local global i32 0, align 4
@TCODE_LOCK_COMPARE_SWAP = common dso_local global i32 0, align 4
@SND_DICE_ADDR_TYPE_GLOBAL = common dso_local global i32 0, align 4
@GLOBAL_OWNER = common dso_local global i32 0, align 4
@FW_QUIET = common dso_local global i32 0, align 4
@FW_FIXED_GENERATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_dice*)* @unregister_notification_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unregister_notification_address(%struct.snd_dice* %0) #0 {
  %2 = alloca %struct.snd_dice*, align 8
  %3 = alloca %struct.fw_device*, align 8
  %4 = alloca i32*, align 8
  store %struct.snd_dice* %0, %struct.snd_dice** %2, align 8
  %5 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %6 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.fw_device* @fw_parent_device(i32 %7)
  store %struct.fw_device* %8, %struct.fw_device** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32* @kmalloc(i32 16, i32 %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.fw_device*, %struct.fw_device** %3, align 8
  %16 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @OWNER_NODE_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %24 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %22, %26
  %28 = call i32 @cpu_to_be64(i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @OWNER_NO_OWNER, align 4
  %32 = call i32 @cpu_to_be64(i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %36 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TCODE_LOCK_COMPARE_SWAP, align 4
  %39 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %40 = load i32, i32* @SND_DICE_ADDR_TYPE_GLOBAL, align 4
  %41 = load i32, i32* @GLOBAL_OWNER, align 4
  %42 = call i32 @get_subaddr(%struct.snd_dice* %39, i32 %40, i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @FW_QUIET, align 4
  %45 = load i32, i32* @FW_FIXED_GENERATION, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %48 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %46, %49
  %51 = call i32 @snd_fw_transaction(i32 %37, i32 %38, i32 %42, i32* %43, i32 16, i32 %50)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @kfree(i32* %52)
  %54 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %55 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 4
  br label %56

56:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.fw_device* @fw_parent_device(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @get_subaddr(%struct.snd_dice*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
