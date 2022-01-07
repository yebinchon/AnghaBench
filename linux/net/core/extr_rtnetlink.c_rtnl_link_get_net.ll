; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_link_get_net.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_link_get_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }

@IFLA_NET_NS_PID = common dso_local global i64 0, align 8
@IFLA_NET_NS_FD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net* @rtnl_link_get_net(%struct.net* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.net*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %4, align 8
  %6 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %7 = load i64, i64* @IFLA_NET_NS_PID, align 8
  %8 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %6, i64 %7
  %9 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %10 = icmp ne %struct.nlattr* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %13 = load i64, i64* @IFLA_NET_NS_PID, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = call i32 @nla_get_u32(%struct.nlattr* %15)
  %17 = call %struct.net* @get_net_ns_by_pid(i32 %16)
  store %struct.net* %17, %struct.net** %5, align 8
  br label %35

18:                                               ; preds = %2
  %19 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %20 = load i64, i64* @IFLA_NET_NS_FD, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = icmp ne %struct.nlattr* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %26 = load i64, i64* @IFLA_NET_NS_FD, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = call i32 @nla_get_u32(%struct.nlattr* %28)
  %30 = call %struct.net* @get_net_ns_by_fd(i32 %29)
  store %struct.net* %30, %struct.net** %5, align 8
  br label %34

31:                                               ; preds = %18
  %32 = load %struct.net*, %struct.net** %3, align 8
  %33 = call %struct.net* @get_net(%struct.net* %32)
  store %struct.net* %33, %struct.net** %5, align 8
  br label %34

34:                                               ; preds = %31, %24
  br label %35

35:                                               ; preds = %34, %11
  %36 = load %struct.net*, %struct.net** %5, align 8
  ret %struct.net* %36
}

declare dso_local %struct.net* @get_net_ns_by_pid(i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.net* @get_net_ns_by_fd(i32) #1

declare dso_local %struct.net* @get_net(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
