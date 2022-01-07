; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_assp_halt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_assp_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { i32 }

@DSP_PORT_CONTROL_REG_B = common dso_local global i32 0, align 4
@REGB_STOP_CLOCK = common dso_local global i32 0, align 4
@REGB_ENABLE_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_m3*)* @snd_m3_assp_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_m3_assp_halt(%struct.snd_m3* %0) #0 {
  %2 = alloca %struct.snd_m3*, align 8
  store %struct.snd_m3* %0, %struct.snd_m3** %2, align 8
  %3 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %4 = load i32, i32* @DSP_PORT_CONTROL_REG_B, align 4
  %5 = call i32 @snd_m3_inb(%struct.snd_m3* %3, i32 %4)
  %6 = load i32, i32* @REGB_STOP_CLOCK, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %5, %7
  %9 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %10 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = call i32 @msleep(i32 10)
  %12 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %13 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %14 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @REGB_ENABLE_RESET, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load i32, i32* @DSP_PORT_CONTROL_REG_B, align 4
  %20 = call i32 @snd_m3_outb(%struct.snd_m3* %12, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @snd_m3_inb(%struct.snd_m3*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_m3_outb(%struct.snd_m3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
