; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_controller.c_snd_hdac_bus_stop_cmd_io.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_controller.c_snd_hdac_bus_stop_cmd_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32 }

@RIRBCTL = common dso_local global i32 0, align 4
@CORBCTL = common dso_local global i32 0, align 4
@GCTL = common dso_local global i32 0, align 4
@AZX_GCTL_UNSOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hdac_bus_stop_cmd_io(%struct.hdac_bus* %0) #0 {
  %2 = alloca %struct.hdac_bus*, align 8
  store %struct.hdac_bus* %0, %struct.hdac_bus** %2, align 8
  %3 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %4 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %3, i32 0, i32 0
  %5 = call i32 @spin_lock_irq(i32* %4)
  %6 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %7 = load i32, i32* @RIRBCTL, align 4
  %8 = call i32 @snd_hdac_chip_writeb(%struct.hdac_bus* %6, i32 %7, i32 0)
  %9 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %10 = load i32, i32* @CORBCTL, align 4
  %11 = call i32 @snd_hdac_chip_writeb(%struct.hdac_bus* %9, i32 %10, i32 0)
  %12 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %13 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %12, i32 0, i32 0
  %14 = call i32 @spin_unlock_irq(i32* %13)
  %15 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %16 = call i32 @hdac_wait_for_cmd_dmas(%struct.hdac_bus* %15)
  %17 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %18 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %21 = load i32, i32* @GCTL, align 4
  %22 = load i32, i32* @AZX_GCTL_UNSOL, align 4
  %23 = call i32 @snd_hdac_chip_updatel(%struct.hdac_bus* %20, i32 %21, i32 %22, i32 0)
  %24 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %25 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock_irq(i32* %25)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_hdac_chip_writeb(%struct.hdac_bus*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @hdac_wait_for_cmd_dmas(%struct.hdac_bus*) #1

declare dso_local i32 @snd_hdac_chip_updatel(%struct.hdac_bus*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
