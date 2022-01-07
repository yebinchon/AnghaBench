; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_del_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_del_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.tc_action = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_GOODSIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTM_DELACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to fill netlink TC action attributes\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to delete TC action\00", align 1
@RTNLGRP_TC = common dso_local global i32 0, align 4
@NLM_F_ECHO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlmsghdr*, %struct.tc_action**, i32, i64, %struct.netlink_ext_ack*)* @tcf_del_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_del_notify(%struct.net* %0, %struct.nlmsghdr* %1, %struct.tc_action** %2, i32 %3, i64 %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca %struct.tc_action**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %9, align 8
  store %struct.tc_action** %2, %struct.tc_action*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* @NLMSG_GOODSIZE, align 8
  %18 = icmp ule i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i64, i64* @NLMSG_GOODSIZE, align 8
  br label %23

21:                                               ; preds = %6
  %22 = load i64, i64* %12, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i64 [ %20, %19 ], [ %22, %21 ]
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.sk_buff* @alloc_skb(i64 %24, i32 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %15, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOBUFS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %77

32:                                               ; preds = %23
  %33 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %34 = load %struct.tc_action**, %struct.tc_action*** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %37 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RTM_DELACTION, align 4
  %40 = call i64 @tca_get_fill(%struct.sk_buff* %33, %struct.tc_action** %34, i32 %35, i32 %38, i32 0, i32 %39, i32 0, i32 2)
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %44 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %46 = call i32 @kfree_skb(%struct.sk_buff* %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %77

49:                                               ; preds = %32
  %50 = load %struct.net*, %struct.net** %8, align 8
  %51 = load %struct.tc_action**, %struct.tc_action*** %10, align 8
  %52 = call i32 @tcf_action_delete(%struct.net* %50, %struct.tc_action** %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %57 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %59 = call i32 @kfree_skb(%struct.sk_buff* %58)
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %7, align 4
  br label %77

61:                                               ; preds = %49
  %62 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %63 = load %struct.net*, %struct.net** %8, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @RTNLGRP_TC, align 4
  %66 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %67 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @NLM_F_ECHO, align 4
  %70 = and i32 %68, %69
  %71 = call i32 @rtnetlink_send(%struct.sk_buff* %62, %struct.net* %63, i32 %64, i32 %65, i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %77

75:                                               ; preds = %61
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %74, %55, %42, %29
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i64 @tca_get_fill(%struct.sk_buff*, %struct.tc_action**, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @tcf_action_delete(%struct.net*, %struct.tc_action**) #1

declare dso_local i32 @rtnetlink_send(%struct.sk_buff*, %struct.net*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
