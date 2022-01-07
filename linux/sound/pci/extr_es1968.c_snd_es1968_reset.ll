; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i64 }

@ESM_RESET_MAESTRO = common dso_local global i32 0, align 4
@ESM_RESET_DIRECTSOUND = common dso_local global i32 0, align 4
@ESM_PORT_HOST_IRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*)* @snd_es1968_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1968_reset(%struct.es1968* %0) #0 {
  %2 = alloca %struct.es1968*, align 8
  store %struct.es1968* %0, %struct.es1968** %2, align 8
  %3 = load i32, i32* @ESM_RESET_MAESTRO, align 4
  %4 = load i32, i32* @ESM_RESET_DIRECTSOUND, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.es1968*, %struct.es1968** %2, align 8
  %7 = getelementptr inbounds %struct.es1968, %struct.es1968* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ESM_PORT_HOST_IRQ, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @outw(i32 %5, i64 %10)
  %12 = call i32 @udelay(i32 10)
  %13 = load %struct.es1968*, %struct.es1968** %2, align 8
  %14 = getelementptr inbounds %struct.es1968, %struct.es1968* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ESM_PORT_HOST_IRQ, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outw(i32 0, i64 %17)
  %19 = call i32 @udelay(i32 10)
  ret void
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
