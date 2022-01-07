; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_get_conntrack.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_get_conntrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.nf_conntrack_zone = type { i32 }
%struct.netlink_dump_control = type { i8*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NLM_F_DUMP = common dso_local global i32 0, align 4
@ctnetlink_done = common dso_local global i32 0, align 4
@ctnetlink_dump_table = common dso_local global i32 0, align 4
@ctnetlink_start = common dso_local global i32 0, align 4
@CTA_ZONE = common dso_local global i64 0, align 8
@CTA_TUPLE_ORIG = common dso_local global i64 0, align 8
@CTA_TUPLE_REPLY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @ctnetlink_get_conntrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_get_conntrack(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %15 = alloca %struct.nf_conntrack_tuple, align 4
  %16 = alloca %struct.nf_conn*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca %struct.nfgenmsg*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.nf_conntrack_zone, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.netlink_dump_control, align 8
  %23 = alloca %struct.TYPE_2__, align 4
  %24 = alloca %struct.TYPE_2__, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %17, align 8
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %26 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %25)
  store %struct.nfgenmsg* %26, %struct.nfgenmsg** %18, align 8
  %27 = load %struct.nfgenmsg*, %struct.nfgenmsg** %18, align 8
  %28 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %19, align 4
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %31 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NLM_F_DUMP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %6
  %37 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %22, i32 0, i32 0
  %38 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %39 = bitcast %struct.nlattr** %38 to i8*
  store i8* %39, i8** %37, align 8
  %40 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %22, i32 0, i32 1
  %41 = load i32, i32* @ctnetlink_done, align 4
  store i32 %41, i32* %40, align 8
  %42 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %22, i32 0, i32 2
  %43 = load i32, i32* @ctnetlink_dump_table, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %22, i32 0, i32 3
  %45 = load i32, i32* @ctnetlink_start, align 4
  store i32 %45, i32* %44, align 8
  %46 = load %struct.sock*, %struct.sock** %9, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %48 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %49 = call i32 @netlink_dump_start(%struct.sock* %46, %struct.sk_buff* %47, %struct.nlmsghdr* %48, %struct.netlink_dump_control* %22)
  store i32 %49, i32* %7, align 4
  br label %166

50:                                               ; preds = %6
  %51 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %52 = load i64, i64* @CTA_ZONE, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %51, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = call i32 @ctnetlink_parse_zone(%struct.nlattr* %54, %struct.nf_conntrack_zone* %20)
  store i32 %55, i32* %21, align 4
  %56 = load i32, i32* %21, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %21, align 4
  store i32 %59, i32* %7, align 4
  br label %166

60:                                               ; preds = %50
  %61 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %62 = load i64, i64* @CTA_TUPLE_ORIG, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %61, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = icmp ne %struct.nlattr* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %68 = load i64, i64* @CTA_TUPLE_ORIG, align 8
  %69 = load i32, i32* %19, align 4
  %70 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %67, %struct.nf_conntrack_tuple* %15, i64 %68, i32 %69, %struct.nf_conntrack_zone* %20)
  store i32 %70, i32* %21, align 4
  br label %86

71:                                               ; preds = %60
  %72 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %73 = load i64, i64* @CTA_TUPLE_REPLY, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %72, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = icmp ne %struct.nlattr* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %79 = load i64, i64* @CTA_TUPLE_REPLY, align 8
  %80 = load i32, i32* %19, align 4
  %81 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %78, %struct.nf_conntrack_tuple* %15, i64 %79, i32 %80, %struct.nf_conntrack_zone* %20)
  store i32 %81, i32* %21, align 4
  br label %85

82:                                               ; preds = %71
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  br label %166

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %66
  %87 = load i32, i32* %21, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* %21, align 4
  store i32 %90, i32* %7, align 4
  br label %166

