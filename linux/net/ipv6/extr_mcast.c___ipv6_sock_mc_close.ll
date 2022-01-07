; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c___ipv6_sock_mc_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c___ipv6_sock_mc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ipv6_pinfo = type { i32 }
%struct.ipv6_mc_socklist = type { i32, i32, i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.inet6_dev = type { i32 }

@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ipv6_sock_mc_close(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.ipv6_pinfo*, align 8
  %4 = alloca %struct.ipv6_mc_socklist*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.inet6_dev*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %8)
  store %struct.ipv6_pinfo* %9, %struct.ipv6_pinfo** %3, align 8
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = call %struct.net* @sock_net(%struct.sock* %10)
  store %struct.net* %11, %struct.net** %5, align 8
  %12 = call i32 (...) @ASSERT_RTNL()
  br label %13

13:                                               ; preds = %51, %1
  %14 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %3, align 8
  %15 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ipv6_mc_socklist* @rtnl_dereference(i32 %16)
  store %struct.ipv6_mc_socklist* %17, %struct.ipv6_mc_socklist** %4, align 8
  %18 = icmp ne %struct.ipv6_mc_socklist* %17, null
  br i1 %18, label %19, label %58

19:                                               ; preds = %13
  %20 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %4, align 8
  %21 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %3, align 8
  %24 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.net*, %struct.net** %5, align 8
  %26 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %4, align 8
  %27 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.net_device* @__dev_get_by_index(%struct.net* %25, i32 %28)
  store %struct.net_device* %29, %struct.net_device** %6, align 8
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = icmp ne %struct.net_device* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %19
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %33)
  store %struct.inet6_dev* %34, %struct.inet6_dev** %7, align 8
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %4, align 8
  %37 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %38 = call i32 @ip6_mc_leave_src(%struct.sock* %35, %struct.ipv6_mc_socklist* %36, %struct.inet6_dev* %37)
  %39 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %40 = icmp ne %struct.inet6_dev* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %43 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %4, align 8
  %44 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %43, i32 0, i32 0
  %45 = call i32 @__ipv6_dev_mc_dec(%struct.inet6_dev* %42, i32* %44)
  br label %46

46:                                               ; preds = %41, %32
  br label %51

47:                                               ; preds = %19
  %48 = load %struct.sock*, %struct.sock** %2, align 8
  %49 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %4, align 8
  %50 = call i32 @ip6_mc_leave_src(%struct.sock* %48, %struct.ipv6_mc_socklist* %49, %struct.inet6_dev* null)
  br label %51

51:                                               ; preds = %47, %46
  %52 = load %struct.sock*, %struct.sock** %2, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 0
  %54 = call i32 @atomic_sub(i32 12, i32* %53)
  %55 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %4, align 8
  %56 = load i32, i32* @rcu, align 4
  %57 = call i32 @kfree_rcu(%struct.ipv6_mc_socklist* %55, i32 %56)
  br label %13

58:                                               ; preds = %13
  ret void
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.ipv6_mc_socklist* @rtnl_dereference(i32) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @ip6_mc_leave_src(%struct.sock*, %struct.ipv6_mc_socklist*, %struct.inet6_dev*) #1

declare dso_local i32 @__ipv6_dev_mc_dec(%struct.inet6_dev*, i32*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @kfree_rcu(%struct.ipv6_mc_socklist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
