; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_check_default.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_check_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@dndev_lock = common dso_local global i32 0, align 4
@decnet_default_device = common dso_local global %struct.net_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dn_dev_check_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_dev_check_default(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = call i32 @spin_lock(i32* @dndev_lock)
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** @decnet_default_device, align 8
  %6 = icmp eq %struct.net_device* %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.net_device* null, %struct.net_device** @decnet_default_device, align 8
  br label %9

8:                                                ; preds = %1
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %9

9:                                                ; preds = %8, %7
  %10 = call i32 @spin_unlock(i32* @dndev_lock)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call i32 @dev_put(%struct.net_device* %14)
  br label %16

16:                                               ; preds = %13, %9
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
