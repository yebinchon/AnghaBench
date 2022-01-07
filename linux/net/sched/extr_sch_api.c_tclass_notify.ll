; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_tclass_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_tclass_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.Qdisc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTNLGRP_TC = common dso_local global i32 0, align 4
@NLM_F_ECHO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.Qdisc*, i64, i32)* @tclass_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tclass_notify(%struct.net* %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, %struct.Qdisc* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nlmsghdr*, align 8
  %11 = alloca %struct.Qdisc*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_2__, align 4
  %17 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %10, align 8
  store %struct.Qdisc* %3, %struct.Qdisc** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %6
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = call i32 @NETLINK_CB(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  br label %27

26:                                               ; preds = %6
  br label %27

27:                                               ; preds = %26, %20
  %28 = phi i32 [ %25, %20 ], [ 0, %26 ]
  store i32 %28, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %29 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.sk_buff* @alloc_skb(i32 %29, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %14, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOBUFS, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %69

37:                                               ; preds = %27
  %38 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %39 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %43 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i64 @tc_fill_tclass(%struct.sk_buff* %38, %struct.Qdisc* %39, i64 %40, i32 %41, i32 %44, i32 0, i32 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %50 = call i32 @kfree_skb(%struct.sk_buff* %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %69

53:                                               ; preds = %37
  %54 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %55 = load %struct.net*, %struct.net** %8, align 8
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @RTNLGRP_TC, align 4
  %58 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %59 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @NLM_F_ECHO, align 4
  %62 = and i32 %60, %61
  %63 = call i32 @rtnetlink_send(%struct.sk_buff* %54, %struct.net* %55, i32 %56, i32 %57, i32 %62)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  store i32 0, i32* %17, align 4
  br label %67

67:                                               ; preds = %66, %53
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %48, %34
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @tc_fill_tclass(%struct.sk_buff*, %struct.Qdisc*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnetlink_send(%struct.sk_buff*, %struct.net*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
