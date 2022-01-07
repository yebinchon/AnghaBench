; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_ndo_dflt_fdb_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_ndo_dflt_fdb_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32 }
%struct.net_device = type { i64, i32, i32 }

@ARPHRD_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ndo_dflt_fdb_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1, %struct.net_device* %2, %struct.net_device* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.netlink_callback*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.net_device*, %struct.net_device** %9, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ARPHRD_ETHER, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %46

21:                                               ; preds = %5
  %22 = load %struct.net_device*, %struct.net_device** %9, align 8
  %23 = call i32 @netif_addr_lock_bh(%struct.net_device* %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %26 = load %struct.net_device*, %struct.net_device** %9, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load %struct.net_device*, %struct.net_device** %9, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 2
  %30 = call i32 @nlmsg_populate_fdb(%struct.sk_buff* %24, %struct.netlink_callback* %25, %struct.net_device* %26, i32* %27, i32* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %42

34:                                               ; preds = %21
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %37 = load %struct.net_device*, %struct.net_device** %9, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load %struct.net_device*, %struct.net_device** %9, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = call i32 @nlmsg_populate_fdb(%struct.sk_buff* %35, %struct.netlink_callback* %36, %struct.net_device* %37, i32* %38, i32* %40)
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %34, %33
  %43 = load %struct.net_device*, %struct.net_device** %9, align 8
  %44 = call i32 @netif_addr_unlock_bh(%struct.net_device* %43)
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %42, %18
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @netif_addr_lock_bh(%struct.net_device*) #1

declare dso_local i32 @nlmsg_populate_fdb(%struct.sk_buff*, %struct.netlink_callback*, %struct.net_device*, i32*, i32*) #1

declare dso_local i32 @netif_addr_unlock_bh(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
