; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_table.c_dn_rtmsg_fib.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_table.c_dn_rtmsg_fib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_fib_node = type { i32, i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_skb_parms = type { i32 }
%struct.sk_buff = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@RTNLGRP_DECnet_ROUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.dn_fib_node*, i32, i32, %struct.nlmsghdr*, %struct.netlink_skb_parms*)* @dn_rtmsg_fib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_rtmsg_fib(i32 %0, %struct.dn_fib_node* %1, i32 %2, i32 %3, %struct.nlmsghdr* %4, %struct.netlink_skb_parms* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dn_fib_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.netlink_skb_parms*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.dn_fib_node* %1, %struct.dn_fib_node** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nlmsghdr* %4, %struct.nlmsghdr** %11, align 8
  store %struct.netlink_skb_parms* %5, %struct.netlink_skb_parms** %12, align 8
  %16 = load %struct.netlink_skb_parms*, %struct.netlink_skb_parms** %12, align 8
  %17 = icmp ne %struct.netlink_skb_parms* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = load %struct.netlink_skb_parms*, %struct.netlink_skb_parms** %12, align 8
  %20 = getelementptr inbounds %struct.netlink_skb_parms, %struct.netlink_skb_parms* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  br label %23

22:                                               ; preds = %6
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32 [ %21, %18 ], [ 0, %22 ]
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* @ENOBUFS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %15, align 4
  %27 = load %struct.dn_fib_node*, %struct.dn_fib_node** %8, align 8
  %28 = call i32 @DN_FIB_INFO(%struct.dn_fib_node* %27)
  %29 = call i32 @dn_fib_nlmsg_size(i32 %28)
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.sk_buff* @nlmsg_new(i32 %29, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %13, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %33 = icmp eq %struct.sk_buff* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %73

35:                                               ; preds = %23
  %36 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %39 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.dn_fib_node*, %struct.dn_fib_node** %8, align 8
  %44 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dn_fib_node*, %struct.dn_fib_node** %8, align 8
  %47 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dn_fib_node*, %struct.dn_fib_node** %8, align 8
  %50 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %49, i32 0, i32 0
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.dn_fib_node*, %struct.dn_fib_node** %8, align 8
  %53 = call i32 @DN_FIB_INFO(%struct.dn_fib_node* %52)
  %54 = call i32 @dn_fib_dump_info(%struct.sk_buff* %36, i32 %37, i32 %40, i32 %41, i32 %42, i32 %45, i32 %48, i32* %50, i32 %51, i32 %53, i32 0)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %35
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @EMSGSIZE, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @WARN_ON(i32 %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %65 = call i32 @kfree_skb(%struct.sk_buff* %64)
  br label %73

66:                                               ; preds = %35
  %67 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @RTNLGRP_DECnet_ROUTE, align 4
  %70 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i32 @rtnl_notify(%struct.sk_buff* %67, i32* @init_net, i32 %68, i32 %69, %struct.nlmsghdr* %70, i32 %71)
  br label %80

73:                                               ; preds = %57, %34
  %74 = load i32, i32* %15, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* @RTNLGRP_DECnet_ROUTE, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @rtnl_set_sk_err(i32* @init_net, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %66, %76, %73
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @dn_fib_nlmsg_size(i32) #1

declare dso_local i32 @DN_FIB_INFO(%struct.dn_fib_node*) #1

declare dso_local i32 @dn_fib_dump_info(%struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, i32*, i32, i32, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @rtnl_set_sk_err(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
