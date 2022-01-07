; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_get_expect.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_get_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conntrack_expect = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.nf_conntrack_zone = type { i32 }
%struct.netlink_dump_control = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NLM_F_DUMP = common dso_local global i32 0, align 4
@CTA_EXPECT_MASTER = common dso_local global i64 0, align 8
@ctnetlink_exp_done = common dso_local global i32 0, align 4
@ctnetlink_exp_dump_table = common dso_local global i32 0, align 4
@CTA_EXPECT_ZONE = common dso_local global i64 0, align 8
@CTA_EXPECT_TUPLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CTA_EXPECT_ID = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IPCTNL_MSG_EXP_NEW = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @ctnetlink_get_expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_get_expect(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.nf_conntrack_tuple, align 4
  %15 = alloca %struct.nf_conntrack_expect*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca %struct.nfgenmsg*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.nf_conntrack_zone, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.netlink_dump_control, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_2__, align 4
  %24 = alloca %struct.TYPE_2__, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %26 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %25)
  store %struct.nfgenmsg* %26, %struct.nfgenmsg** %17, align 8
  %27 = load %struct.nfgenmsg*, %struct.nfgenmsg** %17, align 8
  %28 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %18, align 4
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %31 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NLM_F_DUMP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %6
  %37 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %38 = load i64, i64* @CTA_EXPECT_MASTER, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.net*, %struct.net** %8, align 8
  %44 = load %struct.sock*, %struct.sock** %9, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %46 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %47 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %48 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %49 = call i32 @ctnetlink_dump_exp_ct(%struct.net* %43, %struct.sock* %44, %struct.sk_buff* %45, %struct.nlmsghdr* %46, %struct.nlattr** %47, %struct.netlink_ext_ack* %48)
  store i32 %49, i32* %7, align 4
  br label %190

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %21, i32 0, i32 0
  %52 = load i32, i32* @ctnetlink_exp_done, align 4
  store i32 %52, i32* %51, align 4
  %53 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %21, i32 0, i32 1
  %54 = load i32, i32* @ctnetlink_exp_dump_table, align 4
  store i32 %54, i32* %53, align 4
  %55 = load %struct.sock*, %struct.sock** %9, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %58 = call i32 @netlink_dump_start(%struct.sock* %55, %struct.sk_buff* %56, %struct.nlmsghdr* %57, %struct.netlink_dump_control* %21)
  store i32 %58, i32* %7, align 4
  br label %190

59:                                               ; preds = %6
  %60 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %61 = load i64, i64* @CTA_EXPECT_ZONE, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %60, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = call i32 @ctnetlink_parse_zone(%struct.nlattr* %63, %struct.nf_conntrack_zone* %19)
  store i32 %64, i32* %20, align 4
  %65 = load i32, i32* %20, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %20, align 4
  store i32 %68, i32* %7, align 4
  br label %190

69:                                               ; preds = %59
  %70 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %71 = load i64, i64* @CTA_EXPECT_TUPLE, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %70, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = icmp ne %struct.nlattr* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %77 = load i64, i64* @CTA_EXPECT_TUPLE, align 8
  %78 = load i32, i32* %18, align 4
  %79 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %76, %struct.nf_conntrack_tuple* %14, i64 %77, i32 %78, i32* null)
  store i32 %79, i32* %20, align 4
  br label %95

80:                                               ; preds = %69
  %81 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %82 = load i64, i64* @CTA_EXPECT_MASTER, align 8
  %83 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %81, i64 %82
  %84 = load %struct.nlattr*, %struct.nlattr** %83, align 8
  %85 = icmp ne %struct.nlattr* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %88 = load i64, i64* @CTA_EXPECT_MASTER, align 8
  %89 = load i32, i32* %18, align 4
  %90 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %87, %struct.nf_conntrack_tuple* %14, i64 %88, i32 %89, i32* null)
  store i32 %90, i32* %20, align 4
  br label %94

91:                                               ; preds = %80
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %7, align 4
  br label %190

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %75
  %96 = load i32, i32* %20, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* %20, align 4
  store i32 %99, i32* %7, align 4
  br label %190

100:                                              ; preds = %95
  %101 = load %struct.net*, %struct.net** %8, align 8
  %102 = call %struct.nf_conntrack_expect* @nf_ct_expect_find_get(%struct.net* %101, %struct.nf_conntrack_zone* %19, %struct.nf_conntrack_tuple* %14)
  store %struct.nf_conntrack_expect* %102, %struct.nf_conntrack_expect** %15, align 8
  %103 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %104 = icmp ne %struct.nf_conntrack_expect* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* @ENOENT, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  br label %190

