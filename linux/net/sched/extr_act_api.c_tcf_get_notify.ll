; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_get_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_get_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.tc_action = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Failed to fill netlink attributes while adding TC action\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i32, %struct.nlmsghdr*, %struct.tc_action**, i32, %struct.netlink_ext_ack*)* @tcf_get_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_get_notify(%struct.net* %0, i32 %1, %struct.nlmsghdr* %2, %struct.tc_action** %3, i32 %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlmsghdr*, align 8
  %11 = alloca %struct.tc_action**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %10, align 8
  store %struct.tc_action** %3, %struct.tc_action*** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %15 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.sk_buff* @alloc_skb(i32 %15, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %14, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @ENOBUFS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %45

23:                                               ; preds = %6
  %24 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %25 = load %struct.tc_action**, %struct.tc_action*** %11, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %28 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i64 @tca_get_fill(%struct.sk_buff* %24, %struct.tc_action** %25, i32 %26, i32 %29, i32 0, i32 %30, i32 0, i32 1)
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %23
  %34 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %35 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %34, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %37 = call i32 @kfree_skb(%struct.sk_buff* %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %45

40:                                               ; preds = %23
  %41 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %42 = load %struct.net*, %struct.net** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @rtnl_unicast(%struct.sk_buff* %41, %struct.net* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %40, %33, %20
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @tca_get_fill(%struct.sk_buff*, %struct.tc_action**, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
