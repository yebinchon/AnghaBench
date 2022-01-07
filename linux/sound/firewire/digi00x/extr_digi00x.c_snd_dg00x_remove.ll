; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x.c_snd_dg00x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x.c_snd_dg00x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.snd_dg00x = type { i32, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_unit*)* @snd_dg00x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_dg00x_remove(%struct.fw_unit* %0) #0 {
  %2 = alloca %struct.fw_unit*, align 8
  %3 = alloca %struct.snd_dg00x*, align 8
  store %struct.fw_unit* %0, %struct.fw_unit** %2, align 8
  %4 = load %struct.fw_unit*, %struct.fw_unit** %2, align 8
  %5 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %4, i32 0, i32 0
  %6 = call %struct.snd_dg00x* @dev_get_drvdata(i32* %5)
  store %struct.snd_dg00x* %6, %struct.snd_dg00x** %3, align 8
  %7 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %8 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %7, i32 0, i32 4
  %9 = call i32 @cancel_delayed_work_sync(i32* %8)
  %10 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %11 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %16 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @snd_card_free(i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %21 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %20, i32 0, i32 1
  %22 = call i32 @mutex_destroy(i32* %21)
  %23 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %24 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @fw_unit_put(i32 %25)
  ret void
}

declare dso_local %struct.snd_dg00x* @dev_get_drvdata(i32*) #1

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
