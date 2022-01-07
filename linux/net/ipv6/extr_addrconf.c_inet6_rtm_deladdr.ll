; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_rtm_deladdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_rtm_deladdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.ifaddrmsg = type { i32, i32, i32 }
%struct.in6_addr = type { i32 }
%struct.nlattr = type { i32 }

@IFA_MAX = common dso_local global i32 0, align 4
@ifa_ipv6_policy = common dso_local global i32 0, align 4
@IFA_ADDRESS = common dso_local global i64 0, align 8
@IFA_LOCAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IFA_FLAGS = common dso_local global i64 0, align 8
@IFA_F_MANAGETEMPADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @inet6_rtm_deladdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_rtm_deladdr(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.ifaddrmsg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca %struct.in6_addr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.net* @sock_net(i32 %19)
  store %struct.net* %20, %struct.net** %8, align 8
  %21 = load i32, i32* @IFA_MAX, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = alloca %struct.nlattr*, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %27 = load i32, i32* @IFA_MAX, align 4
  %28 = load i32, i32* @ifa_ipv6_policy, align 4
  %29 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %30 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %26, i32 12, %struct.nlattr** %25, i32 %27, i32 %28, %struct.netlink_ext_ack* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %79

35:                                               ; preds = %3
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %37 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %36)
  store %struct.ifaddrmsg* %37, %struct.ifaddrmsg** %9, align 8
  %38 = load i64, i64* @IFA_ADDRESS, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = load i64, i64* @IFA_LOCAL, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = call %struct.in6_addr* @extract_addr(%struct.nlattr* %40, %struct.nlattr* %43, %struct.in6_addr** %13)
  store %struct.in6_addr* %44, %struct.in6_addr** %12, align 8
  %45 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %46 = icmp ne %struct.in6_addr* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %35
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %79

50:                                               ; preds = %35
  %51 = load i64, i64* @IFA_FLAGS, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = icmp ne %struct.nlattr* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i64, i64* @IFA_FLAGS, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = call i32 @nla_get_u32(%struct.nlattr* %58)
  br label %64

60:                                               ; preds = %50
  %61 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %9, align 8
  %62 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  br label %64

64:                                               ; preds = %60, %55
  %65 = phi i32 [ %59, %55 ], [ %63, %60 ]
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* @IFA_F_MANAGETEMPADDR, align 4
  %67 = load i32, i32* %14, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %14, align 4
  %69 = load %struct.net*, %struct.net** %8, align 8
  %70 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %9, align 8
  %71 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %75 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %9, align 8
  %76 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @inet6_addr_del(%struct.net* %69, i32 %72, i32 %73, %struct.in6_addr* %74, i32 %77)
  store i32 %78, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %79

79:                                               ; preds = %64, %47, %33
  %80 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.in6_addr* @extract_addr(%struct.nlattr*, %struct.nlattr*, %struct.in6_addr**) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @inet6_addr_del(%struct.net*, i32, i32, %struct.in6_addr*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
