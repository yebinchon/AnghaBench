; ModuleID = '/home/carl/AnghaBench/linux/net/rfkill/extr_core.c_rfkill_set_sw_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/rfkill/extr_core.c_rfkill_set_sw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfkill = type { i32, i32, i32, i32 }

@RFKILL_BLOCK_SW = common dso_local global i32 0, align 4
@RFKILL_BLOCK_HW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rfkill_set_sw_state(%struct.rfkill* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rfkill*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rfkill* %0, %struct.rfkill** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %10 = icmp ne %struct.rfkill* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %15 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %14, i32 0, i32 3
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %19 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RFKILL_BLOCK_SW, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @__rfkill_set_sw_state(%struct.rfkill* %27, i32 %28)
  %30 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %31 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RFKILL_BLOCK_HW, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %2
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %41, %2
  %45 = phi i1 [ true, %2 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %5, align 4
  %47 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %48 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %47, i32 0, i32 3
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %52 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %44
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %3, align 4
  br label %73

57:                                               ; preds = %44
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %66 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %65, i32 0, i32 1
  %67 = call i32 @schedule_work(i32* %66)
  br label %68

68:                                               ; preds = %64, %61, %57
  %69 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %70 = call i32 @rfkill_led_trigger_event(%struct.rfkill* %69)
  %71 = call i32 (...) @rfkill_global_led_trigger_event()
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %55
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__rfkill_set_sw_state(%struct.rfkill*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @rfkill_led_trigger_event(%struct.rfkill*) #1

declare dso_local i32 @rfkill_global_led_trigger_event(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
