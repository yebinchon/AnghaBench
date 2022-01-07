; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_byindex.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_byindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ip_set_net = type { i64 }
%struct.ip_set = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@IPSET_ATTR_INDEX = common dso_local global i64 0, align 8
@IPSET_ERR_PROTOCOL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPSET_CMD_GET_BYINDEX = common dso_local global i32 0, align 4
@IPSET_ATTR_PROTOCOL = common dso_local global i32 0, align 4
@IPSET_ATTR_SETNAME = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @ip_set_byindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_set_byindex(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
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
  %30 = load i64, i64* @IPSET_ATTR_INDEX, align 8
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
  br label %133

43:                                               ; preds = %35
  %44 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %45 = load i64, i64* @IPSET_ATTR_INDEX, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = call i64 @ip_set_get_h16(%struct.nlattr* %47)
  store i64 %48, i64* %17, align 8
  %49 = load i64, i64* %17, align 8
  %50 = load %struct.ip_set_net*, %struct.ip_set_net** %14, align 8
  %51 = getelementptr inbounds %struct.ip_set_net, %struct.ip_set_net* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %133

57:                                               ; preds = %43
  %58 = load %struct.ip_set_net*, %struct.ip_set_net** %14, align 8
  %59 = load i64, i64* %17, align 8
  %60 = call %struct.ip_set* @ip_set(%struct.ip_set_net* %58, i64 %59)
  store %struct.ip_set* %60, %struct.ip_set** %18, align 8
  %61 = load %struct.ip_set*, %struct.ip_set** %18, align 8
  %62 = icmp eq %struct.ip_set* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %133

66:                                               ; preds = %57
  %67 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.sk_buff* @nlmsg_new(i32 %67, i32 %68)
  store %struct.sk_buff* %69, %struct.sk_buff** %15, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %71 = icmp ne %struct.sk_buff* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %7, align 4
  br label %133

75:                                               ; preds = %66
  %76 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %78 = call i32 @NETLINK_CB(%struct.sk_buff* %77)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %83 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @IPSET_CMD_GET_BYINDEX, align 4
  %86 = call %struct.nlmsghdr* @start_msg(%struct.sk_buff* %76, i32 %81, i32 %84, i32 0, i32 %85)
  store %struct.nlmsghdr* %86, %struct.nlmsghdr** %16, align 8
  %87 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %88 = icmp ne %struct.nlmsghdr* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %75
  br label %128

90:                                               ; preds = %75
  %91 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %92 = load i32, i32* @IPSET_ATTR_PROTOCOL, align 4
  %93 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %94 = call i32 @protocol(%struct.nlattr** %93)
  %95 = call i64 @nla_put_u8(%struct.sk_buff* %91, i32 %92, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %90
  %98 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %99 = load i32, i32* @IPSET_ATTR_SETNAME, align 4
  %100 = load %struct.ip_set*, %struct.ip_set** %18, align 8
  %101 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @nla_put_string(%struct.sk_buff* %98, i32 %99, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97, %90
  br label %124

106:                                              ; preds = %97
  %107 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %108 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %109 = call i32 @nlmsg_end(%struct.sk_buff* %107, %struct.nlmsghdr* %108)
  %110 = load %struct.sock*, %struct.sock** %9, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %113 = call i32 @NETLINK_CB(%struct.sk_buff* %112)
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @MSG_DONTWAIT, align 4
  %118 = call i32 @netlink_unicast(%struct.sock* %110, %struct.sk_buff* %111, i32 %116, i32 %117)
  store i32 %118, i32* %19, align 4
  %119 = load i32, i32* %19, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %106
  %122 = load i32, i32* %19, align 4
  store i32 %122, i32* %7, align 4
  br label %133

123:                                              ; preds = %106
  store i32 0, i32* %7, align 4
  br label %133

124:                                              ; preds = %105
  %125 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %126 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %127 = call i32 @nlmsg_cancel(%struct.sk_buff* %125, %struct.nlmsghdr* %126)
  br label %128

128:                                              ; preds = %124, %89
  %129 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %130 = call i32 @kfree_skb(%struct.sk_buff* %129)
  %131 = load i32, i32* @EMSGSIZE, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %128, %123, %121, %72, %63, %54, %40
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local %struct.ip_set_net* @ip_set_pernet(%struct.net*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @protocol_failed(%struct.nlattr**) #1

declare dso_local i64 @ip_set_get_h16(%struct.nlattr*) #1

declare dso_local %struct.ip_set* @ip_set(%struct.ip_set_net*, i64) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.nlmsghdr* @start_msg(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @protocol(%struct.nlattr**) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

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
