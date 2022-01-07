; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_link_get_net_by_nlattr.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_link_get_net_by_nlattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }

@IFLA_NET_NS_PID = common dso_local global i64 0, align 8
@IFLA_NET_NS_FD = common dso_local global i64 0, align 8
@IFLA_TARGET_NETNSID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net* (%struct.net*, %struct.nlattr**)* @rtnl_link_get_net_by_nlattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net* @rtnl_link_get_net_by_nlattr(%struct.net* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.net*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %7 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %8 = load i64, i64* @IFLA_NET_NS_PID, align 8
  %9 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %7, i64 %8
  %10 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %11 = icmp ne %struct.nlattr* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %14 = load i64, i64* @IFLA_NET_NS_FD, align 8
  %15 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %14
  %16 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %17 = icmp ne %struct.nlattr* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %12, %2
  %19 = load %struct.net*, %struct.net** %4, align 8
  %20 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %21 = call %struct.net* @rtnl_link_get_net(%struct.net* %19, %struct.nlattr** %20)
  store %struct.net* %21, %struct.net** %3, align 8
  br label %47

22:                                               ; preds = %12
  %23 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %24 = load i64, i64* @IFLA_TARGET_NETNSID, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load %struct.net*, %struct.net** %4, align 8
  %30 = call %struct.net* @get_net(%struct.net* %29)
  store %struct.net* %30, %struct.net** %3, align 8
  br label %47

31:                                               ; preds = %22
  %32 = load %struct.net*, %struct.net** %4, align 8
  %33 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %34 = load i64, i64* @IFLA_TARGET_NETNSID, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = call i32 @nla_get_u32(%struct.nlattr* %36)
  %38 = call %struct.net* @get_net_ns_by_id(%struct.net* %32, i32 %37)
  store %struct.net* %38, %struct.net** %6, align 8
  %39 = load %struct.net*, %struct.net** %6, align 8
  %40 = icmp ne %struct.net* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.net* @ERR_PTR(i32 %43)
  store %struct.net* %44, %struct.net** %3, align 8
  br label %47

45:                                               ; preds = %31
  %46 = load %struct.net*, %struct.net** %6, align 8
  store %struct.net* %46, %struct.net** %3, align 8
  br label %47

47:                                               ; preds = %45, %41, %28, %18
  %48 = load %struct.net*, %struct.net** %3, align 8
  ret %struct.net* %48
}

declare dso_local %struct.net* @rtnl_link_get_net(%struct.net*, %struct.nlattr**) #1

declare dso_local %struct.net* @get_net(%struct.net*) #1

declare dso_local %struct.net* @get_net_ns_by_id(%struct.net*, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.net* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
