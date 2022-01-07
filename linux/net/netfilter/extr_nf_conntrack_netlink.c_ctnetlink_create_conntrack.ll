; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_create_conntrack.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_create_conntrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.nf_conn*, i32, i32, i64 }
%struct.net = type { i32 }
%struct.nf_conntrack_zone = type { i32 }
%struct.nlattr = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conntrack_helper = type { i32 (%struct.nlattr*, %struct.nf_conn.0*)* }
%struct.nf_conn.0 = type opaque
%struct.nf_conn_tstamp = type { i32 }
%struct.nf_conn_help = type { i32 }
%struct.nf_conntrack_tuple_hash = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CTA_TIMEOUT = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@nfct_time_stamp = common dso_local global i64 0, align 8
@CTA_HELP = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IPS_CONFIRMED = common dso_local global i32 0, align 4
@CTA_STATUS = common dso_local global i64 0, align 8
@CTA_SEQ_ADJ_ORIG = common dso_local global i64 0, align 8
@CTA_SEQ_ADJ_REPLY = common dso_local global i64 0, align 8
@CTA_PROTOINFO = common dso_local global i64 0, align 8
@CTA_SYNPROXY = common dso_local global i64 0, align 8
@CTA_TUPLE_MASTER = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@IPS_EXPECTED_BIT = common dso_local global i32 0, align 4
@CTA_MARK = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nf_conn* (%struct.net*, %struct.nf_conntrack_zone*, %struct.nlattr**, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*, i32)* @ctnetlink_create_conntrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nf_conn* @ctnetlink_create_conntrack(%struct.net* %0, %struct.nf_conntrack_zone* %1, %struct.nlattr** %2, %struct.nf_conntrack_tuple* %3, %struct.nf_conntrack_tuple* %4, i32 %5) #0 {
  %7 = alloca %struct.nf_conn*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.nf_conntrack_zone*, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.nf_conntrack_tuple*, align 8
  %12 = alloca %struct.nf_conntrack_tuple*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nf_conn*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.nf_conntrack_helper*, align 8
  %17 = alloca %struct.nf_conn_tstamp*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.nlattr*, align 8
  %21 = alloca %struct.nf_conn_help*, align 8
  %22 = alloca %struct.nf_conntrack_tuple, align 4
  %23 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %24 = alloca %struct.nf_conn*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.nf_conntrack_zone* %1, %struct.nf_conntrack_zone** %9, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %10, align 8
  store %struct.nf_conntrack_tuple* %3, %struct.nf_conntrack_tuple** %11, align 8
  store %struct.nf_conntrack_tuple* %4, %struct.nf_conntrack_tuple** %12, align 8
  store i32 %5, i32* %13, align 4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %15, align 4
  %27 = load %struct.net*, %struct.net** %8, align 8
  %28 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %9, align 8
  %29 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %11, align 8
  %30 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %12, align 8
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.nf_conn* @nf_conntrack_alloc(%struct.net* %27, %struct.nf_conntrack_zone* %28, %struct.nf_conntrack_tuple* %29, %struct.nf_conntrack_tuple* %30, i32 %31)
  store %struct.nf_conn* %32, %struct.nf_conn** %14, align 8
  %33 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %34 = call i64 @IS_ERR(%struct.nf_conn* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %6
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.nf_conn* @ERR_PTR(i32 %38)
  store %struct.nf_conn* %39, %struct.nf_conn** %7, align 8
  br label %284

40:                                               ; preds = %6
  %41 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %42 = load i64, i64* @CTA_TIMEOUT, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = icmp ne %struct.nlattr* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %279

47:                                               ; preds = %40
  %48 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %49 = load i64, i64* @CTA_TIMEOUT, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = call i32 @nla_get_be32(%struct.nlattr* %51)
  %53 = call i64 @ntohl(i32 %52)
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @HZ, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* @INT_MAX, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %47
  %61 = load i32, i32* @INT_MAX, align 4
  store i32 %61, i32* %18, align 4
  br label %62

62:                                               ; preds = %60, %47
  %63 = load i32, i32* %18, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @nfct_time_stamp, align 8
  %66 = add nsw i64 %64, %65
  %67 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %68 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  %69 = call i32 (...) @rcu_read_lock()
  %70 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %71 = load i64, i64* @CTA_HELP, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %70, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = icmp ne %struct.nlattr* %73, null
  br i1 %74, label %75, label %126

75:                                               ; preds = %62
  store i8* null, i8** %19, align 8
  store %struct.nlattr* null, %struct.nlattr** %20, align 8
  %76 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %77 = load i64, i64* @CTA_HELP, align 8
  %78 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %76, i64 %77
  %79 = load %struct.nlattr*, %struct.nlattr** %78, align 8
  %80 = call i32 @ctnetlink_parse_help(%struct.nlattr* %79, i8** %19, %struct.nlattr** %20)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %277

84:                                               ; preds = %75
  %85 = load i8*, i8** %19, align 8
  %86 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %87 = call i32 @nf_ct_l3num(%struct.nf_conn* %86)
  %88 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %89 = call i32 @nf_ct_protonum(%struct.nf_conn* %88)
  %90 = call %struct.nf_conntrack_helper* @__nf_conntrack_helper_find(i8* %85, i32 %87, i32 %89)
  store %struct.nf_conntrack_helper* %90, %struct.nf_conntrack_helper** %16, align 8
  %91 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %16, align 8
  %92 = icmp eq %struct.nf_conntrack_helper* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = call i32 (...) @rcu_read_unlock()
  %95 = load i32, i32* @EOPNOTSUPP, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %15, align 4
  br label %279

97:                                               ; preds = %84
  %98 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %99 = load i32, i32* @GFP_ATOMIC, align 4
  %100 = call %struct.nf_conn_help* @nf_ct_helper_ext_add(%struct.nf_conn* %98, i32 %99)
  store %struct.nf_conn_help* %100, %struct.nf_conn_help** %21, align 8
  %101 = load %struct.nf_conn_help*, %struct.nf_conn_help** %21, align 8
  %102 = icmp eq %struct.nf_conn_help* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %15, align 4
  br label %277

106:                                              ; preds = %97
  %107 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %16, align 8
  %108 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %107, i32 0, i32 0
  %109 = load i32 (%struct.nlattr*, %struct.nf_conn.0*)*, i32 (%struct.nlattr*, %struct.nf_conn.0*)** %108, align 8
  %110 = icmp ne i32 (%struct.nlattr*, %struct.nf_conn.0*)* %109, null
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %16, align 8
  %113 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %112, i32 0, i32 0
  %114 = load i32 (%struct.nlattr*, %struct.nf_conn.0*)*, i32 (%struct.nlattr*, %struct.nf_conn.0*)** %113, align 8
  %115 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %116 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %117 = bitcast %struct.nf_conn* %116 to %struct.nf_conn.0*
  %118 = call i32 %114(%struct.nlattr* %115, %struct.nf_conn.0* %117)
  br label %119

119:                                              ; preds = %111, %106
  %120 = load %struct.nf_conn_help*, %struct.nf_conn_help** %21, align 8
  %121 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %16, align 8
  %124 = call i32 @RCU_INIT_POINTER(i32 %122, %struct.nf_conntrack_helper* %123)
  br label %125

125:                                              ; preds = %119
  br label %134

126:                                              ; preds = %62
  %127 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %128 = load i32, i32* @GFP_ATOMIC, align 4
  %129 = call i32 @__nf_ct_try_assign_helper(%struct.nf_conn* %127, i32* null, i32 %128)
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %15, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %277

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133, %125
  %135 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %136 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %137 = call i32 @ctnetlink_setup_nat(%struct.nf_conn* %135, %struct.nlattr** %136)
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %15, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %277

141:                                              ; preds = %134
  %142 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %143 = load i32, i32* @GFP_ATOMIC, align 4
  %144 = call i32 @nf_ct_acct_ext_add(%struct.nf_conn* %142, i32 %143)
  %145 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %146 = load i32, i32* @GFP_ATOMIC, align 4
  %147 = call i32 @nf_ct_tstamp_ext_add(%struct.nf_conn* %145, i32 %146)
  %148 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %149 = load i32, i32* @GFP_ATOMIC, align 4
  %150 = call i32 @nf_ct_ecache_ext_add(%struct.nf_conn* %148, i32 0, i32 0, i32 %149)
  %151 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %152 = call i32 @nf_ct_labels_ext_add(%struct.nf_conn* %151)
  %153 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %154 = call i32 @nfct_seqadj_ext_add(%struct.nf_conn* %153)
  %155 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %156 = call i32 @nfct_synproxy_ext_add(%struct.nf_conn* %155)
  %157 = load i32, i32* @IPS_CONFIRMED, align 4
  %158 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %159 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %163 = load i64, i64* @CTA_STATUS, align 8
  %164 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %162, i64 %163
  %165 = load %struct.nlattr*, %struct.nlattr** %164, align 8
  %166 = icmp ne %struct.nlattr* %165, null
  br i1 %166, label %167, label %175

167:                                              ; preds = %141
  %168 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %169 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %170 = call i32 @ctnetlink_change_status(%struct.nf_conn* %168, %struct.nlattr** %169)
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* %15, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %277

174:                                              ; preds = %167
  br label %175

175:                                              ; preds = %174, %141
  %176 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %177 = load i64, i64* @CTA_SEQ_ADJ_ORIG, align 8
  %178 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %176, i64 %177
  %179 = load %struct.nlattr*, %struct.nlattr** %178, align 8
  %180 = icmp ne %struct.nlattr* %179, null
  br i1 %180, label %187, label %181

181:                                              ; preds = %175
  %182 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %183 = load i64, i64* @CTA_SEQ_ADJ_REPLY, align 8
  %184 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %182, i64 %183
  %185 = load %struct.nlattr*, %struct.nlattr** %184, align 8
  %186 = icmp ne %struct.nlattr* %185, null
  br i1 %186, label %187, label %195

187:                                              ; preds = %181, %175
  %188 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %189 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %190 = call i32 @ctnetlink_change_seq_adj(%struct.nf_conn* %188, %struct.nlattr** %189)
  store i32 %190, i32* %15, align 4
  %191 = load i32, i32* %15, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  br label %277

194:                                              ; preds = %187
  br label %195

195:                                              ; preds = %194, %181
  %196 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %197 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %196, i32 0, i32 2
  %198 = call i32 @memset(i32* %197, i32 0, i32 4)
  %199 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %200 = load i64, i64* @CTA_PROTOINFO, align 8
  %201 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %199, i64 %200
  %202 = load %struct.nlattr*, %struct.nlattr** %201, align 8
  %203 = icmp ne %struct.nlattr* %202, null
  br i1 %203, label %204, label %212

204:                                              ; preds = %195
  %205 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %206 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %207 = call i32 @ctnetlink_change_protoinfo(%struct.nf_conn* %205, %struct.nlattr** %206)
  store i32 %207, i32* %15, align 4
  %208 = load i32, i32* %15, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %204
  br label %277

211:                                              ; preds = %204
  br label %212

212:                                              ; preds = %211, %195
  %213 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %214 = load i64, i64* @CTA_SYNPROXY, align 8
  %215 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %213, i64 %214
  %216 = load %struct.nlattr*, %struct.nlattr** %215, align 8
  %217 = icmp ne %struct.nlattr* %216, null
  br i1 %217, label %218, label %226

218:                                              ; preds = %212
  %219 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %220 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %221 = call i32 @ctnetlink_change_synproxy(%struct.nf_conn* %219, %struct.nlattr** %220)
  store i32 %221, i32* %15, align 4
  %222 = load i32, i32* %15, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %218
  br label %277

225:                                              ; preds = %218
  br label %226

226:                                              ; preds = %225, %212
  %227 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %228 = load i64, i64* @CTA_TUPLE_MASTER, align 8
  %229 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %227, i64 %228
  %230 = load %struct.nlattr*, %struct.nlattr** %229, align 8
  %231 = icmp ne %struct.nlattr* %230, null
  br i1 %231, label %232, label %259

232:                                              ; preds = %226
  %233 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %234 = load i64, i64* @CTA_TUPLE_MASTER, align 8
  %235 = load i32, i32* %13, align 4
  %236 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %233, %struct.nf_conntrack_tuple* %22, i64 %234, i32 %235, i32* null)
  store i32 %236, i32* %15, align 4
  %237 = load i32, i32* %15, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %232
  br label %277

