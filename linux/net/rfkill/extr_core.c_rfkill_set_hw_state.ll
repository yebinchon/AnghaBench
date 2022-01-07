; ModuleID = '/home/carl/AnghaBench/linux/net/rfkill/extr_core.c_rfkill_set_hw_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/rfkill/extr_core.c_rfkill_set_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfkill = type { i32, i32, i64, i32 }

@RFKILL_BLOCK_HW = common dso_local global i32 0, align 4
@RFKILL_BLOCK_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rfkill_set_hw_state(%struct.rfkill* %0, i32 %1) #0 {
  %3 = alloca %struct.rfkill*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rfkill* %0, %struct.rfkill** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %9 = icmp ne %struct.rfkill* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %14 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %13, i32 0, i32 3
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %18 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RFKILL_BLOCK_HW, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load i32, i32* @RFKILL_BLOCK_HW, align 4
  %30 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %31 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %41

34:                                               ; preds = %2
  %35 = load i32, i32* @RFKILL_BLOCK_HW, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %38 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %34, %28
  %42 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %43 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @RFKILL_BLOCK_ANY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %6, align 4
  %51 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %52 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %51, i32 0, i32 3
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %56 = call i32 @rfkill_led_trigger_event(%struct.rfkill* %55)
  %57 = call i32 (...) @rfkill_global_led_trigger_event()
  %58 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %59 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %41
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %68 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %67, i32 0, i32 1
  %69 = call i32 @schedule_work(i32* %68)
  br label %70

70:                                               ; preds = %66, %62, %41
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rfkill_led_trigger_event(%struct.rfkill*) #1

declare dso_local i32 @rfkill_global_led_trigger_event(...) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
