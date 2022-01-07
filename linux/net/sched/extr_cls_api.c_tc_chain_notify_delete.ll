; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_chain_notify_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_chain_notify_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto_ops = type { i32 }
%struct.tcf_block = type { %struct.net* }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTM_DELCHAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@RTNLGRP_TC = common dso_local global i32 0, align 4
@NLM_F_ECHO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto_ops*, i8*, i32, %struct.tcf_block*, %struct.sk_buff*, i32, i32, i32)* @tc_chain_notify_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_chain_notify_delete(%struct.tcf_proto_ops* %0, i8* %1, i32 %2, %struct.tcf_block* %3, %struct.sk_buff* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcf_proto_ops*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tcf_block*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_2__, align 4
  %20 = alloca %struct.net*, align 8
  %21 = alloca %struct.sk_buff*, align 8
  store %struct.tcf_proto_ops* %0, %struct.tcf_proto_ops** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.tcf_block* %3, %struct.tcf_block** %13, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %26 = call i32 @NETLINK_CB(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  br label %31

30:                                               ; preds = %8
  br label %31

31:                                               ; preds = %30, %24
  %32 = phi i32 [ %29, %24 ], [ 0, %30 ]
  store i32 %32, i32* %18, align 4
  %33 = load %struct.tcf_block*, %struct.tcf_block** %13, align 8
  %34 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %33, i32 0, i32 0
  %35 = load %struct.net*, %struct.net** %34, align 8
  store %struct.net* %35, %struct.net** %20, align 8
  %36 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.sk_buff* @alloc_skb(i32 %36, i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %21, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* @ENOBUFS, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %82

44:                                               ; preds = %31
  %45 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.net*, %struct.net** %20, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %50 = load %struct.tcf_block*, %struct.tcf_block** %13, align 8
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* @RTM_DELCHAIN, align 4
  %55 = call i64 @tc_chain_fill_node(%struct.tcf_proto_ops* %45, i8* %46, i32 %47, %struct.net* %48, %struct.sk_buff* %49, %struct.tcf_block* %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = icmp sle i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %44
  %58 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %59 = call i32 @kfree_skb(%struct.sk_buff* %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %9, align 4
  br label %82

62:                                               ; preds = %44
  %63 = load i32, i32* %17, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load %struct.net*, %struct.net** %20, align 8
  %67 = getelementptr inbounds %struct.net, %struct.net* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* @MSG_DONTWAIT, align 4
  %72 = call i32 @netlink_unicast(i32 %68, %struct.sk_buff* %69, i32 %70, i32 %71)
  store i32 %72, i32* %9, align 4
  br label %82

73:                                               ; preds = %62
  %74 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %75 = load %struct.net*, %struct.net** %20, align 8
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* @RTNLGRP_TC, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* @NLM_F_ECHO, align 4
  %80 = and i32 %78, %79
  %81 = call i32 @rtnetlink_send(%struct.sk_buff* %74, %struct.net* %75, i32 %76, i32 %77, i32 %80)
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %73, %65, %57, %41
  %83 = load i32, i32* %9, align 4
  ret i32 %83
}

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @tc_chain_fill_node(%struct.tcf_proto_ops*, i8*, i32, %struct.net*, %struct.sk_buff*, %struct.tcf_block*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netlink_unicast(i32, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @rtnetlink_send(%struct.sk_buff*, %struct.net*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
