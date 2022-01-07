; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i64 }
%struct.nlmsghdr = type { i32, i32 }
%struct.Qdisc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTM_DELQDISC = common dso_local global i32 0, align 4
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@RTM_NEWQDISC = common dso_local global i32 0, align 4
@RTNLGRP_TC = common dso_local global i32 0, align 4
@NLM_F_ECHO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, i32, %struct.Qdisc*, %struct.Qdisc*)* @qdisc_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdisc_notify(%struct.net* %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, i32 %3, %struct.Qdisc* %4, %struct.Qdisc* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nlmsghdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.Qdisc*, align 8
  %13 = alloca %struct.Qdisc*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_2__, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.Qdisc* %4, %struct.Qdisc** %12, align 8
  store %struct.Qdisc* %5, %struct.Qdisc** %13, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %6
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = call i32 @NETLINK_CB(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  br label %26

25:                                               ; preds = %6
  br label %26

26:                                               ; preds = %25, %19
  %27 = phi i32 [ %24, %19 ], [ 0, %25 ]
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.sk_buff* @alloc_skb(i32 %28, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %14, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOBUFS, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %105

36:                                               ; preds = %26
  %37 = load %struct.Qdisc*, %struct.Qdisc** %12, align 8
  %38 = icmp ne %struct.Qdisc* %37, null
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load %struct.Qdisc*, %struct.Qdisc** %12, align 8
  %41 = call i32 @tc_qdisc_dump_ignore(%struct.Qdisc* %40, i32 0)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %39
  %44 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %45 = load %struct.Qdisc*, %struct.Qdisc** %12, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %49 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RTM_DELQDISC, align 4
  %52 = call i64 @tc_fill_qdisc(%struct.sk_buff* %44, %struct.Qdisc* %45, i32 %46, i32 %47, i32 %50, i32 0, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %100

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %39, %36
  %57 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %58 = icmp ne %struct.Qdisc* %57, null
  br i1 %58, label %59, label %83

59:                                               ; preds = %56
  %60 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %61 = call i32 @tc_qdisc_dump_ignore(%struct.Qdisc* %60, i32 0)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %59
  %64 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %65 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %69 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.Qdisc*, %struct.Qdisc** %12, align 8
  %72 = icmp ne %struct.Qdisc* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* @NLM_F_REPLACE, align 4
  br label %76

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  %78 = load i32, i32* @RTM_NEWQDISC, align 4
  %79 = call i64 @tc_fill_qdisc(%struct.sk_buff* %64, %struct.Qdisc* %65, i32 %66, i32 %67, i32 %70, i32 %77, i32 %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %100

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %59, %56
  %84 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %90 = load %struct.net*, %struct.net** %8, align 8
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* @RTNLGRP_TC, align 4
  %93 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %94 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @NLM_F_ECHO, align 4
  %97 = and i32 %95, %96
  %98 = call i32 @rtnetlink_send(%struct.sk_buff* %89, %struct.net* %90, i32 %91, i32 %92, i32 %97)
  store i32 %98, i32* %7, align 4
  br label %105

99:                                               ; preds = %83
  br label %100

100:                                              ; preds = %99, %81, %54
  %101 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %102 = call i32 @kfree_skb(%struct.sk_buff* %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %100, %88, %33
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @tc_qdisc_dump_ignore(%struct.Qdisc*, i32) #1

declare dso_local i64 @tc_fill_qdisc(%struct.sk_buff*, %struct.Qdisc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rtnetlink_send(%struct.sk_buff*, %struct.net*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
