; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_add_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_add_notify.c"
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
@RTM_NEWACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Failed to fill netlink attributes while adding TC action\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RTNLGRP_TC = common dso_local global i32 0, align 4
@NLM_F_ECHO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlmsghdr*, %struct.tc_action**, i32, i64, %struct.netlink_ext_ack*)* @tcf_add_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_add_notify(%struct.net* %0, %struct.nlmsghdr* %1, %struct.tc_action** %2, i32 %3, i64 %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca %struct.tc_action**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %9, align 8
  store %struct.tc_action** %2, %struct.tc_action*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  store i32 0, i32* %15, align 4
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
  store %struct.sk_buff* %26, %struct.sk_buff** %14, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOBUFS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %68

32:                                               ; preds = %23
  %33 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %34 = load %struct.tc_action**, %struct.tc_action*** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %37 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %40 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RTM_NEWACTION, align 4
  %43 = call i64 @tca_get_fill(%struct.sk_buff* %33, %struct.tc_action** %34, i32 %35, i32 %38, i32 %41, i32 %42, i32 0, i32 0)
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %32
  %46 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %47 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %46, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %49 = call i32 @kfree_skb(%struct.sk_buff* %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %68

52:                                               ; preds = %32
  %53 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %54 = load %struct.net*, %struct.net** %8, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @RTNLGRP_TC, align 4
  %57 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %58 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NLM_F_ECHO, align 4
  %61 = and i32 %59, %60
  %62 = call i32 @rtnetlink_send(%struct.sk_buff* %53, %struct.net* %54, i32 %55, i32 %56, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  store i32 0, i32* %15, align 4
  br label %66

66:                                               ; preds = %65, %52
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %66, %45, %29
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i64 @tca_get_fill(%struct.sk_buff*, %struct.tc_action**, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnetlink_send(%struct.sk_buff*, %struct.net*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