240:                                              ; preds = %232
  %241 = load %struct.net*, %struct.net** %8, align 8
  %242 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %9, align 8
  %243 = call %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net* %241, %struct.nf_conntrack_zone* %242, %struct.nf_conntrack_tuple* %22)
  store %struct.nf_conntrack_tuple_hash* %243, %struct.nf_conntrack_tuple_hash** %23, align 8
  %244 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %23, align 8
  %245 = icmp eq %struct.nf_conntrack_tuple_hash* %244, null
  br i1 %245, label %246, label %249

246:                                              ; preds = %240
  %247 = load i32, i32* @ENOENT, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %15, align 4
  br label %277

249:                                              ; preds = %240
  %250 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %23, align 8
  %251 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %250)
  store %struct.nf_conn* %251, %struct.nf_conn** %24, align 8
  %252 = load i32, i32* @IPS_EXPECTED_BIT, align 4
  %253 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %254 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %253, i32 0, i32 1
  %255 = call i32 @__set_bit(i32 %252, i32* %254)
  %256 = load %struct.nf_conn*, %struct.nf_conn** %24, align 8
  %257 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %258 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %257, i32 0, i32 0
  store %struct.nf_conn* %256, %struct.nf_conn** %258, align 8
  br label %259

259:                                              ; preds = %249, %226
  %260 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %261 = call %struct.nf_conn_tstamp* @nf_conn_tstamp_find(%struct.nf_conn* %260)
  store %struct.nf_conn_tstamp* %261, %struct.nf_conn_tstamp** %17, align 8
  %262 = load %struct.nf_conn_tstamp*, %struct.nf_conn_tstamp** %17, align 8
  %263 = icmp ne %struct.nf_conn_tstamp* %262, null
  br i1 %263, label %264, label %268

