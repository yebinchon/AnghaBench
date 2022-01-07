; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_tclass_del_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_tclass_del_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.Qdisc_class_ops = type { i32 (%struct.Qdisc*, i64)* }
%struct.Qdisc = type opaque
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.Qdisc.0 = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTM_DELTCLASS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTNLGRP_TC = common dso_local global i32 0, align 4
@NLM_F_ECHO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.Qdisc_class_ops*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.Qdisc.0*, i64)* @tclass_del_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tclass_del_notify(%struct.net* %0, %struct.Qdisc_class_ops* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.Qdisc.0* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.Qdisc_class_ops*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.Qdisc.0*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_2__, align 4
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.Qdisc_class_ops* %1, %struct.Qdisc_class_ops** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.Qdisc.0* %4, %struct.Qdisc.0** %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %6
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = call i32 @NETLINK_CB(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  br label %27

26:                                               ; preds = %6
  br label %27

27:                                               ; preds = %26, %20
  %28 = phi i32 [ %25, %20 ], [ 0, %26 ]
  store i32 %28, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %29 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %9, align 8
  %30 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %29, i32 0, i32 0
  %31 = load i32 (%struct.Qdisc*, i64)*, i32 (%struct.Qdisc*, i64)** %30, align 8
  %32 = icmp ne i32 (%struct.Qdisc*, i64)* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %91

36:                                               ; preds = %27
  %37 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.sk_buff* @alloc_skb(i32 %37, i32 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %16, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOBUFS, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %91

45:                                               ; preds = %36
  %46 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %47 = load %struct.Qdisc.0*, %struct.Qdisc.0** %12, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %51 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RTM_DELTCLASS, align 4
  %54 = call i64 @tc_fill_tclass(%struct.sk_buff* %46, %struct.Qdisc.0* %47, i64 %48, i32 %49, i32 %52, i32 0, i32 %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %45
  %57 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %58 = call i32 @kfree_skb(%struct.sk_buff* %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %91

61:                                               ; preds = %45
  %62 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %9, align 8
  %63 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %62, i32 0, i32 0
  %64 = load i32 (%struct.Qdisc*, i64)*, i32 (%struct.Qdisc*, i64)** %63, align 8
  %65 = load %struct.Qdisc.0*, %struct.Qdisc.0** %12, align 8
  %66 = bitcast %struct.Qdisc.0* %65 to %struct.Qdisc*
  %67 = load i64, i64* %13, align 8
  %68 = call i32 %64(%struct.Qdisc* %66, i64 %67)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %61
  %72 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %73 = call i32 @kfree_skb(%struct.sk_buff* %72)
  %74 = load i32, i32* %17, align 4
  store i32 %74, i32* %7, align 4
  br label %91

75:                                               ; preds = %61
  %76 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %77 = load %struct.net*, %struct.net** %8, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @RTNLGRP_TC, align 4
  %80 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %81 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @NLM_F_ECHO, align 4
  %84 = and i32 %82, %83
  %85 = call i32 @rtnetlink_send(%struct.sk_buff* %76, %struct.net* %77, i32 %78, i32 %79, i32 %84)
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  store i32 0, i32* %17, align 4
  br label %89

89:                                               ; preds = %88, %75
  %90 = load i32, i32* %17, align 4
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %89, %71, %56, %42, %33
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @tc_fill_tclass(%struct.sk_buff*, %struct.Qdisc.0*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnetlink_send(%struct.sk_buff*, %struct.net*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
