; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_failover.c_failover_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_failover.c_failover_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @failover_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @failover_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %9)
  store %struct.net_device* %10, %struct.net_device** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %8, align 8
  %12 = call i64 @netif_is_failover(%struct.net_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %15, i32* %4, align 4
  br label %32

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  switch i64 %17, label %30 [
    i64 130, label %18
    i64 129, label %21
    i64 128, label %24
    i64 131, label %24
    i64 133, label %24
    i64 132, label %27
  ]

18:                                               ; preds = %16
  %19 = load %struct.net_device*, %struct.net_device** %8, align 8
  %20 = call i32 @failover_slave_register(%struct.net_device* %19)
  store i32 %20, i32* %4, align 4
  br label %32

21:                                               ; preds = %16
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = call i32 @failover_slave_unregister(%struct.net_device* %22)
  store i32 %23, i32* %4, align 4
  br label %32

24:                                               ; preds = %16, %16, %16
  %25 = load %struct.net_device*, %struct.net_device** %8, align 8
  %26 = call i32 @failover_slave_link_change(%struct.net_device* %25)
  store i32 %26, i32* %4, align 4
  br label %32

27:                                               ; preds = %16
  %28 = load %struct.net_device*, %struct.net_device** %8, align 8
  %29 = call i32 @failover_slave_name_change(%struct.net_device* %28)
  store i32 %29, i32* %4, align 4
  br label %32

30:                                               ; preds = %16
  %31 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %27, %24, %21, %18, %14
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local i64 @netif_is_failover(%struct.net_device*) #1

declare dso_local i32 @failover_slave_register(%struct.net_device*) #1

declare dso_local i32 @failover_slave_unregister(%struct.net_device*) #1

declare dso_local i32 @failover_slave_link_change(%struct.net_device*) #1

declare dso_local i32 @failover_slave_name_change(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