264:                                              ; preds = %259
  %265 = call i32 (...) @ktime_get_real_ns()
  %266 = load %struct.nf_conn_tstamp*, %struct.nf_conn_tstamp** %17, align 8
  %267 = getelementptr inbounds %struct.nf_conn_tstamp, %struct.nf_conn_tstamp* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 4
  br label %268

268:                                              ; preds = %264, %259
  %269 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %270 = call i32 @nf_conntrack_hash_check_insert(%struct.nf_conn* %269)
  store i32 %270, i32* %15, align 4
  %271 = load i32, i32* %15, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %268
  br label %277

274:                                              ; preds = %268
  %275 = call i32 (...) @rcu_read_unlock()
  %276 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  store %struct.nf_conn* %276, %struct.nf_conn** %7, align 8
  br label %284

277:                                              ; preds = %273, %246, %239, %224, %210, %193, %173, %140, %132, %103, %83
  %278 = call i32 (...) @rcu_read_unlock()
  br label %279

279:                                              ; preds = %277, %93, %46
  %280 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %281 = call i32 @nf_conntrack_free(%struct.nf_conn* %280)
  %282 = load i32, i32* %15, align 4
  %283 = call %struct.nf_conn* @ERR_PTR(i32 %282)
  store %struct.nf_conn* %283, %struct.nf_conn** %7, align 8
  br label %284

