; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_conntrack.c_conntrack_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_conntrack.c_conntrack_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_conntrack_mtinfo2*, %struct.TYPE_2__* }
%struct.xt_conntrack_mtinfo2 = type { i32, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.nf_conn = type { i32 }

@IP_CT_UNTRACKED = common dso_local global i32 0, align 4
@XT_CONNTRACK_STATE_UNTRACKED = common dso_local global i32 0, align 4
@XT_CONNTRACK_STATE_INVALID = common dso_local global i32 0, align 4
@XT_CONNTRACK_STATE = common dso_local global i32 0, align 4
@IPS_SRC_NAT_BIT = common dso_local global i32 0, align 4
@XT_CONNTRACK_STATE_SNAT = common dso_local global i32 0, align 4
@IPS_DST_NAT_BIT = common dso_local global i32 0, align 4
@XT_CONNTRACK_STATE_DNAT = common dso_local global i32 0, align 4
@XT_CONNTRACK_DIRECTION = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@XT_CONNTRACK_ORIGSRC = common dso_local global i32 0, align 4
@XT_CONNTRACK_ORIGDST = common dso_local global i32 0, align 4
@XT_CONNTRACK_REPLSRC = common dso_local global i32 0, align 4
@XT_CONNTRACK_REPLDST = common dso_local global i32 0, align 4
@XT_CONNTRACK_STATUS = common dso_local global i32 0, align 4
@XT_CONNTRACK_EXPIRES = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*, i32, i32)* @conntrack_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conntrack_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.xt_action_param*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xt_conntrack_mtinfo2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nf_conn*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.xt_action_param*, %struct.xt_action_param** %7, align 8
  %16 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %15, i32 0, i32 0
  %17 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %16, align 8
  store %struct.xt_conntrack_mtinfo2* %17, %struct.xt_conntrack_mtinfo2** %10, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %18, i32* %11)
  store %struct.nf_conn* %19, %struct.nf_conn** %12, align 8
  %20 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %21 = icmp ne %struct.nf_conn* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @XT_CONNTRACK_STATE_BIT(i32 %23)
  store i32 %24, i32* %13, align 4
  br label %34

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @IP_CT_UNTRACKED, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @XT_CONNTRACK_STATE_UNTRACKED, align 4
  store i32 %30, i32* %13, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @XT_CONNTRACK_STATE_INVALID, align 4
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %31, %29
  br label %34

34:                                               ; preds = %33, %22
  %35 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %36 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @XT_CONNTRACK_STATE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %85

41:                                               ; preds = %34
  %42 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %43 = icmp ne %struct.nf_conn* %42, null
  br i1 %43, label %44, label %65

44:                                               ; preds = %41
  %45 = load i32, i32* @IPS_SRC_NAT_BIT, align 4
  %46 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %47 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %46, i32 0, i32 0
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @XT_CONNTRACK_STATE_SNAT, align 4
  %52 = load i32, i32* %13, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %50, %44
  %55 = load i32, i32* @IPS_DST_NAT_BIT, align 4
  %56 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %57 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %56, i32 0, i32 0
  %58 = call i64 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* @XT_CONNTRACK_STATE_DNAT, align 4
  %62 = load i32, i32* %13, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %60, %54
  br label %65

65:                                               ; preds = %64, %41
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %13, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %74 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @XT_CONNTRACK_STATE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = xor i32 %72, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %308

84:                                               ; preds = %65
  br label %85

85:                                               ; preds = %84, %34
  %86 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %87 = icmp eq %struct.nf_conn* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %90 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @XT_CONNTRACK_STATE, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %5, align 4
  br label %308

94:                                               ; preds = %85
  %95 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %96 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @XT_CONNTRACK_DIRECTION, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %94
  %102 = load i32, i32* %11, align 4
  %103 = call i64 @CTINFO2DIR(i32 %102)
  %104 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %108 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @XT_CONNTRACK_DIRECTION, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = xor i32 %106, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %101
  store i32 0, i32* %5, align 4
  br label %308

118:                                              ; preds = %101, %94
  %119 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %120 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @XT_CONNTRACK_ORIGSRC, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %143

125:                                              ; preds = %118
  %126 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %127 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %128 = load %struct.xt_action_param*, %struct.xt_action_param** %7, align 8
  %129 = call i32 @xt_family(%struct.xt_action_param* %128)
  %130 = call i32 @conntrack_mt_origsrc(%struct.nf_conn* %126, %struct.xt_conntrack_mtinfo2* %127, i32 %129)
  %131 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %132 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @XT_CONNTRACK_ORIGSRC, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = xor i32 %130, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %125
  store i32 0, i32* %5, align 4
  br label %308

142:                                              ; preds = %125
  br label %143

143:                                              ; preds = %142, %118
  %144 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %145 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @XT_CONNTRACK_ORIGDST, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %168

150:                                              ; preds = %143
  %151 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %152 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %153 = load %struct.xt_action_param*, %struct.xt_action_param** %7, align 8
  %154 = call i32 @xt_family(%struct.xt_action_param* %153)
  %155 = call i32 @conntrack_mt_origdst(%struct.nf_conn* %151, %struct.xt_conntrack_mtinfo2* %152, i32 %154)
  %156 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %157 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @XT_CONNTRACK_ORIGDST, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = xor i32 %155, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %150
  store i32 0, i32* %5, align 4
  br label %308

167:                                              ; preds = %150
  br label %168

168:                                              ; preds = %167, %143
  %169 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %170 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @XT_CONNTRACK_REPLSRC, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %193

