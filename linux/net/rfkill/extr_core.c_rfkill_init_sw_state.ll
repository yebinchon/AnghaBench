; ModuleID = '/home/carl/AnghaBench/linux/net/rfkill/extr_core.c_rfkill_init_sw_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/rfkill/extr_core.c_rfkill_init_sw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfkill = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rfkill_init_sw_state(%struct.rfkill* %0, i32 %1) #0 {
  %3 = alloca %struct.rfkill*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.rfkill* %0, %struct.rfkill** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %7 = icmp ne %struct.rfkill* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %12 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %16 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %15, i32 0, i32 2
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @__rfkill_set_sw_state(%struct.rfkill* %19, i32 %20)
  %22 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %23 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %25 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %24, i32 0, i32 2
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__rfkill_set_sw_state(%struct.rfkill*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