91:                                               ; preds = %86
  %92 = load %struct.net*, %struct.net** %8, align 8
  %93 = call %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net* %92, %struct.nf_conntrack_zone* %20, %struct.nf_conntrack_tuple* %15)
  store %struct.nf_conntrack_tuple_hash* %93, %struct.nf_conntrack_tuple_hash** %14, align 8
  %94 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %14, align 8
  %95 = icmp ne %struct.nf_conntrack_tuple_hash* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @ENOENT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %7, align 4
  br label %166

99:                                               ; preds = %91
  %100 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %14, align 8
  %101 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %100)
  store %struct.nf_conn* %101, %struct.nf_conn** %16, align 8
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %21, align 4
  %104 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %105 = load i32, i32* @GFP_KERNEL, align 4
  %106 = call %struct.sk_buff* @nlmsg_new(i32 %104, i32 %105)
  store %struct.sk_buff* %106, %struct.sk_buff** %17, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %108 = icmp eq %struct.sk_buff* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %99
  %110 = load %struct.nf_conn*, %struct.nf_conn** %16, align 8
  %111 = call i32 @nf_ct_put(%struct.nf_conn* %110)
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %7, align 4
  br label %166

114:                                              ; preds = %99
  %115 = call i32 (...) @rcu_read_lock()
  %116 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %118 = call i32 @NETLINK_CB(%struct.sk_buff* %117)
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %123 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %126 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @NFNL_MSG_TYPE(i32 %127)
  %129 = load %struct.nf_conn*, %struct.nf_conn** %16, align 8
  %130 = call i32 @ctnetlink_fill_info(%struct.sk_buff* %116, i32 %121, i32 %124, i32 %128, %struct.nf_conn* %129)
  store i32 %130, i32* %21, align 4
  %131 = call i32 (...) @rcu_read_unlock()
  %132 = load %struct.nf_conn*, %struct.nf_conn** %16, align 8
  %133 = call i32 @nf_ct_put(%struct.nf_conn* %132)
  %134 = load i32, i32* %21, align 4
  %135 = icmp sle i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %114
  br label %151

137:                                              ; preds = %114
  %138 = load %struct.sock*, %struct.sock** %9, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %141 = call i32 @NETLINK_CB(%struct.sk_buff* %140)
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %141, i32* %142, align 4
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @MSG_DONTWAIT, align 4
  %146 = call i32 @netlink_unicast(%struct.sock* %138, %struct.sk_buff* %139, i32 %144, i32 %145)
  store i32 %146, i32* %21, align 4
  %147 = load i32, i32* %21, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %137
  br label %154

150:                                              ; preds = %137
  store i32 0, i32* %7, align 4
  br label %166

151:                                              ; preds = %136
  %152 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %153 = call i32 @kfree_skb(%struct.sk_buff* %152)
  br label %154

154:                                              ; preds = %151, %149
  %155 = load i32, i32* %21, align 4
  %156 = load i32, i32* @EAGAIN, align 4
  %157 = sub nsw i32 0, %156
  %158 = icmp eq i32 %155, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i32, i32* @ENOBUFS, align 4
  %161 = sub nsw i32 0, %160
  br label %164

162:                                              ; preds = %154
  %163 = load i32, i32* %21, align 4
  br label %164

164:                                              ; preds = %162, %159
  %165 = phi i32 [ %161, %159 ], [ %163, %162 ]
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %164, %150, %109, %96, %89, %82, %58, %36
  %167 = load i32, i32* %7, align 4
  ret i32 %167
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @netlink_dump_start(%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_dump_control*) #1

declare dso_local i32 @ctnetlink_parse_zone(%struct.nlattr*, %struct.nf_conntrack_zone*) #1

declare dso_local i32 @ctnetlink_parse_tuple(%struct.nlattr**, %struct.nf_conntrack_tuple*, i64, i32, %struct.nf_conntrack_zone*) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net*, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ctnetlink_fill_info(%struct.sk_buff*, i32, i32, i32, %struct.nf_conn*) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @NFNL_MSG_TYPE(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @netlink_unicast(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
