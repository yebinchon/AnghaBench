; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_get_cap.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_get_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_tnl = type { %struct.__ip6_tnl_parm }
%struct.__ip6_tnl_parm = type { i64 }
%struct.in6_addr = type { i32 }

@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@IP6_TNL_F_CAP_PER_PACKET = common dso_local global i32 0, align 4
@IPV6_ADDR_UNICAST = common dso_local global i32 0, align 4
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@IPV6_ADDR_LOOPBACK = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@IP6_TNL_F_CAP_XMIT = common dso_local global i32 0, align 4
@IP6_TNL_F_CAP_RCV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_tnl_get_cap(%struct.ip6_tnl* %0, %struct.in6_addr* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca %struct.ip6_tnl*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.__ip6_tnl_parm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ip6_tnl* %0, %struct.ip6_tnl** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %6, align 8
  %11 = load %struct.ip6_tnl*, %struct.ip6_tnl** %4, align 8
  %12 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %11, i32 0, i32 0
  store %struct.__ip6_tnl_parm* %12, %struct.__ip6_tnl_parm** %7, align 8
  %13 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %14 = call i32 @ipv6_addr_type(%struct.in6_addr* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %16 = call i32 @ipv6_addr_type(%struct.in6_addr* %15)
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %3
  %25 = load i32, i32* @IP6_TNL_F_CAP_PER_PACKET, align 4
  store i32 %25, i32* %10, align 4
  br label %79

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %29 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %78

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %36 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @IPV6_ADDR_LOOPBACK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %78, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.__ip6_tnl_parm*, %struct.__ip6_tnl_parm** %7, align 8
  %56 = getelementptr inbounds %struct.__ip6_tnl_parm, %struct.__ip6_tnl_parm* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %54, %47
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @IP6_TNL_F_CAP_XMIT, align 4
  %66 = load i32, i32* %10, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @IP6_TNL_F_CAP_RCV, align 4
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %73, %68
  br label %78

78:                                               ; preds = %77, %54, %40, %33, %26
  br label %79

79:                                               ; preds = %78, %24
  %80 = load i32, i32* %10, align 4
  ret i32 %80
}

declare dso_local i32 @ipv6_addr_type(%struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
