; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_get_default.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_get_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }

@dndev_lock = common dso_local global i32 0, align 4
@decnet_default_device = common dso_local global %struct.net_device* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @dn_dev_get_default() #0 {
  %1 = alloca %struct.net_device*, align 8
  %2 = call i32 @spin_lock(i32* @dndev_lock)
  %3 = load %struct.net_device*, %struct.net_device** @decnet_default_device, align 8
  store %struct.net_device* %3, %struct.net_device** %1, align 8
  %4 = load %struct.net_device*, %struct.net_device** %1, align 8
  %5 = icmp ne %struct.net_device* %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %0
  %7 = load %struct.net_device*, %struct.net_device** %1, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load %struct.net_device*, %struct.net_device** %1, align 8
  %13 = call i32 @dev_hold(%struct.net_device* %12)
  br label %15

14:                                               ; preds = %6
  store %struct.net_device* null, %struct.net_device** %1, align 8
  br label %15

15:                                               ; preds = %14, %11
  br label %16

16:                                               ; preds = %15, %0
  %17 = call i32 @spin_unlock(i32* @dndev_lock)
  %18 = load %struct.net_device*, %struct.net_device** %1, align 8
  ret %struct.net_device* %18
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
