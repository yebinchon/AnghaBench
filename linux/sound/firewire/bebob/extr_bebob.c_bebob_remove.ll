; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob.c_bebob_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob.c_bebob_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.snd_bebob = type { i32, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_unit*)* @bebob_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bebob_remove(%struct.fw_unit* %0) #0 {
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
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %12 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %11, i32 0, i32 4
  %13 = call i32 @cancel_delayed_work_sync(i32* %12)
  %14 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %15 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %20 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @snd_card_free(i32 %21)
  br label %23

23:                                               ; preds = %18, %10
  %24 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %25 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %24, i32 0, i32 1
  %26 = call i32 @mutex_destroy(i32* %25)
  %27 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %28 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @fw_unit_put(i32 %29)
  br label %31

31:                                               ; preds = %23, %9
  ret void
}

declare dso_local %struct.snd_bebob* @dev_get_drvdata(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @snd_card_free(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @fw_unit_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
