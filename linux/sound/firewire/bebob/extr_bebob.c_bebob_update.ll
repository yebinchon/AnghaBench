; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob.c_bebob_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob.c_bebob_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.snd_bebob = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_unit*)* @bebob_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bebob_update(%struct.fw_unit* %0) #0 {
  %2 = alloca %struct.fw_unit*, align 8
  %3 = alloca %struct.snd_bebob*, align 8
  store %struct.fw_unit* %0, %struct.fw_unit** %2, align 8
  %4 = load %struct.fw_unit*, %struct.fw_unit** %2, align 8
  %5 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %4, i32 0, i32 0
  %6 = call %struct.snd_bebob* @dev_get_drvdata(i32* %5)
  store %struct.snd_bebob* %6, %struct.snd_bebob** %3, align 8
  %7 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %8 = icmp eq %struct.snd_bebob* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %12 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.fw_unit*, %struct.fw_unit** %2, align 8
  %17 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %18 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %17, i32 0, i32 1
  %19 = call i32 @snd_fw_schedule_registration(%struct.fw_unit* %16, i32* %18)
  br label %25

20:                                               ; preds = %10
  %21 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %22 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @fcp_bus_reset(i32 %23)
  br label %25

25:                                               ; preds = %9, %20, %15
  ret void
}

declare dso_local %struct.snd_bebob* @dev_get_drvdata(i32*) #1

declare dso_local i32 @snd_fw_schedule_registration(%struct.fw_unit*, i32*) #1

declare dso_local i32 @fcp_bus_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
