; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_rcv_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_rcv_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_tnl = type { %struct.net*, %struct.__ip6_tnl_parm }
%struct.net = type { i32 }
%struct.__ip6_tnl_parm = type { i32, i64 }
%struct.in6_addr = type { i32 }
%struct.net_device = type { i32 }

@IP6_TNL_F_CAP_RCV = common dso_local global i32 0, align 4
@IP6_TNL_F_CAP_PER_PACKET = common dso_local global i32 0, align 4
@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@IP6_TNL_F_ALLOW_LOCAL_REMOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_tnl_rcv_ctl(%struct.ip6_tnl* %0, %struct.in6_addr* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca %struct.ip6_tnl*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.__ip6_tnl_parm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.net_device*, align 8
  store %struct.ip6_tnl* %0, %struct.ip6_tnl** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %6, align 8
  %11 = load %struct.ip6_tnl*, %struct.ip6_tnl** %4, align 8
  %12 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %11, i32 0, i32 1
  store %struct.__ip6_tnl_parm* %12, %struct.__ip6_tnl_parm** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.ip6_tnl*, %struct.ip6_tnl** %4, align 8
  %14 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %13, i32 0, i32 0
  %15 = load %struct.net*, %struct.net** %14, align 8
  store %struct.net* %15, %struct.net** %9, align 8
  %16 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %17 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IP6_TNL_F_CAP_RCV, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %3
  %23 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %24 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IP6_TNL_F_CAP_PER_PACKET, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %80

29:                                               ; preds = %22
  %30 = load %struct.ip6_tnl*, %struct.ip6_tnl** %4, align 8
  %31 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %32 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %33 = call i32 @ip6_tnl_get_cap(%struct.ip6_tnl* %30, %struct.in6_addr* %31, %struct.in6_addr* %32)
  %34 = load i32, i32* @IP6_TNL_F_CAP_RCV, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %80

37:                                               ; preds = %29, %3
  store %struct.net_device* null, %struct.net_device** %10, align 8
  %38 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %39 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.net*, %struct.net** %9, align 8
  %44 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %45 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %43, i64 %46)
  store %struct.net_device* %47, %struct.net_device** %10, align 8
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %50 = call i64 @ipv6_addr_is_multicast(%struct.in6_addr* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load %struct.net*, %struct.net** %9, align 8
  %54 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %55 = load %struct.net_device*, %struct.net_device** %10, align 8
  %56 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %57 = call i32 @ipv6_chk_addr_and_flags(%struct.net* %53, %struct.in6_addr* %54, %struct.net_device* %55, i32 0, i32 0, i32 %56)
  %58 = call i64 @likely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %52, %48
  %61 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %62 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IP6_TNL_F_ALLOW_LOCAL_REMOTE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %60
  %68 = load %struct.net*, %struct.net** %9, align 8
  %69 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %70 = load %struct.net_device*, %struct.net_device** %10, align 8
  %71 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %72 = call i32 @ipv6_chk_addr_and_flags(%struct.net* %68, %struct.in6_addr* %69, %struct.net_device* %70, i32 1, i32 0, i32 %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @likely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67, %60
  store i32 1, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %67, %52
  br label %80

80:                                               ; preds = %79, %29, %22
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local i32 @ip6_tnl_get_cap(%struct.ip6_tnl*, %struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(%struct.net*, i64) #1

declare dso_local i64 @ipv6_addr_is_multicast(%struct.in6_addr*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ipv6_chk_addr_and_flags(%struct.net*, %struct.in6_addr*, %struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
