; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tfilter_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tfilter_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.tcf_proto = type { i32 }
%struct.tcf_block = type { i32 }
%struct.Qdisc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@RTNLGRP_TC = common dso_local global i32 0, align 4
@NLM_F_ECHO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.tcf_proto*, %struct.tcf_block*, %struct.Qdisc*, i32, i8*, i32, i32, i32)* @tfilter_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfilter_notify(%struct.net* %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, %struct.tcf_proto* %3, %struct.tcf_block* %4, %struct.Qdisc* %5, i32 %6, i8* %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.net*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.nlmsghdr*, align 8
  %16 = alloca %struct.tcf_proto*, align 8
  %17 = alloca %struct.tcf_block*, align 8
  %18 = alloca %struct.Qdisc*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.sk_buff*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_2__, align 4
  %27 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %13, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %14, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %15, align 8
  store %struct.tcf_proto* %3, %struct.tcf_proto** %16, align 8
  store %struct.tcf_block* %4, %struct.tcf_block** %17, align 8
  store %struct.Qdisc* %5, %struct.Qdisc** %18, align 8
  store i32 %6, i32* %19, align 4
  store i8* %7, i8** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %11
  %31 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %32 = call i32 @NETLINK_CB(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  br label %37

36:                                               ; preds = %11
  br label %37

37:                                               ; preds = %36, %30
  %38 = phi i32 [ %35, %30 ], [ 0, %36 ]
  store i32 %38, i32* %25, align 4
  store i32 0, i32* %27, align 4
  %39 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.sk_buff* @alloc_skb(i32 %39, i32 %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %24, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @ENOBUFS, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  br label %99

47:                                               ; preds = %37
  %48 = load %struct.net*, %struct.net** %13, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %50 = load %struct.tcf_proto*, %struct.tcf_proto** %16, align 8
  %51 = load %struct.tcf_block*, %struct.tcf_block** %17, align 8
  %52 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %53 = load i32, i32* %19, align 4
  %54 = load i8*, i8** %20, align 8
  %55 = load i32, i32* %25, align 4
  %56 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %57 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %60 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %21, align 4
  %63 = load i32, i32* %23, align 4
  %64 = call i64 @tcf_fill_node(%struct.net* %48, %struct.sk_buff* %49, %struct.tcf_proto* %50, %struct.tcf_block* %51, %struct.Qdisc* %52, i32 %53, i8* %54, i32 %55, i32 %58, i32 %61, i32 %62, i32 %63)
  %65 = icmp sle i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %47
  %67 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %68 = call i32 @kfree_skb(%struct.sk_buff* %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %12, align 4
  br label %99

71:                                               ; preds = %47
  %72 = load i32, i32* %22, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load %struct.net*, %struct.net** %13, align 8
  %76 = getelementptr inbounds %struct.net, %struct.net* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %79 = load i32, i32* %25, align 4
  %80 = load i32, i32* @MSG_DONTWAIT, align 4
  %81 = call i32 @netlink_unicast(i32 %77, %struct.sk_buff* %78, i32 %79, i32 %80)
  store i32 %81, i32* %27, align 4
  br label %93

82:                                               ; preds = %71
  %83 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %84 = load %struct.net*, %struct.net** %13, align 8
  %85 = load i32, i32* %25, align 4
  %86 = load i32, i32* @RTNLGRP_TC, align 4
  %87 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %88 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @NLM_F_ECHO, align 4
  %91 = and i32 %89, %90
  %92 = call i32 @rtnetlink_send(%struct.sk_buff* %83, %struct.net* %84, i32 %85, i32 %86, i32 %91)
  store i32 %92, i32* %27, align 4
  br label %93

93:                                               ; preds = %82, %74
  %94 = load i32, i32* %27, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 0, i32* %27, align 4
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i32, i32* %27, align 4
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %97, %66, %44
  %100 = load i32, i32* %12, align 4
  ret i32 %100
}

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @tcf_fill_node(%struct.net*, %struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_block*, %struct.Qdisc*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netlink_unicast(i32, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @rtnetlink_send(%struct.sk_buff*, %struct.net*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
