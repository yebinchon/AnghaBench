; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_link_watch.c_linkwatch_do_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_link_watch.c_linkwatch_do_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }

@__LINK_STATE_LINKWATCH_PENDING = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @linkwatch_do_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linkwatch_do_dev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = call i32 (...) @smp_mb__before_atomic()
  %4 = load i32, i32* @__LINK_STATE_LINKWATCH_PENDING, align 4
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 1
  %7 = call i32 @clear_bit(i32 %4, i32* %6)
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @rfc2863_policy(%struct.net_device* %8)
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_UP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i64 @netif_device_present(%struct.net_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i64 @netif_carrier_ok(%struct.net_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = call i32 @dev_activate(%struct.net_device* %25)
  br label %30

27:                                               ; preds = %20
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call i32 @dev_deactivate(%struct.net_device* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call i32 @netdev_state_change(%struct.net_device* %31)
  br label %33

33:                                               ; preds = %30, %16, %1
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @dev_put(%struct.net_device* %34)
  ret void
}

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rfc2863_policy(%struct.net_device*) #1

declare dso_local i64 @netif_device_present(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @dev_activate(%struct.net_device*) #1

declare dso_local i32 @dev_deactivate(%struct.net_device*) #1

declare dso_local i32 @netdev_state_change(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
