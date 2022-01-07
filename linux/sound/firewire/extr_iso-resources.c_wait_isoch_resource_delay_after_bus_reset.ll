; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_iso-resources.c_wait_isoch_resource_delay_after_bus_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_iso-resources.c_wait_isoch_resource_delay_after_bus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i64 }

@HZ = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_card*)* @wait_isoch_resource_delay_after_bus_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_isoch_resource_delay_after_bus_reset(%struct.fw_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fw_card*, align 8
  %4 = alloca i64, align 8
  store %struct.fw_card* %0, %struct.fw_card** %3, align 8
  br label %5

5:                                                ; preds = %23, %1
  %6 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %7 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HZ, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i64 (...) @get_jiffies_64()
  %12 = sub nsw i64 %10, %11
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %24

16:                                               ; preds = %5
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @schedule_timeout_interruptible(i64 %17)
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @ERESTARTSYS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %16
  br label %5

24:                                               ; preds = %20, %15
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @get_jiffies_64(...) #1

declare dso_local i64 @schedule_timeout_interruptible(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
