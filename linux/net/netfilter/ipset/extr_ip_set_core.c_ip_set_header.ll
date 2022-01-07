; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ip_set_net = type { i32 }
%struct.ip_set = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IPSET_ATTR_SETNAME = common dso_local global i64 0, align 8
@IPSET_ERR_PROTOCOL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPSET_CMD_HEADER = common dso_local global i32 0, align 4
@IPSET_ATTR_PROTOCOL = common dso_local global i32 0, align 4
@IPSET_ATTR_TYPENAME = common dso_local global i64 0, align 8
@IPSET_ATTR_FAMILY = common dso_local global i32 0, align 4
@IPSET_ATTR_REVISION = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @ip_set_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_set_header(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.ip_set_net*, align 8
  %15 = alloca %struct.ip_set*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca %struct.nlmsghdr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_4__, align 4
  %20 = alloca %struct.TYPE_4__, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %21 = load %struct.net*, %struct.net** %8, align 8
  %22 = call %struct.ip_set_net* @ip_set_pernet(%struct.net* %21)
  store %struct.ip_set_net* %22, %struct.ip_set_net** %14, align 8
  store i32 0, i32* %18, align 4
  %23 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %24 = call i64 @protocol_min_failed(%struct.nlattr** %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %6
  %27 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %28 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %26, %6
  %34 = phi i1 [ true, %6 ], [ %32, %26 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @IPSET_ERR_PROTOCOL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %147

41:                                               ; preds = %33
  %42 = load %struct.ip_set_net*, %struct.ip_set_net** %14, align 8
  %43 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %44 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = call i32 @nla_data(%struct.nlattr* %46)
  %48 = call %struct.ip_set* @find_set(%struct.ip_set_net* %42, i32 %47)
  store %struct.ip_set* %48, %struct.ip_set** %15, align 8
  %49 = load %struct.ip_set*, %struct.ip_set** %15, align 8
  %50 = icmp ne %struct.ip_set* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %41
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %147

54:                                               ; preds = %41
  %55 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.sk_buff* @nlmsg_new(i32 %55, i32 %56)
  store %struct.sk_buff* %57, %struct.sk_buff** %16, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %59 = icmp ne %struct.sk_buff* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %147

63:                                               ; preds = %54
  %64 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %66 = call i32 @NETLINK_CB(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %71 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IPSET_CMD_HEADER, align 4
  %74 = call %struct.nlmsghdr* @start_msg(%struct.sk_buff* %64, i32 %69, i32 %72, i32 0, i32 %73)
  store %struct.nlmsghdr* %74, %struct.nlmsghdr** %17, align 8
  %75 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %76 = icmp ne %struct.nlmsghdr* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %63
  br label %142

78:                                               ; preds = %63
  %79 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %80 = load i32, i32* @IPSET_ATTR_PROTOCOL, align 4
  %81 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %82 = call i32 @protocol(%struct.nlattr** %81)
  %83 = call i64 @nla_put_u8(%struct.sk_buff* %79, i32 %80, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %119, label %85

85:                                               ; preds = %78
  %86 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %87 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %88 = load %struct.ip_set*, %struct.ip_set** %15, align 8
  %89 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @nla_put_string(%struct.sk_buff* %86, i64 %87, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %119, label %93

93:                                               ; preds = %85
  %94 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %95 = load i64, i64* @IPSET_ATTR_TYPENAME, align 8
  %96 = load %struct.ip_set*, %struct.ip_set** %15, align 8
  %97 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %96, i32 0, i32 2
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @nla_put_string(%struct.sk_buff* %94, i64 %95, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %119, label %103

103:                                              ; preds = %93
  %104 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %105 = load i32, i32* @IPSET_ATTR_FAMILY, align 4
  %106 = load %struct.ip_set*, %struct.ip_set** %15, align 8
  %107 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @nla_put_u8(%struct.sk_buff* %104, i32 %105, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %103
  %112 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %113 = load i32, i32* @IPSET_ATTR_REVISION, align 4
  %114 = load %struct.ip_set*, %struct.ip_set** %15, align 8
  %115 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @nla_put_u8(%struct.sk_buff* %112, i32 %113, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111, %103, %93, %85, %78
  br label %138

120:                                              ; preds = %111
  %121 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %122 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %123 = call i32 @nlmsg_end(%struct.sk_buff* %121, %struct.nlmsghdr* %122)
  %124 = load %struct.sock*, %struct.sock** %9, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %127 = call i32 @NETLINK_CB(%struct.sk_buff* %126)
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %127, i32* %128, align 4
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @MSG_DONTWAIT, align 4
  %132 = call i32 @netlink_unicast(%struct.sock* %124, %struct.sk_buff* %125, i32 %130, i32 %131)
  store i32 %132, i32* %18, align 4
  %133 = load i32, i32* %18, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %120
  %136 = load i32, i32* %18, align 4
  store i32 %136, i32* %7, align 4
  br label %147

137:                                              ; preds = %120
  store i32 0, i32* %7, align 4
  br label %147

138:                                              ; preds = %119
  %139 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %140 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %141 = call i32 @nlmsg_cancel(%struct.sk_buff* %139, %struct.nlmsghdr* %140)
  br label %142

142:                                              ; preds = %138, %77
  %143 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %144 = call i32 @kfree_skb(%struct.sk_buff* %143)
  %145 = load i32, i32* @EMSGSIZE, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %142, %137, %135, %60, %51, %38
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local %struct.ip_set_net* @ip_set_pernet(%struct.net*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @protocol_min_failed(%struct.nlattr**) #1

declare dso_local %struct.ip_set* @find_set(%struct.ip_set_net*, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.nlmsghdr* @start_msg(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @protocol(%struct.nlattr**) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i64, i32) #1

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
