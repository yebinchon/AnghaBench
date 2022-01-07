; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_mr6_netlink_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_mr6_netlink_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { i32, i32 }
%struct.mfc6_cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@MAXMIFS = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@RTNLGRP_IPV6_MROUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mr_table*, %struct.mfc6_cache*, i32)* @mr6_netlink_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mr6_netlink_event(%struct.mr_table* %0, %struct.mfc6_cache* %1, i32 %2) #0 {
  %4 = alloca %struct.mr_table*, align 8
  %5 = alloca %struct.mfc6_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.mr_table* %0, %struct.mr_table** %4, align 8
  store %struct.mfc6_cache* %1, %struct.mfc6_cache** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mr_table*, %struct.mr_table** %4, align 8
  %11 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %10, i32 0, i32 1
  %12 = call %struct.net* @read_pnet(i32* %11)
  store %struct.net* %12, %struct.net** %7, align 8
  %13 = load i32, i32* @ENOBUFS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.mfc6_cache*, %struct.mfc6_cache** %5, align 8
  %16 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MAXMIFS, align 8
  %20 = icmp sge i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load %struct.mr_table*, %struct.mr_table** %4, align 8
  %23 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mr6_msgsize(i32 %21, i32 %24)
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.sk_buff* @nlmsg_new(i32 %25, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %8, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  br label %46

31:                                               ; preds = %3
  %32 = load %struct.mr_table*, %struct.mr_table** %4, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = load %struct.mfc6_cache*, %struct.mfc6_cache** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ip6mr_fill_mroute(%struct.mr_table* %32, %struct.sk_buff* %33, i32 0, i32 0, %struct.mfc6_cache* %34, i32 %35, i32 0)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %46

40:                                               ; preds = %31
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = load %struct.net*, %struct.net** %7, align 8
  %43 = load i32, i32* @RTNLGRP_IPV6_MROUTE, align 4
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call i32 @rtnl_notify(%struct.sk_buff* %41, %struct.net* %42, i32 0, i32 %43, i32* null, i32 %44)
  br label %56

46:                                               ; preds = %39, %30
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = call i32 @kfree_skb(%struct.sk_buff* %47)
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.net*, %struct.net** %7, align 8
  %53 = load i32, i32* @RTNLGRP_IPV6_MROUTE, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @rtnl_set_sk_err(%struct.net* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %40, %51, %46
  ret void
}

declare dso_local %struct.net* @read_pnet(i32*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @mr6_msgsize(i32, i32) #1

declare dso_local i32 @ip6mr_fill_mroute(%struct.mr_table*, %struct.sk_buff*, i32, i32, %struct.mfc6_cache*, i32, i32) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, %struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
