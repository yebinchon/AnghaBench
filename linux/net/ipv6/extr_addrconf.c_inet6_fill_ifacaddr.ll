; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_fill_ifacaddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_fill_ifacaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ifacaddr6 = type { i32, i32, i32, i32 }
%struct.inet6_fill_args = type { i64, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.nlmsghdr = type { i32 }

@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@IFA_SITE = common dso_local global i32 0, align 4
@RT_SCOPE_SITE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IFA_TARGET_NETNSID = common dso_local global i32 0, align 4
@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@IFA_ANYCAST = common dso_local global i32 0, align 4
@INFINITY_LIFE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ifacaddr6*, %struct.inet6_fill_args*)* @inet6_fill_ifacaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_fill_ifacaddr(%struct.sk_buff* %0, %struct.ifacaddr6* %1, %struct.inet6_fill_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ifacaddr6*, align 8
  %7 = alloca %struct.inet6_fill_args*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlmsghdr*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.ifacaddr6* %1, %struct.ifacaddr6** %6, align 8
  store %struct.inet6_fill_args* %2, %struct.inet6_fill_args** %7, align 8
  %12 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %13 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.net_device* @fib6_info_nh_dev(i32 %14)
  store %struct.net_device* %15, %struct.net_device** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = icmp ne %struct.net_device* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.net_device*, %struct.net_device** %8, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32 [ %21, %18 ], [ 1, %22 ]
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %27 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %26, i32 0, i32 2
  %28 = call i32 @ipv6_addr_scope(i32* %27)
  %29 = load i32, i32* @IFA_SITE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @RT_SCOPE_SITE, align 4
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %32, %23
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %7, align 8
  %37 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %7, align 8
  %40 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %7, align 8
  %43 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %7, align 8
  %46 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %35, i32 %38, i32 %41, i32 %44, i32 4, i32 %47)
  store %struct.nlmsghdr* %48, %struct.nlmsghdr** %10, align 8
  %49 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %50 = icmp ne %struct.nlmsghdr* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %34
  %52 = load i32, i32* @EMSGSIZE, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %104

54:                                               ; preds = %34
  %55 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %7, align 8
  %56 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = load i32, i32* @IFA_TARGET_NETNSID, align 4
  %62 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %7, align 8
  %63 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @nla_put_s32(%struct.sk_buff* %60, i32 %61, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* @EMSGSIZE, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %104

70:                                               ; preds = %59, %54
  %71 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %72 = load i32, i32* @IFA_F_PERMANENT, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @put_ifaddrmsg(%struct.nlmsghdr* %71, i32 128, i32 %72, i32 %73, i32 %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = load i32, i32* @IFA_ANYCAST, align 4
  %78 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %79 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %78, i32 0, i32 2
  %80 = call i64 @nla_put_in6_addr(%struct.sk_buff* %76, i32 %77, i32* %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %70
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %85 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %88 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @INFINITY_LIFE_TIME, align 4
  %91 = load i32, i32* @INFINITY_LIFE_TIME, align 4
  %92 = call i64 @put_cacheinfo(%struct.sk_buff* %83, i32 %86, i32 %89, i32 %90, i32 %91)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %82, %70
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %96 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %97 = call i32 @nlmsg_cancel(%struct.sk_buff* %95, %struct.nlmsghdr* %96)
  %98 = load i32, i32* @EMSGSIZE, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %104

100:                                              ; preds = %82
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %103 = call i32 @nlmsg_end(%struct.sk_buff* %101, %struct.nlmsghdr* %102)
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %100, %94, %67, %51
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.net_device* @fib6_info_nh_dev(i32) #1

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
