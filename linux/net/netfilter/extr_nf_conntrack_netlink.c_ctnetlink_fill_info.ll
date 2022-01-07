; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_conntrack_zone = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nfgenmsg = type { i64, i32, i32 }
%struct.nlattr = type { i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@NFNL_SUBSYS_CTNETLINK = common dso_local global i32 0, align 4
@IPCTNL_MSG_CT_NEW = common dso_local global i32 0, align 4
@NFNETLINK_V0 = common dso_local global i32 0, align 4
@CTA_TUPLE_ORIG = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4
@CTA_TUPLE_ZONE = common dso_local global i32 0, align 4
@NF_CT_ZONE_DIR_ORIG = common dso_local global i32 0, align 4
@CTA_TUPLE_REPLY = common dso_local global i32 0, align 4
@IP_CT_DIR_REPLY = common dso_local global i32 0, align 4
@NF_CT_ZONE_DIR_REPL = common dso_local global i32 0, align 4
@CTA_ZONE = common dso_local global i32 0, align 4
@NF_CT_DEFAULT_ZONE_DIR = common dso_local global i32 0, align 4
@IPS_OFFLOAD_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64, i64, i64, %struct.nf_conn*)* @ctnetlink_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_fill_info(%struct.sk_buff* %0, i64 %1, i64 %2, i64 %3, %struct.nf_conn* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nf_conn*, align 8
  %12 = alloca %struct.nf_conntrack_zone*, align 8
  %13 = alloca %struct.nlmsghdr*, align 8
  %14 = alloca %struct.nfgenmsg*, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.nf_conn* %4, %struct.nf_conn** %11, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @NLM_F_MULTI, align 4
  br label %23

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* @NFNL_SUBSYS_CTNETLINK, align 4
  %26 = load i32, i32* @IPCTNL_MSG_CT_NEW, align 4
  %27 = call i32 @nfnl_msg_type(i32 %25, i32 %26)
  store i32 %27, i32* %17, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* %16, align 4
  %33 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %28, i64 %29, i64 %30, i32 %31, i32 16, i32 %32)
  store %struct.nlmsghdr* %33, %struct.nlmsghdr** %13, align 8
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %35 = icmp eq %struct.nlmsghdr* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %196

37:                                               ; preds = %23
  %38 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %39 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %38)
  store %struct.nfgenmsg* %39, %struct.nfgenmsg** %14, align 8
  %40 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %41 = call i32 @nf_ct_l3num(%struct.nf_conn* %40)
  %42 = load %struct.nfgenmsg*, %struct.nfgenmsg** %14, align 8
  %43 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @NFNETLINK_V0, align 4
  %45 = load %struct.nfgenmsg*, %struct.nfgenmsg** %14, align 8
  %46 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.nfgenmsg*, %struct.nfgenmsg** %14, align 8
  %48 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %50 = call %struct.nf_conntrack_zone* @nf_ct_zone(%struct.nf_conn* %49)
  store %struct.nf_conntrack_zone* %50, %struct.nf_conntrack_zone** %12, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = load i32, i32* @CTA_TUPLE_ORIG, align 4
  %53 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %51, i32 %52)
  store %struct.nlattr* %53, %struct.nlattr** %15, align 8
  %54 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %37
  br label %197

