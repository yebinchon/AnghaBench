; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_byname.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_byname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ip_set_net = type { i32 }
%struct.ip_set = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@IPSET_ATTR_SETNAME = common dso_local global i64 0, align 8
@IPSET_ERR_PROTOCOL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPSET_CMD_GET_BYNAME = common dso_local global i32 0, align 4
@IPSET_ATTR_PROTOCOL = common dso_local global i32 0, align 4
@IPSET_ATTR_FAMILY = common dso_local global i32 0, align 4
@IPSET_ATTR_INDEX = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @ip_set_byname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_set_byname(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.ip_set_net*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.nlmsghdr*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.ip_set*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_2__, align 4
  %21 = alloca %struct.TYPE_2__, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %22 = load %struct.net*, %struct.net** %8, align 8
  %23 = call %struct.ip_set_net* @ip_set_pernet(%struct.net* %22)
  store %struct.ip_set_net* %23, %struct.ip_set_net** %14, align 8
  %24 = load i64, i64* @IPSET_INVALID_ID, align 8
  store i64 %24, i64* %17, align 8
  store i32 0, i32* %19, align 4
  %25 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %26 = call i64 @protocol_failed(%struct.nlattr** %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %6
  %29 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %30 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = icmp ne %struct.nlattr* %32, null
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %28, %6
  %36 = phi i1 [ true, %6 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @IPSET_ERR_PROTOCOL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %131

43:                                               ; preds = %35
  %44 = load %struct.ip_set_net*, %struct.ip_set_net** %14, align 8
  %45 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %46 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %45, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = call i32 @nla_data(%struct.nlattr* %48)
  %50 = call %struct.ip_set* @find_set_and_id(%struct.ip_set_net* %44, i32 %49, i64* %17)
  store %struct.ip_set* %50, %struct.ip_set** %18, align 8
  %51 = load i64, i64* %17, align 8
  %52 = load i64, i64* @IPSET_INVALID_ID, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %131

57:                                               ; preds = %43
  %58 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.sk_buff* @nlmsg_new(i32 %58, i32 %59)
  store %struct.sk_buff* %60, %struct.sk_buff** %15, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %62 = icmp ne %struct.sk_buff* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %131

66:                                               ; preds = %57
  %67 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %69 = call i32 @NETLINK_CB(%struct.sk_buff* %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %74 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IPSET_CMD_GET_BYNAME, align 4
  %77 = call %struct.nlmsghdr* @start_msg(%struct.sk_buff* %67, i32 %72, i32 %75, i32 0, i32 %76)
  store %struct.nlmsghdr* %77, %struct.nlmsghdr** %16, align 8
  %78 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %79 = icmp ne %struct.nlmsghdr* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %66
  br label %126

81:                                               ; preds = %66
  %82 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %83 = load i32, i32* @IPSET_ATTR_PROTOCOL, align 4
  %84 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %85 = call i32 @protocol(%struct.nlattr** %84)
  %86 = call i64 @nla_put_u8(%struct.sk_buff* %82, i32 %83, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %103, label %88

88:                                               ; preds = %81
  %89 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %90 = load i32, i32* @IPSET_ATTR_FAMILY, align 4
  %91 = load %struct.ip_set*, %struct.ip_set** %18, align 8
  %92 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @nla_put_u8(%struct.sk_buff* %89, i32 %90, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %88
  %97 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %98 = load i32, i32* @IPSET_ATTR_INDEX, align 4
  %99 = load i64, i64* %17, align 8
  %100 = call i32 @htons(i64 %99)
  %101 = call i64 @nla_put_net16(%struct.sk_buff* %97, i32 %98, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96, %88, %81
  br label %122

104:                                              ; preds = %96
  %105 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %106 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %107 = call i32 @nlmsg_end(%struct.sk_buff* %105, %struct.nlmsghdr* %106)
  %108 = load %struct.sock*, %struct.sock** %9, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %111 = call i32 @NETLINK_CB(%struct.sk_buff* %110)
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %111, i32* %112, align 4
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @MSG_DONTWAIT, align 4
  %116 = call i32 @netlink_unicast(%struct.sock* %108, %struct.sk_buff* %109, i32 %114, i32 %115)
  store i32 %116, i32* %19, align 4
  %117 = load i32, i32* %19, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %104
  %120 = load i32, i32* %19, align 4
  store i32 %120, i32* %7, align 4
  br label %131

121:                                              ; preds = %104
  store i32 0, i32* %7, align 4
  br label %131

122:                                              ; preds = %103
  %123 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %124 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %125 = call i32 @nlmsg_cancel(%struct.sk_buff* %123, %struct.nlmsghdr* %124)
  br label %126

126:                                              ; preds = %122, %80
  %127 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %128 = call i32 @kfree_skb(%struct.sk_buff* %127)
  %129 = load i32, i32* @EMSGSIZE, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %126, %121, %119, %63, %54, %40
  %132 = load i32, i32* %7, align 4
  ret i32 %132
}

declare dso_local %struct.ip_set_net* @ip_set_pernet(%struct.net*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @protocol_failed(%struct.nlattr**) #1

declare dso_local %struct.ip_set* @find_set_and_id(%struct.ip_set_net*, i32, i64*) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.nlmsghdr* @start_msg(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @protocol(%struct.nlattr**) #1

declare dso_local i64 @nla_put_net16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i64) #1

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
