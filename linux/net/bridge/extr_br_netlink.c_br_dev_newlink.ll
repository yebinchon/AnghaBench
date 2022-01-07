; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_dev_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_dev_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net_bridge = type { i32 }

@IFLA_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @br_dev_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_dev_newlink(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.net_bridge*, align 8
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = call %struct.net_bridge* @netdev_priv(%struct.net_device* %14)
  store %struct.net_bridge* %15, %struct.net_bridge** %12, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = call i32 @register_netdevice(%struct.net_device* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %6, align 4
  br label %55

22:                                               ; preds = %5
  %23 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %24 = load i64, i64* @IFLA_ADDRESS, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.net_bridge*, %struct.net_bridge** %12, align 8
  %30 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_bh(i32* %30)
  %32 = load %struct.net_bridge*, %struct.net_bridge** %12, align 8
  %33 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %34 = load i64, i64* @IFLA_ADDRESS, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = call i32 @nla_data(%struct.nlattr* %36)
  %38 = call i32 @br_stp_change_bridge_id(%struct.net_bridge* %32, i32 %37)
  %39 = load %struct.net_bridge*, %struct.net_bridge** %12, align 8
  %40 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock_bh(i32* %40)
  br label %42

42:                                               ; preds = %28, %22
  %43 = load %struct.net_device*, %struct.net_device** %8, align 8
  %44 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %45 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %46 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %47 = call i32 @br_changelink(%struct.net_device* %43, %struct.nlattr** %44, %struct.nlattr** %45, %struct.netlink_ext_ack* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.net_device*, %struct.net_device** %8, align 8
  %52 = call i32 @br_dev_delete(%struct.net_device* %51, i32* null)
  br label %53

53:                                               ; preds = %50, %42
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %20
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.net_bridge* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @br_stp_change_bridge_id(%struct.net_bridge*, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @br_changelink(%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @br_dev_delete(%struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
