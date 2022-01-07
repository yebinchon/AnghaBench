; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IPSET_ATTR_TYPENAME = common dso_local global i64 0, align 8
@IPSET_ATTR_FAMILY = common dso_local global i64 0, align 8
@IPSET_ERR_PROTOCOL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPSET_CMD_TYPE = common dso_local global i32 0, align 4
@IPSET_ATTR_PROTOCOL = common dso_local global i64 0, align 8
@IPSET_ATTR_REVISION = common dso_local global i64 0, align 8
@IPSET_ATTR_REVISION_MIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Send TYPE, nlmsg_len: %u\0A\00", align 1
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @ip_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_set_type(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_2__, align 4
  %22 = alloca %struct.TYPE_2__, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  store i32 0, i32* %20, align 4
  %23 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %24 = call i64 @protocol_min_failed(%struct.nlattr** %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %6
  %27 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %28 = load i64, i64* @IPSET_ATTR_TYPENAME, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %34 = load i64, i64* @IPSET_ATTR_FAMILY, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %32, %26, %6
  %40 = phi i1 [ true, %26 ], [ true, %6 ], [ %38, %32 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @IPSET_ERR_PROTOCOL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %152

47:                                               ; preds = %39
  %48 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %49 = load i64, i64* @IPSET_ATTR_FAMILY, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = call i32 @nla_get_u8(%struct.nlattr* %51)
  store i32 %52, i32* %16, align 4
  %53 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %54 = load i64, i64* @IPSET_ATTR_TYPENAME, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = call i8* @nla_data(%struct.nlattr* %56)
  store i8* %57, i8** %19, align 8
  %58 = load i8*, i8** %19, align 8
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @find_set_type_minmax(i8* %58, i32 %59, i32* %17, i32* %18)
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %20, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %47
  %64 = load i32, i32* %20, align 4
  store i32 %64, i32* %7, align 4
  br label %152

65:                                               ; preds = %47
  %66 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.sk_buff* @nlmsg_new(i32 %66, i32 %67)
  store %struct.sk_buff* %68, %struct.sk_buff** %14, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %70 = icmp ne %struct.sk_buff* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %7, align 4
  br label %152

74:                                               ; preds = %65
  %75 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %77 = call i32 @NETLINK_CB(%struct.sk_buff* %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %82 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IPSET_CMD_TYPE, align 4
  %85 = call %struct.nlmsghdr* @start_msg(%struct.sk_buff* %75, i32 %80, i32 %83, i32 0, i32 %84)
  store %struct.nlmsghdr* %85, %struct.nlmsghdr** %15, align 8
  %86 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %87 = icmp ne %struct.nlmsghdr* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %74
  br label %147

89:                                               ; preds = %74
  %90 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %91 = load i64, i64* @IPSET_ATTR_PROTOCOL, align 8
  %92 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %93 = call i32 @protocol(%struct.nlattr** %92)
  %94 = call i64 @nla_put_u8(%struct.sk_buff* %90, i64 %91, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %120, label %96

96:                                               ; preds = %89
  %97 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %98 = load i64, i64* @IPSET_ATTR_TYPENAME, align 8
  %99 = load i8*, i8** %19, align 8
  %100 = call i64 @nla_put_string(%struct.sk_buff* %97, i64 %98, i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %120, label %102

102:                                              ; preds = %96
  %103 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %104 = load i64, i64* @IPSET_ATTR_FAMILY, align 8
  %105 = load i32, i32* %16, align 4
  %106 = call i64 @nla_put_u8(%struct.sk_buff* %103, i64 %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %102
  %109 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %110 = load i64, i64* @IPSET_ATTR_REVISION, align 8
  %111 = load i32, i32* %18, align 4
  %112 = call i64 @nla_put_u8(%struct.sk_buff* %109, i64 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %116 = load i64, i64* @IPSET_ATTR_REVISION_MIN, align 8
  %117 = load i32, i32* %17, align 4
  %118 = call i64 @nla_put_u8(%struct.sk_buff* %115, i64 %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114, %108, %102, %96, %89
  br label %143

121:                                              ; preds = %114
  %122 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %123 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %124 = call i32 @nlmsg_end(%struct.sk_buff* %122, %struct.nlmsghdr* %123)
  %125 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %126 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %127)
  %129 = load %struct.sock*, %struct.sock** %9, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %132 = call i32 @NETLINK_CB(%struct.sk_buff* %131)
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %132, i32* %133, align 4
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @MSG_DONTWAIT, align 4
  %137 = call i32 @netlink_unicast(%struct.sock* %129, %struct.sk_buff* %130, i32 %135, i32 %136)
  store i32 %137, i32* %20, align 4
  %138 = load i32, i32* %20, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %121
  %141 = load i32, i32* %20, align 4
  store i32 %141, i32* %7, align 4
  br label %152

142:                                              ; preds = %121
  store i32 0, i32* %7, align 4
  br label %152

143:                                              ; preds = %120
  %144 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %145 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %146 = call i32 @nlmsg_cancel(%struct.sk_buff* %144, %struct.nlmsghdr* %145)
  br label %147

147:                                              ; preds = %143, %88
  %148 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %149 = call i32 @kfree_skb(%struct.sk_buff* %148)
  %150 = load i32, i32* @EMSGSIZE, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %147, %142, %140, %71, %63, %44
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @protocol_min_failed(%struct.nlattr**) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @find_set_type_minmax(i8*, i32, i32*, i32*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.nlmsghdr* @start_msg(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @protocol(%struct.nlattr**) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i64, i8*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @netlink_unicast(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
