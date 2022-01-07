; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_validate_gw.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_validate_gw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.fib6_config = type { i32, %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.net_device = type { i32 }
%struct.inet6_dev = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Gateway can not be a local address\00", align 1
@IPV6_ADDR_UNICAST = common dso_local global i32 0, align 4
@IPV6_ADDR_MAPPED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid gateway address\00", align 1
@RTNH_F_ONLINK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Egress device not specified\00", align 1
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Egress device can not be loopback device for this route\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.fib6_config*, %struct.net_device**, %struct.inet6_dev**, %struct.netlink_ext_ack*)* @ip6_validate_gw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_validate_gw(%struct.net* %0, %struct.fib6_config* %1, %struct.net_device** %2, %struct.inet6_dev** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.fib6_config*, align 8
  %8 = alloca %struct.net_device**, align 8
  %9 = alloca %struct.inet6_dev**, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.fib6_config* %1, %struct.fib6_config** %7, align 8
  store %struct.net_device** %2, %struct.net_device*** %8, align 8
  store %struct.inet6_dev** %3, %struct.inet6_dev*** %9, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %17 = load %struct.fib6_config*, %struct.fib6_config** %7, align 8
  %18 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %17, i32 0, i32 1
  store %struct.in6_addr* %18, %struct.in6_addr** %11, align 8
  %19 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %20 = call i32 @ipv6_addr_type(%struct.in6_addr* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 1
  store i32 %26, i32* %13, align 4
  %27 = load %struct.net_device**, %struct.net_device*** %8, align 8
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  store %struct.net_device* %28, %struct.net_device** %14, align 8
  %29 = load %struct.net_device*, %struct.net_device** %14, align 8
  %30 = icmp ne %struct.net_device* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %16, align 4
  %35 = load %struct.net_device*, %struct.net_device** %14, align 8
  %36 = icmp ne %struct.net_device* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %5
  %38 = load %struct.net*, %struct.net** %6, align 8
  %39 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %40 = load %struct.net_device*, %struct.net_device** %14, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i64 @ipv6_chk_addr_and_flags(%struct.net* %38, %struct.in6_addr* %39, %struct.net_device* %40, i32 %41, i32 0, i32 0)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %46 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %124

47:                                               ; preds = %37, %5
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %50 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %51 = or i32 %49, %50
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %89

53:                                               ; preds = %47
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %56 = load i32, i32* @IPV6_ADDR_MAPPED, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %62 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %124

63:                                               ; preds = %53
  %64 = call i32 (...) @rcu_read_lock()
  %65 = load %struct.fib6_config*, %struct.fib6_config** %7, align 8
  %66 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @RTNH_F_ONLINK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load %struct.net*, %struct.net** %6, align 8
  %73 = load %struct.fib6_config*, %struct.fib6_config** %7, align 8
  %74 = load %struct.net_device*, %struct.net_device** %14, align 8
  %75 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %76 = call i32 @ip6_route_check_nh_onlink(%struct.net* %72, %struct.fib6_config* %73, %struct.net_device* %74, %struct.netlink_ext_ack* %75)
  store i32 %76, i32* %16, align 4
  br label %83

77:                                               ; preds = %63
  %78 = load %struct.net*, %struct.net** %6, align 8
  %79 = load %struct.fib6_config*, %struct.fib6_config** %7, align 8
  %80 = load %struct.net_device**, %struct.net_device*** %8, align 8
  %81 = load %struct.inet6_dev**, %struct.inet6_dev*** %9, align 8
  %82 = call i32 @ip6_route_check_nh(%struct.net* %78, %struct.fib6_config* %79, %struct.net_device** %80, %struct.inet6_dev** %81)
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %77, %71
  %84 = call i32 (...) @rcu_read_unlock()
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %124

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %47
  %90 = load %struct.net_device**, %struct.net_device*** %8, align 8
  %91 = load %struct.net_device*, %struct.net_device** %90, align 8
  store %struct.net_device* %91, %struct.net_device** %14, align 8
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %16, align 4
  %94 = load %struct.net_device*, %struct.net_device** %14, align 8
  %95 = icmp ne %struct.net_device* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %89
  %97 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %98 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %124

99:                                               ; preds = %89
  %100 = load %struct.net_device*, %struct.net_device** %14, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @IFF_LOOPBACK, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %108 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %107, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %124

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load %struct.net*, %struct.net** %6, align 8
  %115 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %116 = load %struct.net_device*, %struct.net_device** %14, align 8
  %117 = load i32, i32* %13, align 4
  %118 = call i64 @ipv6_chk_addr_and_flags(%struct.net* %114, %struct.in6_addr* %115, %struct.net_device* %116, i32 %117, i32 0, i32 0)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %122 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %121, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %124

123:                                              ; preds = %113, %110
  store i32 0, i32* %16, align 4
  br label %124

124:                                              ; preds = %123, %120, %106, %96, %87, %60, %44
  %125 = load i32, i32* %16, align 4
  ret i32 %125
}

declare dso_local i32 @ipv6_addr_type(%struct.in6_addr*) #1

declare dso_local i64 @ipv6_chk_addr_and_flags(%struct.net*, %struct.in6_addr*, %struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ip6_route_check_nh_onlink(%struct.net*, %struct.fib6_config*, %struct.net_device*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @ip6_route_check_nh(%struct.net*, %struct.fib6_config*, %struct.net_device**, %struct.inet6_dev**) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