108:                                              ; preds = %100
  %109 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %110 = load i64, i64* @CTA_EXPECT_ID, align 8
  %111 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %109, i64 %110
  %112 = load %struct.nlattr*, %struct.nlattr** %111, align 8
  %113 = icmp ne %struct.nlattr* %112, null
  br i1 %113, label %114, label %130

114:                                              ; preds = %108
  %115 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %116 = load i64, i64* @CTA_EXPECT_ID, align 8
  %117 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %115, i64 %116
  %118 = load %struct.nlattr*, %struct.nlattr** %117, align 8
  %119 = call i64 @nla_get_be32(%struct.nlattr* %118)
  store i64 %119, i64* %22, align 8
  %120 = load i64, i64* %22, align 8
  %121 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %122 = call i64 @nf_expect_get_id(%struct.nf_conntrack_expect* %121)
  %123 = icmp ne i64 %120, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %114
  %125 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %126 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %125)
  %127 = load i32, i32* @ENOENT, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %7, align 4
  br label %190

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129, %108
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %20, align 4
  %133 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %134 = load i32, i32* @GFP_KERNEL, align 4
  %135 = call %struct.sk_buff* @nlmsg_new(i32 %133, i32 %134)
  store %struct.sk_buff* %135, %struct.sk_buff** %16, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %137 = icmp eq %struct.sk_buff* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %130
  %139 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %140 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %139)
  br label %178

141:                                              ; preds = %130
  %142 = call i32 (...) @rcu_read_lock()
  %143 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %145 = call i32 @NETLINK_CB(%struct.sk_buff* %144)
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %145, i32* %146, align 4
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %150 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @IPCTNL_MSG_EXP_NEW, align 4
  %153 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %154 = call i32 @ctnetlink_exp_fill_info(%struct.sk_buff* %143, i32 %148, i32 %151, i32 %152, %struct.nf_conntrack_expect* %153)
  store i32 %154, i32* %20, align 4
  %155 = call i32 (...) @rcu_read_unlock()
  %156 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %157 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %156)
  %158 = load i32, i32* %20, align 4
  %159 = icmp sle i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %141
  br label %175

161:                                              ; preds = %141
  %162 = load %struct.sock*, %struct.sock** %9, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %165 = call i32 @NETLINK_CB(%struct.sk_buff* %164)
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %165, i32* %166, align 4
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @MSG_DONTWAIT, align 4
  %170 = call i32 @netlink_unicast(%struct.sock* %162, %struct.sk_buff* %163, i32 %168, i32 %169)
  store i32 %170, i32* %20, align 4
  %171 = load i32, i32* %20, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %161
  br label %178

174:                                              ; preds = %161
  store i32 0, i32* %7, align 4
  br label %190

175:                                              ; preds = %160
  %176 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %177 = call i32 @kfree_skb(%struct.sk_buff* %176)
  br label %178

178:                                              ; preds = %175, %173, %138
  %179 = load i32, i32* %20, align 4
  %180 = load i32, i32* @EAGAIN, align 4
  %181 = sub nsw i32 0, %180
  %182 = icmp eq i32 %179, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load i32, i32* @ENOBUFS, align 4
  %185 = sub nsw i32 0, %184
  br label %188

186:                                              ; preds = %178
  %187 = load i32, i32* %20, align 4
  br label %188

188:                                              ; preds = %186, %183
  %189 = phi i32 [ %185, %183 ], [ %187, %186 ]
  store i32 %189, i32* %7, align 4
  br label %190

190:                                              ; preds = %188, %174, %124, %105, %98, %91, %67, %50, %42
  %191 = load i32, i32* %7, align 4
  ret i32 %191
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @ctnetlink_dump_exp_ct(%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @netlink_dump_start(%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_dump_control*) #1

declare dso_local i32 @ctnetlink_parse_zone(%struct.nlattr*, %struct.nf_conntrack_zone*) #1

declare dso_local i32 @ctnetlink_parse_tuple(%struct.nlattr**, %struct.nf_conntrack_tuple*, i64, i32, i32*) #1

declare dso_local %struct.nf_conntrack_expect* @nf_ct_expect_find_get(%struct.net*, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*) #1

declare dso_local i64 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i64 @nf_expect_get_id(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @nf_ct_expect_put(%struct.nf_conntrack_expect*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ctnetlink_exp_fill_info(%struct.sk_buff*, i32, i32, i32, %struct.nf_conntrack_expect*) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @netlink_unicast(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