175:                                              ; preds = %168
  %176 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %177 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %178 = load %struct.xt_action_param*, %struct.xt_action_param** %7, align 8
  %179 = call i32 @xt_family(%struct.xt_action_param* %178)
  %180 = call i32 @conntrack_mt_replsrc(%struct.nf_conn* %176, %struct.xt_conntrack_mtinfo2* %177, i32 %179)
  %181 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %182 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @XT_CONNTRACK_REPLSRC, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  %189 = xor i32 %180, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %175
  store i32 0, i32* %5, align 4
  br label %308

192:                                              ; preds = %175
  br label %193

193:                                              ; preds = %192, %168
  %194 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %195 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @XT_CONNTRACK_REPLDST, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %218

200:                                              ; preds = %193
  %201 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %202 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %203 = load %struct.xt_action_param*, %struct.xt_action_param** %7, align 8
  %204 = call i32 @xt_family(%struct.xt_action_param* %203)
  %205 = call i32 @conntrack_mt_repldst(%struct.nf_conn* %201, %struct.xt_conntrack_mtinfo2* %202, i32 %204)
  %206 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %207 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @XT_CONNTRACK_REPLDST, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i32
  %214 = xor i32 %205, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %200
  store i32 0, i32* %5, align 4
  br label %308

217:                                              ; preds = %200
  br label %218

218:                                              ; preds = %217, %193
  %219 = load %struct.xt_action_param*, %struct.xt_action_param** %7, align 8
  %220 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %219, i32 0, i32 1
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 3
  br i1 %224, label %225, label %232

225:                                              ; preds = %218
  %226 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %227 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %228 = call i32 @ct_proto_port_check(%struct.xt_conntrack_mtinfo2* %226, %struct.nf_conn* %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %225
  store i32 0, i32* %5, align 4
  br label %308

231:                                              ; preds = %225
  br label %241

232:                                              ; preds = %218
  %233 = load %struct.xt_action_param*, %struct.xt_action_param** %7, align 8
  %234 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %233, i32 0, i32 0
  %235 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %234, align 8
  %236 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %237 = call i32 @ct_proto_port_check_v3(%struct.xt_conntrack_mtinfo2* %235, %struct.nf_conn* %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %232
  store i32 0, i32* %5, align 4
  br label %308

240:                                              ; preds = %232
  br label %241

241:                                              ; preds = %240, %231
  %242 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %243 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @XT_CONNTRACK_STATUS, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %269

248:                                              ; preds = %241
  %249 = load i32, i32* %9, align 4
  %250 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %251 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = and i32 %249, %252
  %254 = icmp ne i32 %253, 0
  %255 = xor i1 %254, true
  %256 = xor i1 %255, true
  %257 = zext i1 %256 to i32
  %258 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %259 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @XT_CONNTRACK_STATUS, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  %264 = xor i1 %263, true
  %265 = zext i1 %264 to i32
  %266 = xor i32 %257, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %248
  store i32 0, i32* %5, align 4
  br label %308

269:                                              ; preds = %248, %241
  %270 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %271 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @XT_CONNTRACK_EXPIRES, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %307

276:                                              ; preds = %269
  %277 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %278 = call i64 @nf_ct_expires(%struct.nf_conn* %277)
  %279 = load i64, i64* @HZ, align 8
  %280 = udiv i64 %278, %279
  store i64 %280, i64* %14, align 8
  %281 = load i64, i64* %14, align 8
  %282 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %283 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = icmp uge i64 %281, %284
  br i1 %285, label %286, label %292

286:                                              ; preds = %276
  %287 = load i64, i64* %14, align 8
  %288 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %289 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %288, i32 0, i32 3
  %290 = load i64, i64* %289, align 8
  %291 = icmp ule i64 %287, %290
  br label %292

292:                                              ; preds = %286, %276
  %293 = phi i1 [ false, %276 ], [ %291, %286 ]
  %294 = zext i1 %293 to i32
  %295 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %10, align 8
  %296 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @XT_CONNTRACK_EXPIRES, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  %301 = xor i1 %300, true
  %302 = zext i1 %301 to i32
  %303 = xor i32 %294, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %292
  store i32 0, i32* %5, align 4
  br label %308

306:                                              ; preds = %292
  br label %307

307:                                              ; preds = %306, %269
  store i32 1, i32* %5, align 4
  br label %308

308:                                              ; preds = %307, %305, %268, %239, %230, %216, %191, %166, %141, %117, %88, %83
  %309 = load i32, i32* %5, align 4
  ret i32 %309
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @XT_CONNTRACK_STATE_BIT(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @CTINFO2DIR(i32) #1

declare dso_local i32 @conntrack_mt_origsrc(%struct.nf_conn*, %struct.xt_conntrack_mtinfo2*, i32) #1

declare dso_local i32 @xt_family(%struct.xt_action_param*) #1

declare dso_local i32 @conntrack_mt_origdst(%struct.nf_conn*, %struct.xt_conntrack_mtinfo2*, i32) #1

declare dso_local i32 @conntrack_mt_replsrc(%struct.nf_conn*, %struct.xt_conntrack_mtinfo2*, i32) #1

declare dso_local i32 @conntrack_mt_repldst(%struct.nf_conn*, %struct.xt_conntrack_mtinfo2*, i32) #1

declare dso_local i32 @ct_proto_port_check(%struct.xt_conntrack_mtinfo2*, %struct.nf_conn*) #1

declare dso_local i32 @ct_proto_port_check_v3(%struct.xt_conntrack_mtinfo2*, %struct.nf_conn*) #1

declare dso_local i64 @nf_ct_expires(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
