; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IPSET_ATTR_PROTOCOL = common dso_local global i64 0, align 8
@IPSET_ERR_PROTOCOL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPSET_CMD_PROTOCOL = common dso_local global i32 0, align 4
@IPSET_PROTOCOL = common dso_local global i32 0, align 4
@IPSET_ATTR_PROTOCOL_MIN = common dso_local global i64 0, align 8
@IPSET_PROTOCOL_MIN = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @ip_set_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_set_protocol(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.nlmsghdr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_2__, align 4
  %18 = alloca %struct.TYPE_2__, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  store i32 0, i32* %16, align 4
  %19 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %20 = load i64, i64* @IPSET_ATTR_PROTOCOL, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = icmp ne %struct.nlattr* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load i32, i32* @IPSET_ERR_PROTOCOL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %96

31:                                               ; preds = %6
  %32 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.sk_buff* @nlmsg_new(i32 %32, i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %14, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %96

40:                                               ; preds = %31
  %41 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %43 = call i32 @NETLINK_CB(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %48 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IPSET_CMD_PROTOCOL, align 4
  %51 = call %struct.nlmsghdr* @start_msg(%struct.sk_buff* %41, i32 %46, i32 %49, i32 0, i32 %50)
  store %struct.nlmsghdr* %51, %struct.nlmsghdr** %15, align 8
  %52 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %53 = icmp ne %struct.nlmsghdr* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %40
  br label %91

55:                                               ; preds = %40
  %56 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %57 = load i64, i64* @IPSET_ATTR_PROTOCOL, align 8
  %58 = load i32, i32* @IPSET_PROTOCOL, align 4
  %59 = call i64 @nla_put_u8(%struct.sk_buff* %56, i64 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %87

62:                                               ; preds = %55
  %63 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %64 = load i64, i64* @IPSET_ATTR_PROTOCOL_MIN, align 8
  %65 = load i32, i32* @IPSET_PROTOCOL_MIN, align 4
  %66 = call i64 @nla_put_u8(%struct.sk_buff* %63, i64 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %87

69:                                               ; preds = %62
  %70 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %71 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %72 = call i32 @nlmsg_end(%struct.sk_buff* %70, %struct.nlmsghdr* %71)
  %73 = load %struct.sock*, %struct.sock** %9, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %76 = call i32 @NETLINK_CB(%struct.sk_buff* %75)
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @MSG_DONTWAIT, align 4
  %81 = call i32 @netlink_unicast(%struct.sock* %73, %struct.sk_buff* %74, i32 %79, i32 %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %69
  %85 = load i32, i32* %16, align 4
  store i32 %85, i32* %7, align 4
  br label %96

86:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %96

87:                                               ; preds = %68, %61
  %88 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %89 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %90 = call i32 @nlmsg_cancel(%struct.sk_buff* %88, %struct.nlmsghdr* %89)
  br label %91

91:                                               ; preds = %87, %54
  %92 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %93 = call i32 @kfree_skb(%struct.sk_buff* %92)
  %94 = load i32, i32* @EMSGSIZE, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %91, %86, %84, %37, %28
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.nlmsghdr* @start_msg(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @netlink_unicast(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
