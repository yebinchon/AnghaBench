; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cttimeout.c_cttimeout_default_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cttimeout.c_cttimeout_default_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nf_conntrack_l4proto = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@CTA_TIMEOUT_L3PROTO = common dso_local global i64 0, align 8
@CTA_TIMEOUT_L4PROTO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Missing timeouts for proto %d\00", align 1
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPCTNL_MSG_TIMEOUT_DEFAULT_SET = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @cttimeout_default_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cttimeout_default_get(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.nf_conntrack_l4proto*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_18__, align 4
  %22 = alloca %struct.TYPE_18__, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  store i32* null, i32** %15, align 8
  %23 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %24 = load i64, i64* @CTA_TIMEOUT_L3PROTO, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %6
  %29 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %30 = load i64, i64* @CTA_TIMEOUT_L4PROTO, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = icmp ne %struct.nlattr* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28, %6
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %160

37:                                               ; preds = %28
  %38 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %39 = load i64, i64* @CTA_TIMEOUT_L3PROTO, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = call i32 @nla_get_be16(%struct.nlattr* %41)
  %43 = call i32 @ntohs(i32 %42)
  store i32 %43, i32* %19, align 4
  %44 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %45 = load i64, i64* @CTA_TIMEOUT_L4PROTO, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = call i32 @nla_get_u8(%struct.nlattr* %47)
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %20, align 4
  %50 = call %struct.nf_conntrack_l4proto* @nf_ct_l4proto_find(i32 %49)
  store %struct.nf_conntrack_l4proto* %50, %struct.nf_conntrack_l4proto** %14, align 8
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %18, align 4
  %53 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %14, align 8
  %54 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %20, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %37
  br label %158

59:                                               ; preds = %37
  %60 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %14, align 8
  %61 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %88 [
    i32 133, label %63
    i32 130, label %67
    i32 129, label %72
    i32 128, label %72
    i32 135, label %77
    i32 132, label %78
    i32 131, label %82
    i32 134, label %83
    i32 255, label %84
  ]

63:                                               ; preds = %59
  %64 = load %struct.net*, %struct.net** %8, align 8
  %65 = call %struct.TYPE_14__* @nf_icmp_pernet(%struct.net* %64)
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  store i32* %66, i32** %15, align 8
  br label %93

67:                                               ; preds = %59
  %68 = load %struct.net*, %struct.net** %8, align 8
  %69 = call %struct.TYPE_11__* @nf_tcp_pernet(%struct.net* %68)
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %15, align 8
  br label %93

72:                                               ; preds = %59, %59
  %73 = load %struct.net*, %struct.net** %8, align 8
  %74 = call %struct.TYPE_10__* @nf_udp_pernet(%struct.net* %73)
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %15, align 8
  br label %93

77:                                               ; preds = %59
  br label %93

78:                                               ; preds = %59
  %79 = load %struct.net*, %struct.net** %8, align 8
  %80 = call %struct.TYPE_13__* @nf_icmpv6_pernet(%struct.net* %79)
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  store i32* %81, i32** %15, align 8
  br label %93

82:                                               ; preds = %59
  br label %93

83:                                               ; preds = %59
  br label %93

84:                                               ; preds = %59
  %85 = load %struct.net*, %struct.net** %8, align 8
  %86 = call %struct.TYPE_16__* @nf_generic_pernet(%struct.net* %85)
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  store i32* %87, i32** %15, align 8
  br label %93

88:                                               ; preds = %59
  %89 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %14, align 8
  %90 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %88, %84, %83, %82, %78, %77, %72, %67, %63
  %94 = load i32*, i32** %15, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  br label %158

97:                                               ; preds = %93
  %98 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call %struct.sk_buff* @nlmsg_new(i32 %98, i32 %99)
  store %struct.sk_buff* %100, %struct.sk_buff** %16, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %102 = icmp eq %struct.sk_buff* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %18, align 4
  br label %158

106:                                              ; preds = %97
  %107 = load %struct.net*, %struct.net** %8, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %110 = call i32 @NETLINK_CB(%struct.sk_buff* %109)
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  store i32 %110, i32* %111, align 4
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %115 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %118 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @NFNL_MSG_TYPE(i32 %119)
  %121 = load i32, i32* @IPCTNL_MSG_TIMEOUT_DEFAULT_SET, align 4
  %122 = load i32, i32* %19, align 4
  %123 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %14, align 8
  %124 = load i32*, i32** %15, align 8
  %125 = call i32 @cttimeout_default_fill_info(%struct.net* %107, %struct.sk_buff* %108, i32 %113, i32 %116, i32 %120, i32 %121, i32 %122, %struct.nf_conntrack_l4proto* %123, i32* %124)
  store i32 %125, i32* %17, align 4
  %126 = load i32, i32* %17, align 4
  %127 = icmp sle i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %106
  %129 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %130 = call i32 @kfree_skb(%struct.sk_buff* %129)
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %18, align 4
  br label %158

133:                                              ; preds = %106
  %134 = load %struct.sock*, %struct.sock** %9, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %137 = call i32 @NETLINK_CB(%struct.sk_buff* %136)
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  store i32 %137, i32* %138, align 4
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @MSG_DONTWAIT, align 4
  %142 = call i32 @netlink_unicast(%struct.sock* %134, %struct.sk_buff* %135, i32 %140, i32 %141)
  store i32 %142, i32* %17, align 4
  %143 = load i32, i32* %17, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  store i32 0, i32* %17, align 4
  br label %146

146:                                              ; preds = %145, %133
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* @EAGAIN, align 4
  %149 = sub nsw i32 0, %148
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i32, i32* @ENOBUFS, align 4
  %153 = sub nsw i32 0, %152
  br label %156

154:                                              ; preds = %146
  %155 = load i32, i32* %17, align 4
  br label %156

156:                                              ; preds = %154, %151
  %157 = phi i32 [ %153, %151 ], [ %155, %154 ]
  store i32 %157, i32* %7, align 4
  br label %160

158:                                              ; preds = %128, %103, %96, %58
  %159 = load i32, i32* %18, align 4
  store i32 %159, i32* %7, align 4
  br label %160

160:                                              ; preds = %158, %156, %34
  %161 = load i32, i32* %7, align 4
  ret i32 %161
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local %struct.nf_conntrack_l4proto* @nf_ct_l4proto_find(i32) #1

declare dso_local %struct.TYPE_14__* @nf_icmp_pernet(%struct.net*) #1

declare dso_local %struct.TYPE_11__* @nf_tcp_pernet(%struct.net*) #1

declare dso_local %struct.TYPE_10__* @nf_udp_pernet(%struct.net*) #1

declare dso_local %struct.TYPE_13__* @nf_icmpv6_pernet(%struct.net*) #1

declare dso_local %struct.TYPE_16__* @nf_generic_pernet(%struct.net*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @cttimeout_default_fill_info(%struct.net*, %struct.sk_buff*, i32, i32, i32, i32, i32, %struct.nf_conntrack_l4proto*, i32*) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @NFNL_MSG_TYPE(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netlink_unicast(%struct.sock*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