284:                                              ; preds = %279, %274, %36
  %285 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  ret %struct.nf_conn* %285
}

declare dso_local %struct.nf_conn* @nf_conntrack_alloc(%struct.net*, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nf_conn*) #1

declare dso_local %struct.nf_conn* @ERR_PTR(i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ctnetlink_parse_help(%struct.nlattr*, i8**, %struct.nlattr**) #1

declare dso_local %struct.nf_conntrack_helper* @__nf_conntrack_helper_find(i8*, i32, i32) #1

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_protonum(%struct.nf_conn*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.nf_conn_help* @nf_ct_helper_ext_add(%struct.nf_conn*, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.nf_conntrack_helper*) #1

declare dso_local i32 @__nf_ct_try_assign_helper(%struct.nf_conn*, i32*, i32) #1

declare dso_local i32 @ctnetlink_setup_nat(%struct.nf_conn*, %struct.nlattr**) #1

declare dso_local i32 @nf_ct_acct_ext_add(%struct.nf_conn*, i32) #1

declare dso_local i32 @nf_ct_tstamp_ext_add(%struct.nf_conn*, i32) #1

declare dso_local i32 @nf_ct_ecache_ext_add(%struct.nf_conn*, i32, i32, i32) #1

declare dso_local i32 @nf_ct_labels_ext_add(%struct.nf_conn*) #1

declare dso_local i32 @nfct_seqadj_ext_add(%struct.nf_conn*) #1

declare dso_local i32 @nfct_synproxy_ext_add(%struct.nf_conn*) #1

declare dso_local i32 @ctnetlink_change_status(%struct.nf_conn*, %struct.nlattr**) #1

declare dso_local i32 @ctnetlink_change_seq_adj(%struct.nf_conn*, %struct.nlattr**) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ctnetlink_change_protoinfo(%struct.nf_conn*, %struct.nlattr**) #1

declare dso_local i32 @ctnetlink_change_synproxy(%struct.nf_conn*, %struct.nlattr**) #1

declare dso_local i32 @ctnetlink_parse_tuple(%struct.nlattr**, %struct.nf_conntrack_tuple*, i64, i32, i32*) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net*, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local %struct.nf_conn_tstamp* @nf_conn_tstamp_find(%struct.nf_conn*) #1

declare dso_local i32 @ktime_get_real_ns(...) #1

declare dso_local i32 @nf_conntrack_hash_check_insert(%struct.nf_conn*) #1

declare dso_local i32 @nf_conntrack_free(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
