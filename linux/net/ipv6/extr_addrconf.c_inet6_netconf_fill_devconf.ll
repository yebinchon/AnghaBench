; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_netconf_fill_devconf.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_netconf_fill_devconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.netconfmsg = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@NETCONFA_ALL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@NETCONFA_IFINDEX = common dso_local global i32 0, align 4
@NETCONFA_FORWARDING = common dso_local global i32 0, align 4
@NETCONFA_PROXY_NEIGH = common dso_local global i32 0, align 4
@NETCONFA_IGNORE_ROUTES_WITH_LINKDOWN = common dso_local global i32 0, align 4
@NETCONFA_MC_FORWARDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.ipv6_devconf*, i32, i32, i32, i32, i32)* @inet6_netconf_fill_devconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_netconf_fill_devconf(%struct.sk_buff* %0, i32 %1, %struct.ipv6_devconf* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ipv6_devconf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nlmsghdr*, align 8
  %19 = alloca %struct.netconfmsg*, align 8
  %20 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.ipv6_devconf* %2, %struct.ipv6_devconf** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %16, align 4
  %26 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %21, i32 %22, i32 %23, i32 %24, i32 4, i32 %25)
  store %struct.nlmsghdr* %26, %struct.nlmsghdr** %18, align 8
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %28 = icmp ne %struct.nlmsghdr* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %8
  %30 = load i32, i32* @EMSGSIZE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %112

32:                                               ; preds = %8
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* @NETCONFA_ALL, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 1, i32* %20, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %39 = call %struct.netconfmsg* @nlmsg_data(%struct.nlmsghdr* %38)
  store %struct.netconfmsg* %39, %struct.netconfmsg** %19, align 8
  %40 = load i32, i32* @AF_INET6, align 4
  %41 = load %struct.netconfmsg*, %struct.netconfmsg** %19, align 8
  %42 = getelementptr inbounds %struct.netconfmsg, %struct.netconfmsg* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %44 = load i32, i32* @NETCONFA_IFINDEX, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i64 @nla_put_s32(%struct.sk_buff* %43, i32 %44, i32 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %106

49:                                               ; preds = %37
  %50 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %12, align 8
  %51 = icmp ne %struct.ipv6_devconf* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  br label %102

53:                                               ; preds = %49
  %54 = load i32, i32* %20, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* @NETCONFA_FORWARDING, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56, %53
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = load i32, i32* @NETCONFA_FORWARDING, align 4
  %63 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %12, align 8
  %64 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @nla_put_s32(%struct.sk_buff* %61, i32 %62, i32 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %106

69:                                               ; preds = %60, %56
  %70 = load i32, i32* %20, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* @NETCONFA_PROXY_NEIGH, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %72, %69
  %77 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %78 = load i32, i32* @NETCONFA_PROXY_NEIGH, align 4
  %79 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %12, align 8
  %80 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @nla_put_s32(%struct.sk_buff* %77, i32 %78, i32 %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %106

85:                                               ; preds = %76, %72
  %86 = load i32, i32* %20, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* @NETCONFA_IGNORE_ROUTES_WITH_LINKDOWN, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %88, %85
  %93 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %94 = load i32, i32* @NETCONFA_IGNORE_ROUTES_WITH_LINKDOWN, align 4
  %95 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %12, align 8
  %96 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @nla_put_s32(%struct.sk_buff* %93, i32 %94, i32 %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %106

101:                                              ; preds = %92, %88
  br label %102

102:                                              ; preds = %101, %52
  %103 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %104 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %105 = call i32 @nlmsg_end(%struct.sk_buff* %103, %struct.nlmsghdr* %104)
  store i32 0, i32* %9, align 4
  br label %112

106:                                              ; preds = %100, %84, %68, %48
  %107 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %108 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %109 = call i32 @nlmsg_cancel(%struct.sk_buff* %107, %struct.nlmsghdr* %108)
  %110 = load i32, i32* @EMSGSIZE, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %106, %102, %29
  %113 = load i32, i32* %9, align 4
  ret i32 %113
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.netconfmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put_s32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
