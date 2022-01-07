; ModuleID = '/home/carl/AnghaBench/linux/net/switchdev/extr_switchdev.c_switchdev_deferred_process.c'
source_filename = "/home/carl/AnghaBench/linux/net/switchdev/extr_switchdev.c_switchdev_deferred_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switchdev_deferred_item = type { i32, i32, i32 (i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @switchdev_deferred_process() #0 {
  %1 = alloca %struct.switchdev_deferred_item*, align 8
  %2 = call i32 (...) @ASSERT_RTNL()
  br label %3

3:                                                ; preds = %6, %0
  %4 = call %struct.switchdev_deferred_item* (...) @switchdev_deferred_dequeue()
  store %struct.switchdev_deferred_item* %4, %struct.switchdev_deferred_item** %1, align 8
  %5 = icmp ne %struct.switchdev_deferred_item* %4, null
  br i1 %5, label %6, label %23

6:                                                ; preds = %3
  %7 = load %struct.switchdev_deferred_item*, %struct.switchdev_deferred_item** %1, align 8
  %8 = getelementptr inbounds %struct.switchdev_deferred_item, %struct.switchdev_deferred_item* %7, i32 0, i32 2
  %9 = load i32 (i32, i32)*, i32 (i32, i32)** %8, align 8
  %10 = load %struct.switchdev_deferred_item*, %struct.switchdev_deferred_item** %1, align 8
  %11 = getelementptr inbounds %struct.switchdev_deferred_item, %struct.switchdev_deferred_item* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.switchdev_deferred_item*, %struct.switchdev_deferred_item** %1, align 8
  %14 = getelementptr inbounds %struct.switchdev_deferred_item, %struct.switchdev_deferred_item* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 %9(i32 %12, i32 %15)
  %17 = load %struct.switchdev_deferred_item*, %struct.switchdev_deferred_item** %1, align 8
  %18 = getelementptr inbounds %struct.switchdev_deferred_item, %struct.switchdev_deferred_item* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_put(i32 %19)
  %21 = load %struct.switchdev_deferred_item*, %struct.switchdev_deferred_item** %1, align 8
  %22 = call i32 @kfree(%struct.switchdev_deferred_item* %21)
  br label %3

23:                                               ; preds = %3
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.switchdev_deferred_item* @switchdev_deferred_dequeue(...) #1

declare dso_local i32 @dev_put(i32) #1

declare dso_local i32 @kfree(%struct.switchdev_deferred_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
