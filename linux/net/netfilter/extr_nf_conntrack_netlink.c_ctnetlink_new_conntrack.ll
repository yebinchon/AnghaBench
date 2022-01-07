; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_new_conntrack.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_new_conntrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_conntrack_zone = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CTA_ZONE = common dso_local global i64 0, align 8
@CTA_TUPLE_ORIG = common dso_local global i64 0, align 8
@CTA_TUPLE_REPLY = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@NLM_F_CREATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPS_EXPECTED_BIT = common dso_local global i32 0, align 4
@IPCT_RELATED = common dso_local global i32 0, align 4
@IPCT_NEW = common dso_local global i32 0, align 4
@CTA_LABELS = common dso_local global i64 0, align 8
@IPCT_LABEL = common dso_local global i32 0, align 4
@IPCT_REPLY = common dso_local global i32 0, align 4
@IPCT_ASSURED = common dso_local global i32 0, align 4
@IPCT_HELPER = common dso_local global i32 0, align 4
@IPCT_PROTOINFO = common dso_local global i32 0, align 4
@IPCT_SEQADJ = common dso_local global i32 0, align 4
@IPCT_MARK = common dso_local global i32 0, align 4
@IPCT_SYNPROXY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @ctnetlink_new_conntrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_new_conntrack(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.nf_conntrack_tuple, align 8
  %15 = alloca %struct.nf_conntrack_tuple, align 8
  %16 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %17 = alloca %struct.nfgenmsg*, align 8
  %18 = alloca %struct.nf_conn*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.nf_conntrack_zone, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_4__, align 4
  %24 = alloca %struct.TYPE_4__, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  store %struct.nf_conntrack_tuple_hash* null, %struct.nf_conntrack_tuple_hash** %16, align 8
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %26 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %25)
  store %struct.nfgenmsg* %26, %struct.nfgenmsg** %17, align 8
  %27 = load %struct.nfgenmsg*, %struct.nfgenmsg** %17, align 8
  %28 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %19, align 4
  %30 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %31 = load i64, i64* @CTA_ZONE, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = call i32 @ctnetlink_parse_zone(%struct.nlattr* %33, %struct.nf_conntrack_zone* %20)
  store i32 %34, i32* %21, align 4
  %35 = load i32, i32* %21, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %6
  %38 = load i32, i32* %21, align 4
  store i32 %38, i32* %7, align 4
  br label %258

39:                                               ; preds = %6
  %40 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %41 = load i64, i64* @CTA_TUPLE_ORIG, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = icmp ne %struct.nlattr* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %47 = load i64, i64* @CTA_TUPLE_ORIG, align 8
  %48 = load i32, i32* %19, align 4
  %49 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %46, %struct.nf_conntrack_tuple* %14, i64 %47, i32 %48, %struct.nf_conntrack_zone* %20)
  store i32 %49, i32* %21, align 4
  %50 = load i32, i32* %21, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %21, align 4
  store i32 %53, i32* %7, align 4
  br label %258

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %39
  %56 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %57 = load i64, i64* @CTA_TUPLE_REPLY, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %56, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = icmp ne %struct.nlattr* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %63 = load i64, i64* @CTA_TUPLE_REPLY, align 8
  %64 = load i32, i32* %19, align 4
  %65 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %62, %struct.nf_conntrack_tuple* %15, i64 %63, i32 %64, %struct.nf_conntrack_zone* %20)
  store i32 %65, i32* %21, align 4
  %66 = load i32, i32* %21, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %21, align 4
  store i32 %69, i32* %7, align 4
  br label %258

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %55
  %72 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %73 = load i64, i64* @CTA_TUPLE_ORIG, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %72, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = icmp ne %struct.nlattr* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.net*, %struct.net** %8, align 8
  %79 = call %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net* %78, %struct.nf_conntrack_zone* %20, %struct.nf_conntrack_tuple* %14)
  store %struct.nf_conntrack_tuple_hash* %79, %struct.nf_conntrack_tuple_hash** %16, align 8
  br label %90

80:                                               ; preds = %71
  %81 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %82 = load i64, i64* @CTA_TUPLE_REPLY, align 8
  %83 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %81, i64 %82
  %84 = load %struct.nlattr*, %struct.nlattr** %83, align 8
  %85 = icmp ne %struct.nlattr* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.net*, %struct.net** %8, align 8
  %88 = call %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net* %87, %struct.nf_conntrack_zone* %20, %struct.nf_conntrack_tuple* %15)
  store %struct.nf_conntrack_tuple_hash* %88, %struct.nf_conntrack_tuple_hash** %16, align 8
  br label %89

