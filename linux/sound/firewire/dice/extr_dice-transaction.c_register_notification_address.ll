; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-transaction.c_register_notification_address.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-transaction.c_register_notification_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.fw_device = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OWNER_NO_OWNER = common dso_local global i32 0, align 4
@OWNER_NODE_SHIFT = common dso_local global i32 0, align 4
@TCODE_LOCK_COMPARE_SWAP = common dso_local global i32 0, align 4
@SND_DICE_ADDR_TYPE_GLOBAL = common dso_local global i32 0, align 4
@GLOBAL_OWNER = common dso_local global i32 0, align 4
@FW_FIXED_GENERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"device is already in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_dice*, i32)* @register_notification_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_notification_address(%struct.snd_dice* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_dice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_device*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %11 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = call %struct.fw_device* @fw_parent_device(%struct.TYPE_7__* %12)
  store %struct.fw_device* %13, %struct.fw_device** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 3, i32 0
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i64* @kmalloc(i32 16, i32 %18)
  store i64* %19, i64** %7, align 8
  %20 = load i64*, i64** %7, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %117

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %105, %25
  %27 = load i32, i32* @OWNER_NO_OWNER, align 4
  %28 = call i64 @cpu_to_be64(i32 %27)
  %29 = load i64*, i64** %7, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.fw_device*, %struct.fw_device** %6, align 8
  %32 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @OWNER_NODE_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %40 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %38, %42
  %44 = call i64 @cpu_to_be64(i32 %43)
  %45 = load i64*, i64** %7, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.fw_device*, %struct.fw_device** %6, align 8
  %48 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %51 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = call i32 (...) @smp_rmb()
  %53 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %54 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i32, i32* @TCODE_LOCK_COMPARE_SWAP, align 4
  %57 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %58 = load i32, i32* @SND_DICE_ADDR_TYPE_GLOBAL, align 4
  %59 = load i32, i32* @GLOBAL_OWNER, align 4
  %60 = call i32 @get_subaddr(%struct.snd_dice* %57, i32 %58, i32 %59)
  %61 = load i64*, i64** %7, align 8
  %62 = load i32, i32* @FW_FIXED_GENERATION, align 4
  %63 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %64 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %62, %65
  %67 = call i32 @snd_fw_transaction(%struct.TYPE_7__* %55, i32 %56, i32 %60, i64* %61, i32 16, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %26
  %71 = load i64*, i64** %7, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @OWNER_NO_OWNER, align 4
  %75 = call i64 @cpu_to_be64(i32 %74)
  %76 = icmp eq i64 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %107

78:                                               ; preds = %70
  %79 = load i64*, i64** %7, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %7, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %107

87:                                               ; preds = %78
  %88 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %89 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %88, i32 0, i32 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = call i32 @dev_err(i32* %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* @EBUSY, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %87, %26
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @EAGAIN, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %8, align 4
  %102 = add i32 %101, -1
  store i32 %102, i32* %8, align 4
  %103 = icmp ugt i32 %101, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100, %95
  br label %107

105:                                              ; preds = %100
  %106 = call i32 @msleep(i32 20)
  br label %26

107:                                              ; preds = %104, %86, %77
  %108 = load i64*, i64** %7, align 8
  %109 = call i32 @kfree(i64* %108)
  %110 = load i32, i32* %9, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %114 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %113, i32 0, i32 0
  store i32 -1, i32* %114, align 8
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %115, %22
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.fw_device* @fw_parent_device(%struct.TYPE_7__*) #1

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @snd_fw_transaction(%struct.TYPE_7__*, i32, i32, i64*, i32, i32) #1

declare dso_local i32 @get_subaddr(%struct.snd_dice*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
