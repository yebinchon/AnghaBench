; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_link_get_net_capable.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_link_get_net_capable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.nlattr = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net* (%struct.sk_buff*, %struct.net*, %struct.nlattr**, i32)* @rtnl_link_get_net_capable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net* @rtnl_link_get_net_capable(%struct.sk_buff* %0, %struct.net* %1, %struct.nlattr** %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net* %1, %struct.net** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.net*, %struct.net** %7, align 8
  %12 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %13 = call %struct.net* @rtnl_link_get_net_by_nlattr(%struct.net* %11, %struct.nlattr** %12)
  store %struct.net* %13, %struct.net** %10, align 8
  %14 = load %struct.net*, %struct.net** %10, align 8
  %15 = call i64 @IS_ERR(%struct.net* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load %struct.net*, %struct.net** %10, align 8
  store %struct.net* %18, %struct.net** %5, align 8
  br label %35

19:                                               ; preds = %4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = load %struct.net*, %struct.net** %10, align 8
  %22 = getelementptr inbounds %struct.net, %struct.net* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @netlink_ns_capable(%struct.sk_buff* %20, i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %19
  %28 = load %struct.net*, %struct.net** %10, align 8
  %29 = call i32 @put_net(%struct.net* %28)
  %30 = load i32, i32* @EPERM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.net* @ERR_PTR(i32 %31)
  store %struct.net* %32, %struct.net** %5, align 8
  br label %35

33:                                               ; preds = %19
  %34 = load %struct.net*, %struct.net** %10, align 8
  store %struct.net* %34, %struct.net** %5, align 8
  br label %35

35:                                               ; preds = %33, %27, %17
  %36 = load %struct.net*, %struct.net** %5, align 8
  ret %struct.net* %36
}

declare dso_local %struct.net* @rtnl_link_get_net_by_nlattr(%struct.net*, %struct.nlattr**) #1

declare dso_local i64 @IS_ERR(%struct.net*) #1

declare dso_local i32 @netlink_ns_capable(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @put_net(%struct.net*) #1

declare dso_local %struct.net* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
