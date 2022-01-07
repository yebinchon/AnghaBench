; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tfilter_del_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tfilter_del_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.tcf_proto = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.tcf_proto*, i8*, i32*, i32, %struct.netlink_ext_ack*)* }
%struct.tcf_block = type { i32 }
%struct.Qdisc = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTM_DELTFILTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to build del event notification\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@RTNLGRP_TC = common dso_local global i32 0, align 4
@NLM_F_ECHO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to send filter delete notification\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.tcf_proto*, %struct.tcf_block*, %struct.Qdisc*, i32, i8*, i32, i32*, i32, %struct.netlink_ext_ack*)* @tfilter_del_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfilter_del_notify(%struct.net* %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, %struct.tcf_proto* %3, %struct.tcf_block* %4, %struct.Qdisc* %5, i32 %6, i8* %7, i32 %8, i32* %9, i32 %10, %struct.netlink_ext_ack* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.net*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.nlmsghdr*, align 8
  %17 = alloca %struct.tcf_proto*, align 8
  %18 = alloca %struct.tcf_block*, align 8
  %19 = alloca %struct.Qdisc*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.netlink_ext_ack*, align 8
  %26 = alloca %struct.sk_buff*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_4__, align 4
  %29 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %14, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %15, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %16, align 8
  store %struct.tcf_proto* %3, %struct.tcf_proto** %17, align 8
  store %struct.tcf_block* %4, %struct.tcf_block** %18, align 8
  store %struct.Qdisc* %5, %struct.Qdisc** %19, align 8
  store i32 %6, i32* %20, align 4
  store i8* %7, i8** %21, align 8
  store i32 %8, i32* %22, align 4
  store i32* %9, i32** %23, align 8
  store i32 %10, i32* %24, align 4
  store %struct.netlink_ext_ack* %11, %struct.netlink_ext_ack** %25, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %12
  %33 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %34 = call i32 @NETLINK_CB(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  br label %39

38:                                               ; preds = %12
  br label %39

39:                                               ; preds = %38, %32
  %40 = phi i32 [ %37, %32 ], [ 0, %38 ]
  store i32 %40, i32* %27, align 4
  %41 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.sk_buff* @alloc_skb(i32 %41, i32 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %26, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOBUFS, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %13, align 4
  br label %127

49:                                               ; preds = %39
  %50 = load %struct.net*, %struct.net** %14, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %52 = load %struct.tcf_proto*, %struct.tcf_proto** %17, align 8
  %53 = load %struct.tcf_block*, %struct.tcf_block** %18, align 8
  %54 = load %struct.Qdisc*, %struct.Qdisc** %19, align 8
  %55 = load i32, i32* %20, align 4
  %56 = load i8*, i8** %21, align 8
  %57 = load i32, i32* %27, align 4
  %58 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %59 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %62 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @RTM_DELTFILTER, align 4
  %65 = load i32, i32* %24, align 4
  %66 = call i64 @tcf_fill_node(%struct.net* %50, %struct.sk_buff* %51, %struct.tcf_proto* %52, %struct.tcf_block* %53, %struct.Qdisc* %54, i32 %55, i8* %56, i32 %57, i32 %60, i32 %63, i32 %64, i32 %65)
  %67 = icmp sle i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %49
  %69 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %25, align 8
  %70 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %72 = call i32 @kfree_skb(%struct.sk_buff* %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %13, align 4
  br label %127

75:                                               ; preds = %49
  %76 = load %struct.tcf_proto*, %struct.tcf_proto** %17, align 8
  %77 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32 (%struct.tcf_proto*, i8*, i32*, i32, %struct.netlink_ext_ack*)*, i32 (%struct.tcf_proto*, i8*, i32*, i32, %struct.netlink_ext_ack*)** %79, align 8
  %81 = load %struct.tcf_proto*, %struct.tcf_proto** %17, align 8
  %82 = load i8*, i8** %21, align 8
  %83 = load i32*, i32** %23, align 8
  %84 = load i32, i32* %24, align 4
  %85 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %25, align 8
  %86 = call i32 %80(%struct.tcf_proto* %81, i8* %82, i32* %83, i32 %84, %struct.netlink_ext_ack* %85)
  store i32 %86, i32* %29, align 4
  %87 = load i32, i32* %29, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %75
  %90 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %91 = call i32 @kfree_skb(%struct.sk_buff* %90)
  %92 = load i32, i32* %29, align 4
  store i32 %92, i32* %13, align 4
  br label %127

93:                                               ; preds = %75
  %94 = load i32, i32* %22, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load %struct.net*, %struct.net** %14, align 8
  %98 = getelementptr inbounds %struct.net, %struct.net* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %101 = load i32, i32* %27, align 4
  %102 = load i32, i32* @MSG_DONTWAIT, align 4
  %103 = call i32 @netlink_unicast(i32 %99, %struct.sk_buff* %100, i32 %101, i32 %102)
  store i32 %103, i32* %29, align 4
  br label %115

104:                                              ; preds = %93
  %105 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %106 = load %struct.net*, %struct.net** %14, align 8
  %107 = load i32, i32* %27, align 4
  %108 = load i32, i32* @RTNLGRP_TC, align 4
  %109 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %110 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @NLM_F_ECHO, align 4
  %113 = and i32 %111, %112
  %114 = call i32 @rtnetlink_send(%struct.sk_buff* %105, %struct.net* %106, i32 %107, i32 %108, i32 %113)
  store i32 %114, i32* %29, align 4
  br label %115

115:                                              ; preds = %104, %96
  %116 = load i32, i32* %29, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %25, align 8
  %120 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %119, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %29, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 0, i32* %29, align 4
  br label %125

125:                                              ; preds = %124, %121
  %126 = load i32, i32* %29, align 4
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %125, %89, %68, %46
  %128 = load i32, i32* %13, align 4
  ret i32 %128
}

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @tcf_fill_node(%struct.net*, %struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_block*, %struct.Qdisc*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netlink_unicast(i32, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @rtnetlink_send(%struct.sk_buff*, %struct.net*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
