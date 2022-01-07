; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_link_watch.c_linkwatch_urgent_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_link_watch.c_linkwatch_urgent_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @linkwatch_urgent_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linkwatch_urgent_event(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %4 = load %struct.net_device*, %struct.net_device** %3, align 8
  %5 = call i32 @netif_running(%struct.net_device* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

8:                                                ; preds = %1
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call i64 @dev_get_iflink(%struct.net_device* %12)
  %14 = icmp ne i64 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %36

16:                                               ; preds = %8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i64 @netif_is_lag_port(%struct.net_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i64 @netif_is_lag_master(%struct.net_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16
  store i32 1, i32* %2, align 4
  br label %36

25:                                               ; preds = %20
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i64 @netif_carrier_ok(%struct.net_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i64 @qdisc_tx_changing(%struct.net_device* %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i1 [ false, %25 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %24, %15, %7
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i64 @dev_get_iflink(%struct.net_device*) #1

declare dso_local i64 @netif_is_lag_port(%struct.net_device*) #1

declare dso_local i64 @netif_is_lag_master(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i64 @qdisc_tx_changing(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
