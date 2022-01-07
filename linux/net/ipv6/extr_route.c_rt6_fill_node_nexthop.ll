; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_fill_node_nexthop.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_fill_node_nexthop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nexthop = type { i32 }
%struct.nlattr = type { i32 }
%struct.fib6_nh = type { i32 }

@RTA_MULTIPATH = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nexthop*, i8*)* @rt6_fill_node_nexthop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt6_fill_node_nexthop(%struct.sk_buff* %0, %struct.nexthop* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nexthop*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.fib6_nh*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nexthop* %1, %struct.nexthop** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.nexthop*, %struct.nexthop** %6, align 8
  %11 = call i64 @nexthop_is_multipath(%struct.nexthop* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %3
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = load i32, i32* @RTA_MULTIPATH, align 4
  %16 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %14, i32 %15)
  store %struct.nlattr* %16, %struct.nlattr** %8, align 8
  %17 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %44

20:                                               ; preds = %13
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load %struct.nexthop*, %struct.nexthop** %6, align 8
  %23 = load i32, i32* @AF_INET6, align 4
  %24 = call i64 @nexthop_mpath_fill_node(%struct.sk_buff* %21, %struct.nexthop* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %44

27:                                               ; preds = %20
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %30 = call i32 @nla_nest_end(%struct.sk_buff* %28, %struct.nlattr* %29)
  br label %43

31:                                               ; preds = %3
  %32 = load %struct.nexthop*, %struct.nexthop** %6, align 8
  %33 = call %struct.fib6_nh* @nexthop_fib6_nh(%struct.nexthop* %32)
  store %struct.fib6_nh* %33, %struct.fib6_nh** %9, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load %struct.fib6_nh*, %struct.fib6_nh** %9, align 8
  %36 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %35, i32 0, i32 0
  %37 = load i32, i32* @AF_INET6, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @fib_nexthop_info(%struct.sk_buff* %34, i32* %36, i32 %37, i8* %38, i32 0)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %44

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %27
  store i32 0, i32* %4, align 4
  br label %47

44:                                               ; preds = %41, %26, %19
  %45 = load i32, i32* @EMSGSIZE, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %43
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @nexthop_is_multipath(%struct.nexthop*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nexthop_mpath_fill_node(%struct.sk_buff*, %struct.nexthop*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local %struct.fib6_nh* @nexthop_fib6_nh(%struct.nexthop*) #1

declare dso_local i64 @fib_nexthop_info(%struct.sk_buff*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
