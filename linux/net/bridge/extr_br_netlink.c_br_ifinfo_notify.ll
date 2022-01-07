; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_ifinfo_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_ifinfo_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.net_bridge_port = type { i32, %struct.net_bridge*, %struct.net_device* }
%struct.sk_buff = type { i32 }
%struct.net = type { i32 }

@RTEXT_FILTER_BRVLAN_COMPRESSED = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"port %u(%s) event %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTNLGRP_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_ifinfo_notify(i32 %0, %struct.net_bridge* %1, %struct.net_bridge_port* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_bridge*, align 8
  %6 = alloca %struct.net_bridge_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.net_bridge* %1, %struct.net_bridge** %5, align 8
  store %struct.net_bridge_port* %2, %struct.net_bridge_port** %6, align 8
  %13 = load i32, i32* @RTEXT_FILTER_BRVLAN_COMPRESSED, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @ENOBUFS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %17 = icmp ne %struct.net_bridge_port* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %20 = icmp ne %struct.net_bridge* %19, null
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %18, %3
  %23 = phi i1 [ false, %3 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %92

28:                                               ; preds = %22
  %29 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %30 = icmp ne %struct.net_bridge_port* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %33 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %32, i32 0, i32 2
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  store %struct.net_device* %34, %struct.net_device** %8, align 8
  %35 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %36 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %35, i32 0, i32 1
  %37 = load %struct.net_bridge*, %struct.net_bridge** %36, align 8
  store %struct.net_bridge* %37, %struct.net_bridge** %5, align 8
  %38 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %39 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %12, align 4
  br label %45

41:                                               ; preds = %28
  %42 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %43 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %42, i32 0, i32 0
  %44 = load %struct.net_device*, %struct.net_device** %43, align 8
  store %struct.net_device* %44, %struct.net_device** %8, align 8
  br label %45

45:                                               ; preds = %41, %31
  %46 = load %struct.net_device*, %struct.net_device** %8, align 8
  %47 = call %struct.net* @dev_net(%struct.net_device* %46)
  store %struct.net* %47, %struct.net** %11, align 8
  %48 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.net_device*, %struct.net_device** %8, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @br_debug(%struct.net_bridge* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %53)
  %55 = load %struct.net_device*, %struct.net_device** %8, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @br_nlmsg_size(%struct.net_device* %55, i32 %56)
  %58 = load i32, i32* @GFP_ATOMIC, align 4
  %59 = call %struct.sk_buff* @nlmsg_new(i32 %57, i32 %58)
  store %struct.sk_buff* %59, %struct.sk_buff** %9, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = icmp eq %struct.sk_buff* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  br label %87

63:                                               ; preds = %45
  %64 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %65 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.net_device*, %struct.net_device** %8, align 8
  %69 = call i32 @br_fill_ifinfo(%struct.sk_buff* %64, %struct.net_bridge_port* %65, i32 0, i32 0, i32 %66, i32 0, i32 %67, %struct.net_device* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @EMSGSIZE, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @WARN_ON(i32 %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %80 = call i32 @kfree_skb(%struct.sk_buff* %79)
  br label %87

81:                                               ; preds = %63
  %82 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %83 = load %struct.net*, %struct.net** %11, align 8
  %84 = load i32, i32* @RTNLGRP_LINK, align 4
  %85 = load i32, i32* @GFP_ATOMIC, align 4
  %86 = call i32 @rtnl_notify(%struct.sk_buff* %82, %struct.net* %83, i32 0, i32 %84, i32* null, i32 %85)
  br label %92

87:                                               ; preds = %72, %62
  %88 = load %struct.net*, %struct.net** %11, align 8
  %89 = load i32, i32* @RTNLGRP_LINK, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @rtnl_set_sk_err(%struct.net* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %87, %81, %27
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @br_debug(%struct.net_bridge*, i8*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @br_nlmsg_size(%struct.net_device*, i32) #1

declare dso_local i32 @br_fill_ifinfo(%struct.sk_buff*, %struct.net_bridge_port*, i32, i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, %struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