57:                                               ; preds = %37
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %60 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %61 = call i32 @nf_ct_tuple(%struct.nf_conn* %59, i32 %60)
  %62 = call i64 @ctnetlink_dump_tuples(%struct.sk_buff* %58, i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %197

65:                                               ; preds = %57
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = load i32, i32* @CTA_TUPLE_ZONE, align 4
  %68 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %12, align 8
  %69 = load i32, i32* @NF_CT_ZONE_DIR_ORIG, align 4
  %70 = call i64 @ctnetlink_dump_zone_id(%struct.sk_buff* %66, i32 %67, %struct.nf_conntrack_zone* %68, i32 %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %197

73:                                               ; preds = %65
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %76 = call i32 @nla_nest_end(%struct.sk_buff* %74, %struct.nlattr* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = load i32, i32* @CTA_TUPLE_REPLY, align 4
  %79 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %77, i32 %78)
  store %struct.nlattr* %79, %struct.nlattr** %15, align 8
  %80 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %81 = icmp ne %struct.nlattr* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %73
  br label %197

83:                                               ; preds = %73
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %86 = load i32, i32* @IP_CT_DIR_REPLY, align 4
  %87 = call i32 @nf_ct_tuple(%struct.nf_conn* %85, i32 %86)
  %88 = call i64 @ctnetlink_dump_tuples(%struct.sk_buff* %84, i32 %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %197

91:                                               ; preds = %83
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %93 = load i32, i32* @CTA_TUPLE_ZONE, align 4
  %94 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %12, align 8
  %95 = load i32, i32* @NF_CT_ZONE_DIR_REPL, align 4
  %96 = call i64 @ctnetlink_dump_zone_id(%struct.sk_buff* %92, i32 %93, %struct.nf_conntrack_zone* %94, i32 %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %197

99:                                               ; preds = %91
  %100 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %101 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %102 = call i32 @nla_nest_end(%struct.sk_buff* %100, %struct.nlattr* %101)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %104 = load i32, i32* @CTA_ZONE, align 4
  %105 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %12, align 8
  %106 = load i32, i32* @NF_CT_DEFAULT_ZONE_DIR, align 4
  %107 = call i64 @ctnetlink_dump_zone_id(%struct.sk_buff* %103, i32 %104, %struct.nf_conntrack_zone* %105, i32 %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %197

110:                                              ; preds = %99
  %111 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %112 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %113 = call i64 @ctnetlink_dump_status(%struct.sk_buff* %111, %struct.nf_conn* %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %171, label %115

115:                                              ; preds = %110
  %116 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %117 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %118 = load i64, i64* %10, align 8
  %119 = call i64 @ctnetlink_dump_acct(%struct.sk_buff* %116, %struct.nf_conn* %117, i64 %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %171, label %121

121:                                              ; preds = %115
  %122 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %123 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %124 = call i64 @ctnetlink_dump_timestamp(%struct.sk_buff* %122, %struct.nf_conn* %123)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %171, label %126

126:                                              ; preds = %121
  %127 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %128 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %129 = call i64 @ctnetlink_dump_helpinfo(%struct.sk_buff* %127, %struct.nf_conn* %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %171, label %131

131:                                              ; preds = %126
  %132 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %133 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %134 = call i64 @ctnetlink_dump_mark(%struct.sk_buff* %132, %struct.nf_conn* %133)
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %171, label %136

136:                                              ; preds = %131
  %137 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %138 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %139 = call i64 @ctnetlink_dump_secctx(%struct.sk_buff* %137, %struct.nf_conn* %138)
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %171, label %141

141:                                              ; preds = %136
  %142 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %143 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %144 = call i64 @ctnetlink_dump_labels(%struct.sk_buff* %142, %struct.nf_conn* %143)
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %171, label %146

146:                                              ; preds = %141
  %147 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %148 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %149 = call i64 @ctnetlink_dump_id(%struct.sk_buff* %147, %struct.nf_conn* %148)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %171, label %151

151:                                              ; preds = %146
  %152 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %153 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %154 = call i64 @ctnetlink_dump_use(%struct.sk_buff* %152, %struct.nf_conn* %153)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %171, label %156

156:                                              ; preds = %151
  %157 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %158 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %159 = call i64 @ctnetlink_dump_master(%struct.sk_buff* %157, %struct.nf_conn* %158)
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %171, label %161

161:                                              ; preds = %156
  %162 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %163 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %164 = call i64 @ctnetlink_dump_ct_seq_adj(%struct.sk_buff* %162, %struct.nf_conn* %163)
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %161
  %167 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %168 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %169 = call i64 @ctnetlink_dump_ct_synproxy(%struct.sk_buff* %167, %struct.nf_conn* %168)
  %170 = icmp slt i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166, %161, %156, %151, %146, %141, %136, %131, %126, %121, %115, %110
  br label %197

172:                                              ; preds = %166
  %173 = load i32, i32* @IPS_OFFLOAD_BIT, align 4
  %174 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %175 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %174, i32 0, i32 0
  %176 = call i32 @test_bit(i32 %173, i32* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %172
  %179 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %180 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %181 = call i64 @ctnetlink_dump_timeout(%struct.sk_buff* %179, %struct.nf_conn* %180)
  %182 = icmp slt i64 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %178
  %184 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %185 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %186 = call i64 @ctnetlink_dump_protoinfo(%struct.sk_buff* %184, %struct.nf_conn* %185)
  %187 = icmp slt i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183, %178
  br label %197

189:                                              ; preds = %183, %172
  %190 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %191 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %192 = call i32 @nlmsg_end(%struct.sk_buff* %190, %struct.nlmsghdr* %191)
  %193 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %194 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %6, align 4
  br label %201

196:                                              ; preds = %36
  br label %197

197:                                              ; preds = %196, %188, %171, %109, %98, %90, %82, %72, %64, %56
  %198 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %199 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %200 = call i32 @nlmsg_cancel(%struct.sk_buff* %198, %struct.nlmsghdr* %199)
  store i32 -1, i32* %6, align 4
  br label %201

201:                                              ; preds = %197, %189
  %202 = load i32, i32* %6, align 4
  ret i32 %202
}

declare dso_local i32 @nfnl_msg_type(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i64, i64, i32, i32, i32) #1

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local %struct.nf_conntrack_zone* @nf_ct_zone(%struct.nf_conn*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @ctnetlink_dump_tuples(%struct.sk_buff*, i32) #1

declare dso_local i32 @nf_ct_tuple(%struct.nf_conn*, i32) #1

declare dso_local i64 @ctnetlink_dump_zone_id(%struct.sk_buff*, i32, %struct.nf_conntrack_zone*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @ctnetlink_dump_status(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i64 @ctnetlink_dump_acct(%struct.sk_buff*, %struct.nf_conn*, i64) #1

declare dso_local i64 @ctnetlink_dump_timestamp(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i64 @ctnetlink_dump_helpinfo(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i64 @ctnetlink_dump_mark(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i64 @ctnetlink_dump_secctx(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i64 @ctnetlink_dump_labels(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i64 @ctnetlink_dump_id(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i64 @ctnetlink_dump_use(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i64 @ctnetlink_dump_master(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i64 @ctnetlink_dump_ct_seq_adj(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i64 @ctnetlink_dump_ct_synproxy(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @ctnetlink_dump_timeout(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i64 @ctnetlink_dump_protoinfo(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
