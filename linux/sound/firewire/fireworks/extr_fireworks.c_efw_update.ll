; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks.c_efw_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks.c_efw_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.snd_efw = type { i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_unit*)* @efw_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efw_update(%struct.fw_unit* %0) #0 {
  %2 = alloca %struct.fw_unit*, align 8
  %3 = alloca %struct.snd_efw*, align 8
  store %struct.fw_unit* %0, %struct.fw_unit** %2, align 8
  %4 = load %struct.fw_unit*, %struct.fw_unit** %2, align 8
  %5 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %4, i32 0, i32 0
  %6 = call %struct.snd_efw* @dev_get_drvdata(i32* %5)
  store %struct.snd_efw* %6, %struct.snd_efw** %3, align 8
  %7 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %8 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.fw_unit*, %struct.fw_unit** %2, align 8
  %13 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %14 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %13, i32 0, i32 3
  %15 = call i32 @snd_fw_schedule_registration(%struct.fw_unit* %12, i32* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %18 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @snd_efw_transaction_bus_reset(i32 %19)
  %21 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %22 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %16
  %26 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %27 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %30 = call i32 @snd_efw_stream_update_duplex(%struct.snd_efw* %29)
  %31 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %32 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  br label %34

34:                                               ; preds = %25, %16
  ret void
}

declare dso_local %struct.snd_efw* @dev_get_drvdata(i32*) #1

declare dso_local i32 @snd_fw_schedule_registration(%struct.fw_unit*, i32*) #1

declare dso_local i32 @snd_efw_transaction_bus_reset(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_efw_stream_update_duplex(%struct.snd_efw*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
