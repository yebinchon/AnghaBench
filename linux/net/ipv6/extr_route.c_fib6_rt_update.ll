; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_rt_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_rt_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.fib6_info = type { i32 }
%struct.nl_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@FIB_EVENT_ENTRY_REPLACE = common dso_local global i32 0, align 4
@RTM_NEWROUTE = common dso_local global i32 0, align 4
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTNLGRP_IPV6_ROUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fib6_rt_update(%struct.net* %0, %struct.fib6_info* %1, %struct.nl_info* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.fib6_info*, align 8
  %6 = alloca %struct.nl_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.fib6_info* %1, %struct.fib6_info** %5, align 8
  store %struct.nl_info* %2, %struct.nl_info** %6, align 8
  %10 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %11 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %16 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  br label %21

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %14
  %22 = phi i32 [ %19, %14 ], [ 0, %20 ]
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @ENOBUFS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.net*, %struct.net** %4, align 8
  %26 = load i32, i32* @FIB_EVENT_ENTRY_REPLACE, align 4
  %27 = load %struct.fib6_info*, %struct.fib6_info** %5, align 8
  %28 = call i32 @call_fib6_entry_notifiers(%struct.net* %25, i32 %26, %struct.fib6_info* %27, i32* null)
  %29 = load %struct.fib6_info*, %struct.fib6_info** %5, align 8
  %30 = call i32 @rt6_nlmsg_size(%struct.fib6_info* %29)
  %31 = call i32 (...) @gfp_any()
  %32 = call %struct.sk_buff* @nlmsg_new(i32 %30, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %8, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %21
  br label %70

36:                                               ; preds = %21
  %37 = load %struct.net*, %struct.net** %4, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = load %struct.fib6_info*, %struct.fib6_info** %5, align 8
  %40 = load i32, i32* @RTM_NEWROUTE, align 4
  %41 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %42 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @NLM_F_REPLACE, align 4
  %46 = call i32 @rt6_fill_node(%struct.net* %37, %struct.sk_buff* %38, %struct.fib6_info* %39, i32* null, i32* null, i32* null, i32 0, i32 %40, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %36
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @EMSGSIZE, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @WARN_ON(i32 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = call i32 @kfree_skb(%struct.sk_buff* %56)
  br label %70

58:                                               ; preds = %36
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = load %struct.net*, %struct.net** %4, align 8
  %61 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %62 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @RTNLGRP_IPV6_ROUTE, align 4
  %65 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %66 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = call i32 (...) @gfp_any()
  %69 = call i32 @rtnl_notify(%struct.sk_buff* %59, %struct.net* %60, i32 %63, i32 %64, %struct.TYPE_2__* %67, i32 %68)
  br label %78

70:                                               ; preds = %49, %35
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.net*, %struct.net** %4, align 8
  %75 = load i32, i32* @RTNLGRP_IPV6_ROUTE, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @rtnl_set_sk_err(%struct.net* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %58, %73, %70
  ret void
}

declare dso_local i32 @call_fib6_entry_notifiers(%struct.net*, i32, %struct.fib6_info*, i32*) #1

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
