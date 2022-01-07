; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_adjacent_change_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_adjacent_change_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netdev_adjacent_change_prepare(%struct.net_device* %0, %struct.net_device* %1, %struct.net_device* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %7, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %46

14:                                               ; preds = %4
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = icmp ne %struct.net_device* %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = call i32 @netdev_adjacent_dev_disable(%struct.net_device* %22, %struct.net_device* %23)
  br label %25

25:                                               ; preds = %21, %17, %14
  %26 = load %struct.net_device*, %struct.net_device** %7, align 8
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %29 = call i32 @netdev_upper_dev_link(%struct.net_device* %26, %struct.net_device* %27, %struct.netlink_ext_ack* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = icmp ne %struct.net_device* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = icmp ne %struct.net_device* %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.net_device*, %struct.net_device** %8, align 8
  %41 = load %struct.net_device*, %struct.net_device** %6, align 8
  %42 = call i32 @netdev_adjacent_dev_enable(%struct.net_device* %40, %struct.net_device* %41)
  br label %43

43:                                               ; preds = %39, %35, %32
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  br label %46

45:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %43, %13
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @netdev_adjacent_dev_disable(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @netdev_upper_dev_link(%struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @netdev_adjacent_dev_enable(%struct.net_device*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
