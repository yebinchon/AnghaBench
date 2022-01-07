; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_rx_handler_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_rx_handler_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@IFF_NO_RX_HANDLER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netdev_rx_handler_register(%struct.net_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call i64 @netdev_is_rx_handler_busy(%struct.net_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %35

14:                                               ; preds = %3
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFF_NO_RX_HANDLER, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %35

24:                                               ; preds = %14
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @rcu_assign_pointer(i32 %27, i8* %28)
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @rcu_assign_pointer(i32 %32, i8* %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %24, %21, %11
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i64 @netdev_is_rx_handler_busy(%struct.net_device*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
