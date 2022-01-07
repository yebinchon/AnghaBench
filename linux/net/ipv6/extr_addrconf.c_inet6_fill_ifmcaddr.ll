; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_fill_ifmcaddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_fill_ifmcaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ifmcaddr6 = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.inet6_fill_args = type { i64, i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }

@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@IFA_SITE = common dso_local global i32 0, align 4
@RT_SCOPE_SITE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IFA_TARGET_NETNSID = common dso_local global i32 0, align 4
@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@IFA_MULTICAST = common dso_local global i32 0, align 4
@INFINITY_LIFE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ifmcaddr6*, %struct.inet6_fill_args*)* @inet6_fill_ifmcaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_fill_ifmcaddr(%struct.sk_buff* %0, %struct.ifmcaddr6* %1, %struct.inet6_fill_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ifmcaddr6*, align 8
  %7 = alloca %struct.inet6_fill_args*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.ifmcaddr6* %1, %struct.ifmcaddr6** %6, align 8
  store %struct.inet6_fill_args* %2, %struct.inet6_fill_args** %7, align 8
  %11 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %13 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %20 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %19, i32 0, i32 2
  %21 = call i32 @ipv6_addr_scope(i32* %20)
  %22 = load i32, i32* @IFA_SITE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @RT_SCOPE_SITE, align 4
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %25, %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %7, align 8
  %30 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %7, align 8
  %33 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %7, align 8
  %36 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %7, align 8
  %39 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %28, i32 %31, i32 %34, i32 %37, i32 4, i32 %40)
  store %struct.nlmsghdr* %41, %struct.nlmsghdr** %8, align 8
  %42 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %43 = icmp ne %struct.nlmsghdr* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %27
  %45 = load i32, i32* @EMSGSIZE, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %97

47:                                               ; preds = %27
  %48 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %7, align 8
  %49 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load i32, i32* @IFA_TARGET_NETNSID, align 4
  %55 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %7, align 8
  %56 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @nla_put_s32(%struct.sk_buff* %53, i32 %54, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @EMSGSIZE, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %97

63:                                               ; preds = %52, %47
  %64 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %65 = load i32, i32* @IFA_F_PERMANENT, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @put_ifaddrmsg(%struct.nlmsghdr* %64, i32 128, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = load i32, i32* @IFA_MULTICAST, align 4
  %71 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %72 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %71, i32 0, i32 2
  %73 = call i64 @nla_put_in6_addr(%struct.sk_buff* %69, i32 %70, i32* %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %63
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %78 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %81 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @INFINITY_LIFE_TIME, align 4
  %84 = load i32, i32* @INFINITY_LIFE_TIME, align 4
  %85 = call i64 @put_cacheinfo(%struct.sk_buff* %76, i32 %79, i32 %82, i32 %83, i32 %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %75, %63
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %90 = call i32 @nlmsg_cancel(%struct.sk_buff* %88, %struct.nlmsghdr* %89)
  %91 = load i32, i32* @EMSGSIZE, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %97

93:                                               ; preds = %75
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %96 = call i32 @nlmsg_end(%struct.sk_buff* %94, %struct.nlmsghdr* %95)
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %93, %87, %60, %44
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @ipv6_addr_scope(i32*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @nla_put_s32(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @put_ifaddrmsg(%struct.nlmsghdr*, i32, i32, i32, i32) #1

declare dso_local i64 @nla_put_in6_addr(%struct.sk_buff*, i32, i32*) #1

declare dso_local i64 @put_cacheinfo(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
