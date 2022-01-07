; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_dellink.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_dellink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { i32 }
%struct.nlattr = type { i32 }

@IFLA_AF_SPEC = common dso_local global i32 0, align 4
@IFF_EBRIDGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTM_DELLINK = common dso_local global i32 0, align 4
@RTM_NEWLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_dellink(%struct.net_device* %0, %struct.nlmsghdr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_bridge*, align 8
  %9 = alloca %struct.net_bridge_port*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i64 @netdev_priv(%struct.net_device* %13)
  %15 = inttoptr i64 %14 to %struct.net_bridge*
  store %struct.net_bridge* %15, %struct.net_bridge** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %17 = load i32, i32* @IFLA_AF_SPEC, align 4
  %18 = call %struct.nlattr* @nlmsg_find_attr(%struct.nlmsghdr* %16, i32 4, i32 %17)
  store %struct.nlattr* %18, %struct.nlattr** %10, align 8
  %19 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

22:                                               ; preds = %3
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call %struct.net_bridge_port* @br_port_get_rtnl(%struct.net_device* %23)
  store %struct.net_bridge_port* %24, %struct.net_bridge_port** %9, align 8
  %25 = load %struct.net_bridge_port*, %struct.net_bridge_port** %9, align 8
  %26 = icmp ne %struct.net_bridge_port* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFF_EBRIDGE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %52

37:                                               ; preds = %27, %22
  %38 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %39 = load %struct.net_bridge_port*, %struct.net_bridge_port** %9, align 8
  %40 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %41 = load i32, i32* @RTM_DELLINK, align 4
  %42 = call i32 @br_afspec(%struct.net_bridge* %38, %struct.net_bridge_port* %39, %struct.nlattr* %40, i32 %41, i32* %11, i32* null)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load i32, i32* @RTM_NEWLINK, align 4
  %47 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %48 = load %struct.net_bridge_port*, %struct.net_bridge_port** %9, align 8
  %49 = call i32 @br_ifinfo_notify(i32 %46, %struct.net_bridge* %47, %struct.net_bridge_port* %48)
  br label %50

50:                                               ; preds = %45, %37
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %34, %21
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.nlattr* @nlmsg_find_attr(%struct.nlmsghdr*, i32, i32) #1

declare dso_local %struct.net_bridge_port* @br_port_get_rtnl(%struct.net_device*) #1

declare dso_local i32 @br_afspec(%struct.net_bridge*, %struct.net_bridge_port*, %struct.nlattr*, i32, i32*, i32*) #1

declare dso_local i32 @br_ifinfo_notify(i32, %struct.net_bridge*, %struct.net_bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
