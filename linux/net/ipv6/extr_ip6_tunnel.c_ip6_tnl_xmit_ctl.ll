; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_xmit_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_xmit_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_tnl = type { %struct.__ip6_tnl_parm, %struct.net* }
%struct.__ip6_tnl_parm = type { i32, i32, i64, i64 }
%struct.net = type { i32 }
%struct.in6_addr = type { i32 }
%struct.net_device = type { i32 }

@IP6_TNL_F_CAP_XMIT = common dso_local global i32 0, align 4
@IP6_TNL_F_CAP_PER_PACKET = common dso_local global i32 0, align 4
@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s xmit: Local address not yet configured!\0A\00", align 1
@IP6_TNL_F_ALLOW_LOCAL_REMOTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"%s xmit: Routing loop! Remote address found on this node!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_tnl_xmit_ctl(%struct.ip6_tnl* %0, %struct.in6_addr* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip6_tnl*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.__ip6_tnl_parm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.net_device*, align 8
  store %struct.ip6_tnl* %0, %struct.ip6_tnl** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  %12 = load %struct.ip6_tnl*, %struct.ip6_tnl** %5, align 8
  %13 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %12, i32 0, i32 0
  store %struct.__ip6_tnl_parm* %13, %struct.__ip6_tnl_parm** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.ip6_tnl*, %struct.ip6_tnl** %5, align 8
  %15 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %14, i32 0, i32 1
  %16 = load %struct.net*, %struct.net** %15, align 8
  store %struct.net* %16, %struct.net** %10, align 8
  %17 = load %struct.ip6_tnl*, %struct.ip6_tnl** %5, align 8
  %18 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %103

23:                                               ; preds = %3
  %24 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %8, align 8
  %25 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IP6_TNL_F_CAP_XMIT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %23
  %31 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %8, align 8
  %32 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IP6_TNL_F_CAP_PER_PACKET, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %101

37:                                               ; preds = %30
  %38 = load %struct.ip6_tnl*, %struct.ip6_tnl** %5, align 8
  %39 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %40 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %41 = call i32 @ip6_tnl_get_cap(%struct.ip6_tnl* %38, %struct.in6_addr* %39, %struct.in6_addr* %40)
  %42 = load i32, i32* @IP6_TNL_F_CAP_XMIT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %101

45:                                               ; preds = %37, %23
  store %struct.net_device* null, %struct.net_device** %11, align 8
  %46 = call i32 (...) @rcu_read_lock()
  %47 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %8, align 8
  %48 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.net*, %struct.net** %10, align 8
  %53 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %8, align 8
  %54 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %52, i64 %55)
  store %struct.net_device* %56, %struct.net_device** %11, align 8
  br label %57

57:                                               ; preds = %51, %45
  %58 = load %struct.net*, %struct.net** %10, align 8
  %59 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %60 = load %struct.net_device*, %struct.net_device** %11, align 8
  %61 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %62 = call i32 @ipv6_chk_addr_and_flags(%struct.net* %58, %struct.in6_addr* %59, %struct.net_device* %60, i32 0, i32 0, i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %8, align 8
  %70 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %99

73:                                               ; preds = %57
  %74 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %8, align 8
  %75 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @IP6_TNL_F_ALLOW_LOCAL_REMOTE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %97, label %80

80:                                               ; preds = %73
  %81 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %82 = call i32 @ipv6_addr_is_multicast(%struct.in6_addr* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %80
  %85 = load %struct.net*, %struct.net** %10, align 8
  %86 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %87 = load %struct.net_device*, %struct.net_device** %11, align 8
  %88 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %89 = call i32 @ipv6_chk_addr_and_flags(%struct.net* %85, %struct.in6_addr* %86, %struct.net_device* %87, i32 1, i32 0, i32 %88)
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %8, align 8
  %94 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @pr_warn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %98

97:                                               ; preds = %84, %80, %73
  store i32 1, i32* %9, align 4
  br label %98

98:                                               ; preds = %97, %92
  br label %99

99:                                               ; preds = %98, %68
  %100 = call i32 (...) @rcu_read_unlock()
  br label %101

101:                                              ; preds = %99, %37, %30
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %22
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @ip6_tnl_get_cap(%struct.ip6_tnl*, %struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(%struct.net*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ipv6_chk_addr_and_flags(%struct.net*, %struct.in6_addr*, %struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @ipv6_addr_is_multicast(%struct.in6_addr*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
