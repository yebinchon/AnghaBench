; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_isight.c_isight_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_isight.c_isight_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.isight = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_unit*)* @isight_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isight_remove(%struct.fw_unit* %0) #0 {
  %2 = alloca %struct.fw_unit*, align 8
  %3 = alloca %struct.isight*, align 8
  store %struct.fw_unit* %0, %struct.fw_unit** %2, align 8
  %4 = load %struct.fw_unit*, %struct.fw_unit** %2, align 8
  %5 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %4, i32 0, i32 0
  %6 = call %struct.isight* @dev_get_drvdata(i32* %5)
  store %struct.isight* %6, %struct.isight** %3, align 8
  %7 = load %struct.isight*, %struct.isight** %3, align 8
  %8 = call i32 @isight_pcm_abort(%struct.isight* %7)
  %9 = load %struct.isight*, %struct.isight** %3, align 8
  %10 = getelementptr inbounds %struct.isight, %struct.isight* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @snd_card_disconnect(i32 %11)
  %13 = load %struct.isight*, %struct.isight** %3, align 8
  %14 = getelementptr inbounds %struct.isight, %struct.isight* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.isight*, %struct.isight** %3, align 8
  %17 = call i32 @isight_stop_streaming(%struct.isight* %16)
  %18 = load %struct.isight*, %struct.isight** %3, align 8
  %19 = getelementptr inbounds %struct.isight, %struct.isight* %18, i32 0, i32 1
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load %struct.isight*, %struct.isight** %3, align 8
  %22 = getelementptr inbounds %struct.isight, %struct.isight* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @snd_card_free(i32 %23)
  %25 = load %struct.isight*, %struct.isight** %3, align 8
  %26 = getelementptr inbounds %struct.isight, %struct.isight* %25, i32 0, i32 1
  %27 = call i32 @mutex_destroy(i32* %26)
  %28 = load %struct.isight*, %struct.isight** %3, align 8
  %29 = getelementptr inbounds %struct.isight, %struct.isight* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @fw_unit_put(i32 %30)
  ret void
}

declare dso_local %struct.isight* @dev_get_drvdata(i32*) #1

declare dso_local i32 @isight_pcm_abort(%struct.isight*) #1

declare dso_local i32 @snd_card_disconnect(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @isight_stop_streaming(%struct.isight*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_card_free(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @fw_unit_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