89:                                               ; preds = %86, %80
  br label %90

90:                                               ; preds = %89, %77
  %91 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %16, align 8
  %92 = icmp eq %struct.nf_conntrack_tuple_hash* %91, null
  br i1 %92, label %93, label %203

93:                                               ; preds = %90
  %94 = load i32, i32* @ENOENT, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %21, align 4
  %96 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %97 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @NLM_F_CREATE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %201

102:                                              ; preds = %93
  %103 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %104 = load i64, i64* @CTA_TUPLE_ORIG, align 8
  %105 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %103, i64 %104
  %106 = load %struct.nlattr*, %struct.nlattr** %105, align 8
  %107 = icmp ne %struct.nlattr* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %110 = load i64, i64* @CTA_TUPLE_REPLY, align 8
  %111 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %109, i64 %110
  %112 = load %struct.nlattr*, %struct.nlattr** %111, align 8
  %113 = icmp ne %struct.nlattr* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %108, %102
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %7, align 4
  br label %258

117:                                              ; preds = %108
  %118 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %14, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %15, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %120, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %7, align 4
  br label %258

128:                                              ; preds = %117
  %129 = load %struct.net*, %struct.net** %8, align 8
  %130 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %131 = load i32, i32* %19, align 4
  %132 = call %struct.nf_conn* @ctnetlink_create_conntrack(%struct.net* %129, %struct.nf_conntrack_zone* %20, %struct.nlattr** %130, %struct.nf_conntrack_tuple* %14, %struct.nf_conntrack_tuple* %15, i32 %131)
  store %struct.nf_conn* %132, %struct.nf_conn** %18, align 8
  %133 = load %struct.nf_conn*, %struct.nf_conn** %18, align 8
  %134 = call i64 @IS_ERR(%struct.nf_conn* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load %struct.nf_conn*, %struct.nf_conn** %18, align 8
  %138 = call i32 @PTR_ERR(%struct.nf_conn* %137)
  store i32 %138, i32* %7, align 4
  br label %258

139:                                              ; preds = %128
  store i32 0, i32* %21, align 4
  %140 = load i32, i32* @IPS_EXPECTED_BIT, align 4
  %141 = load %struct.nf_conn*, %struct.nf_conn** %18, align 8
  %142 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %141, i32 0, i32 0
  %143 = call i64 @test_bit(i32 %140, i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i32, i32* @IPCT_RELATED, align 4
  %147 = shl i32 1, %146
  store i32 %147, i32* %22, align 4
  br label %151

148:                                              ; preds = %139
  %149 = load i32, i32* @IPCT_NEW, align 4
  %150 = shl i32 1, %149
  store i32 %150, i32* %22, align 4
  br label %151

151:                                              ; preds = %148, %145
  %152 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %153 = load i64, i64* @CTA_LABELS, align 8
  %154 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %152, i64 %153
  %155 = load %struct.nlattr*, %struct.nlattr** %154, align 8
  %156 = icmp ne %struct.nlattr* %155, null
  br i1 %156, label %157, label %167

157:                                              ; preds = %151
  %158 = load %struct.nf_conn*, %struct.nf_conn** %18, align 8
  %159 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %160 = call i64 @ctnetlink_attach_labels(%struct.nf_conn* %158, %struct.nlattr** %159)
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load i32, i32* @IPCT_LABEL, align 4
  %164 = shl i32 1, %163
  %165 = load i32, i32* %22, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %22, align 4
  br label %167

167:                                              ; preds = %162, %157, %151
  %168 = load i32, i32* @IPCT_REPLY, align 4
  %169 = shl i32 1, %168
  %170 = load i32, i32* @IPCT_ASSURED, align 4
  %171 = shl i32 1, %170
  %172 = or i32 %169, %171
  %173 = load i32, i32* @IPCT_HELPER, align 4
  %174 = shl i32 1, %173
  %175 = or i32 %172, %174
  %176 = load i32, i32* @IPCT_PROTOINFO, align 4
  %177 = shl i32 1, %176
  %178 = or i32 %175, %177
  %179 = load i32, i32* @IPCT_SEQADJ, align 4
  %180 = shl i32 1, %179
  %181 = or i32 %178, %180
  %182 = load i32, i32* @IPCT_MARK, align 4
  %183 = shl i32 1, %182
  %184 = or i32 %181, %183
  %185 = load i32, i32* @IPCT_SYNPROXY, align 4
  %186 = shl i32 1, %185
  %187 = or i32 %184, %186
  %188 = load i32, i32* %22, align 4
  %189 = or i32 %187, %188
  %190 = load %struct.nf_conn*, %struct.nf_conn** %18, align 8
  %191 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %192 = call i32 @NETLINK_CB(%struct.sk_buff* %191)
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %192, i32* %193, align 4
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %197 = call i32 @nlmsg_report(%struct.nlmsghdr* %196)
  %198 = call i32 @nf_conntrack_eventmask_report(i32 %189, %struct.nf_conn* %190, i32 %195, i32 %197)
  %199 = load %struct.nf_conn*, %struct.nf_conn** %18, align 8
  %200 = call i32 @nf_ct_put(%struct.nf_conn* %199)
  br label %201

201:                                              ; preds = %167, %93
  %202 = load i32, i32* %21, align 4
  store i32 %202, i32* %7, align 4
  br label %258

203:                                              ; preds = %90
  %204 = load i32, i32* @EEXIST, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %21, align 4
  %206 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %16, align 8
  %207 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %206)
  store %struct.nf_conn* %207, %struct.nf_conn** %18, align 8
  %208 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %209 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @NLM_F_EXCL, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %254, label %214

214:                                              ; preds = %203
  %215 = load %struct.nf_conn*, %struct.nf_conn** %18, align 8
  %216 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %217 = call i32 @ctnetlink_change_conntrack(%struct.nf_conn* %215, %struct.nlattr** %216)
  store i32 %217, i32* %21, align 4
  %218 = load i32, i32* %21, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %253

220:                                              ; preds = %214
  %221 = load i32, i32* @IPCT_REPLY, align 4
  %222 = shl i32 1, %221
  %223 = load i32, i32* @IPCT_ASSURED, align 4
  %224 = shl i32 1, %223
  %225 = or i32 %222, %224
  %226 = load i32, i32* @IPCT_HELPER, align 4
  %227 = shl i32 1, %226
  %228 = or i32 %225, %227
  %229 = load i32, i32* @IPCT_LABEL, align 4
  %230 = shl i32 1, %229
  %231 = or i32 %228, %230
  %232 = load i32, i32* @IPCT_PROTOINFO, align 4
  %233 = shl i32 1, %232
  %234 = or i32 %231, %233
  %235 = load i32, i32* @IPCT_SEQADJ, align 4
  %236 = shl i32 1, %235
  %237 = or i32 %234, %236
  %238 = load i32, i32* @IPCT_MARK, align 4
  %239 = shl i32 1, %238
  %240 = or i32 %237, %239
  %241 = load i32, i32* @IPCT_SYNPROXY, align 4
  %242 = shl i32 1, %241
  %243 = or i32 %240, %242
  %244 = load %struct.nf_conn*, %struct.nf_conn** %18, align 8
  %245 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %246 = call i32 @NETLINK_CB(%struct.sk_buff* %245)
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %246, i32* %247, align 4
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %251 = call i32 @nlmsg_report(%struct.nlmsghdr* %250)
  %252 = call i32 @nf_conntrack_eventmask_report(i32 %243, %struct.nf_conn* %244, i32 %249, i32 %251)
  br label %253

253:                                              ; preds = %220, %214
  br label %254

254:                                              ; preds = %253, %203
  %255 = load %struct.nf_conn*, %struct.nf_conn** %18, align 8
  %256 = call i32 @nf_ct_put(%struct.nf_conn* %255)
  %257 = load i32, i32* %21, align 4
  store i32 %257, i32* %7, align 4
  br label %258

258:                                              ; preds = %254, %201, %136, %125, %114, %68, %52, %37
  %259 = load i32, i32* %7, align 4
  ret i32 %259
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @ctnetlink_parse_zone(%struct.nlattr*, %struct.nf_conntrack_zone*) #1

declare dso_local i32 @ctnetlink_parse_tuple(%struct.nlattr**, %struct.nf_conntrack_tuple*, i64, i32, %struct.nf_conntrack_zone*) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net*, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conn* @ctnetlink_create_conntrack(%struct.net*, %struct.nf_conntrack_zone*, %struct.nlattr**, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nf_conn*) #1

declare dso_local i32 @PTR_ERR(%struct.nf_conn*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @ctnetlink_attach_labels(%struct.nf_conn*, %struct.nlattr**) #1

declare dso_local i32 @nf_conntrack_eventmask_report(i32, %struct.nf_conn*, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_report(%struct.nlmsghdr*) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i32 @ctnetlink_change_conntrack(%struct.nf_conn*, %struct.nlattr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
