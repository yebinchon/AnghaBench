; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_tick-common.c_tick_broadcast_oneshot_control.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_tick-common.c_tick_broadcast_oneshot_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tick_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@tick_cpu_device = common dso_local global i32 0, align 4
@CLOCK_EVT_FEAT_C3STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tick_broadcast_oneshot_control(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tick_device*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call %struct.tick_device* @this_cpu_ptr(i32* @tick_cpu_device)
  store %struct.tick_device* %5, %struct.tick_device** %4, align 8
  %6 = load %struct.tick_device*, %struct.tick_device** %4, align 8
  %7 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CLOCK_EVT_FEAT_C3STOP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @__tick_broadcast_oneshot_control(i32 %16)
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %14
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local %struct.tick_device* @this_cpu_ptr(i32*) #1

declare dso_local i32 @__tick_broadcast_oneshot_control(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
