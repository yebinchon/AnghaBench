; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_netconf_fill_devconf.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_netconf_fill_devconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mpls_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netconfmsg = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@NETCONFA_ALL = common dso_local global i32 0, align 4
@AF_MPLS = common dso_local global i32 0, align 4
@NETCONFA_IFINDEX = common dso_local global i32 0, align 4
@NETCONFA_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.mpls_dev*, i32, i32, i32, i32, i32)* @mpls_netconf_fill_devconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpls_netconf_fill_devconf(%struct.sk_buff* %0, %struct.mpls_dev* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.mpls_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nlmsghdr*, align 8
  %17 = alloca %struct.netconfmsg*, align 8
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.mpls_dev* %1, %struct.mpls_dev** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %19, i32 %20, i32 %21, i32 %22, i32 4, i32 %23)
  store %struct.nlmsghdr* %24, %struct.nlmsghdr** %16, align 8
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %26 = icmp ne %struct.nlmsghdr* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %7
  %28 = load i32, i32* @EMSGSIZE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %77

30:                                               ; preds = %7
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* @NETCONFA_ALL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 1, i32* %18, align 4
  br label %35

35:                                               ; preds = %34, %30
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %37 = call %struct.netconfmsg* @nlmsg_data(%struct.nlmsghdr* %36)
  store %struct.netconfmsg* %37, %struct.netconfmsg** %17, align 8
  %38 = load i32, i32* @AF_MPLS, align 4
  %39 = load %struct.netconfmsg*, %struct.netconfmsg** %17, align 8
  %40 = getelementptr inbounds %struct.netconfmsg, %struct.netconfmsg* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %42 = load i32, i32* @NETCONFA_IFINDEX, align 4
  %43 = load %struct.mpls_dev*, %struct.mpls_dev** %10, align 8
  %44 = getelementptr inbounds %struct.mpls_dev, %struct.mpls_dev* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @nla_put_s32(%struct.sk_buff* %41, i32 %42, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  br label %71

51:                                               ; preds = %35
  %52 = load i32, i32* %18, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* @NETCONFA_INPUT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54, %51
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = load i32, i32* @NETCONFA_INPUT, align 4
  %61 = load %struct.mpls_dev*, %struct.mpls_dev** %10, align 8
  %62 = getelementptr inbounds %struct.mpls_dev, %struct.mpls_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @nla_put_s32(%struct.sk_buff* %59, i32 %60, i32 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %71

67:                                               ; preds = %58, %54
  %68 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %69 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %70 = call i32 @nlmsg_end(%struct.sk_buff* %68, %struct.nlmsghdr* %69)
  store i32 0, i32* %8, align 4
  br label %77

71:                                               ; preds = %66, %50
  %72 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %73 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %74 = call i32 @nlmsg_cancel(%struct.sk_buff* %72, %struct.nlmsghdr* %73)
  %75 = load i32, i32* @EMSGSIZE, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %71, %67, %27
  %78 = load i32, i32* %8, align 4
  ret i32 %78
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
