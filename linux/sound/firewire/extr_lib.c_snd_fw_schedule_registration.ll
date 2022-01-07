; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_lib.c_snd_fw_schedule_registration.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_lib.c_snd_fw_schedule_registration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.delayed_work = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@PROBE_DELAY_MS = common dso_local global i32 0, align 4
@system_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_fw_schedule_registration(%struct.fw_unit* %0, %struct.delayed_work* %1) #0 {
  %3 = alloca %struct.fw_unit*, align 8
  %4 = alloca %struct.delayed_work*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.fw_unit* %0, %struct.fw_unit** %3, align 8
  store %struct.delayed_work* %1, %struct.delayed_work** %4, align 8
  %7 = call i64 (...) @get_jiffies_64()
  store i64 %7, i64* %5, align 8
  %8 = load %struct.fw_unit*, %struct.fw_unit** %3, align 8
  %9 = call %struct.TYPE_4__* @fw_parent_device(%struct.fw_unit* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @PROBE_DELAY_MS, align 4
  %15 = call i64 @msecs_to_jiffies(i32 %14)
  %16 = add nsw i64 %13, %15
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @time_after64(i64 %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = sub nsw i64 %23, %22
  store i64 %24, i64* %6, align 8
  br label %26

25:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i32, i32* @system_wq, align 4
  %28 = load %struct.delayed_work*, %struct.delayed_work** %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @mod_delayed_work(i32 %27, %struct.delayed_work* %28, i64 %29)
  ret void
}

declare dso_local i64 @get_jiffies_64(...) #1

declare dso_local %struct.TYPE_4__* @fw_parent_device(%struct.fw_unit*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after64(i64, i64) #1

declare dso_local i32 @mod_delayed_work(i32, %struct.delayed_work*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
