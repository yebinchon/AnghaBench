; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_inet6_rt_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_inet6_rt_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { i32 }
%struct.nl_info = type { %struct.TYPE_2__*, i32, %struct.net* }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTNLGRP_IPV6_ROUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet6_rt_notify(i32 %0, %struct.fib6_info* %1, %struct.nl_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fib6_info*, align 8
  %7 = alloca %struct.nl_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.fib6_info* %1, %struct.fib6_info** %6, align 8
  store %struct.nl_info* %2, %struct.nl_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.nl_info*, %struct.nl_info** %7, align 8
  %14 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %13, i32 0, i32 2
  %15 = load %struct.net*, %struct.net** %14, align 8
  store %struct.net* %15, %struct.net** %10, align 8
  %16 = load i32, i32* @ENOBUFS, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %12, align 4
  %18 = load %struct.nl_info*, %struct.nl_info** %7, align 8
  %19 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.nl_info*, %struct.nl_info** %7, align 8
  %24 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  br label %29

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i32 [ %27, %22 ], [ 0, %28 ]
  store i32 %30, i32* %11, align 4
  %31 = load %struct.fib6_info*, %struct.fib6_info** %6, align 8
  %32 = call i32 @rt6_nlmsg_size(%struct.fib6_info* %31)
  %33 = call i32 (...) @gfp_any()
  %34 = call %struct.sk_buff* @nlmsg_new(i32 %32, i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %9, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %72

38:                                               ; preds = %29
  %39 = load %struct.net*, %struct.net** %10, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = load %struct.fib6_info*, %struct.fib6_info** %6, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.nl_info*, %struct.nl_info** %7, align 8
  %44 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @rt6_fill_node(%struct.net* %39, %struct.sk_buff* %40, %struct.fib6_info* %41, i32* null, i32* null, i32* null, i32 0, i32 %42, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %38
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @EMSGSIZE, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @WARN_ON(i32 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %59 = call i32 @kfree_skb(%struct.sk_buff* %58)
  br label %72

60:                                               ; preds = %38
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = load %struct.net*, %struct.net** %10, align 8
  %63 = load %struct.nl_info*, %struct.nl_info** %7, align 8
  %64 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @RTNLGRP_IPV6_ROUTE, align 4
  %67 = load %struct.nl_info*, %struct.nl_info** %7, align 8
  %68 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = call i32 (...) @gfp_any()
  %71 = call i32 @rtnl_notify(%struct.sk_buff* %61, %struct.net* %62, i32 %65, i32 %66, %struct.TYPE_2__* %69, i32 %70)
  br label %80

72:                                               ; preds = %51, %37
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.net*, %struct.net** %10, align 8
  %77 = load i32, i32* @RTNLGRP_IPV6_ROUTE, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @rtnl_set_sk_err(%struct.net* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %60, %75, %72
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @rt6_nlmsg_size(%struct.fib6_info*) #1

declare dso_local i32 @gfp_any(...) #1

declare dso_local i32 @rt6_fill_node(%struct.net*, %struct.sk_buff*, %struct.fib6_info*, i32*, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, %struct.net*, i32, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
