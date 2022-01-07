; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev_addr_lists.c_dev_addr_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev_addr_lists.c_dev_addr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }

@NETDEV_CHANGEADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_addr_add(%struct.net_device* %0, i8* %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8 %2, i8* %7, align 1
  %9 = call i32 (...) @ASSERT_RTNL()
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @dev_pre_changeaddr_notify(%struct.net_device* %10, i8* %11, i32* null)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %34

17:                                               ; preds = %3
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 1
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8, i8* %7, align 1
  %25 = call i32 @__hw_addr_add(i32* %19, i8* %20, i32 %23, i8 zeroext %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* @NETDEV_CHANGEADDR, align 4
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = call i32 @call_netdevice_notifiers(i32 %29, %struct.net_device* %30)
  br label %32

32:                                               ; preds = %28, %17
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %15
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @dev_pre_changeaddr_notify(%struct.net_device*, i8*, i32*) #1

declare dso_local i32 @__hw_addr_add(i32*, i8*, i32, i8 zeroext) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
