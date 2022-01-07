; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_anycast.c_ipv6_sock_ac_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_anycast.c_ipv6_sock_ac_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ipv6_pinfo = type { %struct.ipv6_ac_socklist* }
%struct.ipv6_ac_socklist = type { i32, i32, %struct.ipv6_ac_socklist* }
%struct.net_device = type { i32 }
%struct.net = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv6_sock_ac_close(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.ipv6_pinfo*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ipv6_ac_socklist*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipv6_ac_socklist*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %9)
  store %struct.ipv6_pinfo* %10, %struct.ipv6_pinfo** %3, align 8
  store %struct.net_device* null, %struct.net_device** %4, align 8
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = call %struct.net* @sock_net(%struct.sock* %11)
  store %struct.net* %12, %struct.net** %6, align 8
  %13 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %3, align 8
  %14 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %13, i32 0, i32 0
  %15 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %14, align 8
  %16 = icmp ne %struct.ipv6_ac_socklist* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %61

18:                                               ; preds = %1
  %19 = call i32 (...) @rtnl_lock()
  %20 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %3, align 8
  %21 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %20, i32 0, i32 0
  %22 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %21, align 8
  store %struct.ipv6_ac_socklist* %22, %struct.ipv6_ac_socklist** %5, align 8
  %23 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %3, align 8
  %24 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %23, i32 0, i32 0
  store %struct.ipv6_ac_socklist* null, %struct.ipv6_ac_socklist** %24, align 8
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %54, %18
  %26 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %5, align 8
  %27 = icmp ne %struct.ipv6_ac_socklist* %26, null
  br i1 %27, label %28, label %59

28:                                               ; preds = %25
  %29 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %5, align 8
  %30 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %29, i32 0, i32 2
  %31 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %30, align 8
  store %struct.ipv6_ac_socklist* %31, %struct.ipv6_ac_socklist** %8, align 8
  %32 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %5, align 8
  %33 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load %struct.net*, %struct.net** %6, align 8
  %39 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %5, align 8
  %40 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.net_device* @__dev_get_by_index(%struct.net* %38, i32 %41)
  store %struct.net_device* %42, %struct.net_device** %4, align 8
  %43 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %5, align 8
  %44 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %37, %28
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = icmp ne %struct.net_device* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %5, align 8
  %52 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %51, i32 0, i32 1
  %53 = call i32 @ipv6_dev_ac_dec(%struct.net_device* %50, i32* %52)
  br label %54

54:                                               ; preds = %49, %46
  %55 = load %struct.sock*, %struct.sock** %2, align 8
  %56 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %5, align 8
  %57 = call i32 @sock_kfree_s(%struct.sock* %55, %struct.ipv6_ac_socklist* %56, i32 16)
  %58 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %8, align 8
  store %struct.ipv6_ac_socklist* %58, %struct.ipv6_ac_socklist** %5, align 8
  br label %25

59:                                               ; preds = %25
  %60 = call i32 (...) @rtnl_unlock()
  br label %61

61:                                               ; preds = %59, %17
  ret void
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @ipv6_dev_ac_dec(%struct.net_device*, i32*) #1

declare dso_local i32 @sock_kfree_s(%struct.sock*, %struct.ipv6_ac_socklist*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
