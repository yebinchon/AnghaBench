; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_dma_debug_add_bus.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_dma_debug_add_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { i32 }
%struct.notifier_block = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"dma_debug_add_bus: out of memory\0A\00", align 1
@dma_debug_device_change = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_debug_add_bus(%struct.bus_type* %0) #0 {
  %2 = alloca %struct.bus_type*, align 8
  %3 = alloca %struct.notifier_block*, align 8
  store %struct.bus_type* %0, %struct.bus_type** %2, align 8
  %4 = call i64 (...) @dma_debug_disabled()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %21

7:                                                ; preds = %1
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.notifier_block* @kzalloc(i32 4, i32 %8)
  store %struct.notifier_block* %9, %struct.notifier_block** %3, align 8
  %10 = load %struct.notifier_block*, %struct.notifier_block** %3, align 8
  %11 = icmp eq %struct.notifier_block* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %21

14:                                               ; preds = %7
  %15 = load i32, i32* @dma_debug_device_change, align 4
  %16 = load %struct.notifier_block*, %struct.notifier_block** %3, align 8
  %17 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %19 = load %struct.notifier_block*, %struct.notifier_block** %3, align 8
  %20 = call i32 @bus_register_notifier(%struct.bus_type* %18, %struct.notifier_block* %19)
  br label %21

21:                                               ; preds = %14, %12, %6
  ret void
}

declare dso_local i64 @dma_debug_disabled(...) #1

declare dso_local %struct.notifier_block* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @bus_register_notifier(%struct.bus_type*, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
