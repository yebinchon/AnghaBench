; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_h323.c_nat_rtp_rtcp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_h323.c_nat_rtp_rtcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.nf_conntrack_expect = type { i32, %struct.TYPE_19__, i8*, %struct.TYPE_21__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_28__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__, %struct.TYPE_25__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.nf_ct_h323_master = type { i64** }

@nf_nat_follow_master = common dso_local global i8* null, align 8
@H323_RTP_CHANNEL_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"nf_nat_h323: out of expectations\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"nf_nat_h323: out of RTP ports\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"nf_nat_h323: expect RTP %pI4:%hu->%pI4:%hu\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"nf_nat_h323: expect RTCP %pI4:%hu->%pI4:%hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, i32*, i64, i64, %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect*)* @nat_rtp_rtcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat_rtp_rtcp(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i32 %3, i8** %4, i32 %5, i32* %6, i64 %7, i64 %8, %struct.nf_conntrack_expect* %9, %struct.nf_conntrack_expect* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.nf_conn*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.nf_conntrack_expect*, align 8
  %23 = alloca %struct.nf_conntrack_expect*, align 8
  %24 = alloca %struct.nf_ct_h323_master*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %13, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i8** %4, i8*** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32* %6, i32** %19, align 8
  store i64 %7, i64* %20, align 8
  store i64 %8, i64* %21, align 8
  store %struct.nf_conntrack_expect* %9, %struct.nf_conntrack_expect** %22, align 8
  store %struct.nf_conntrack_expect* %10, %struct.nf_conntrack_expect** %23, align 8
  %29 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %30 = call %struct.nf_ct_h323_master* @nfct_help_data(%struct.nf_conn* %29)
  store %struct.nf_ct_h323_master* %30, %struct.nf_ct_h323_master** %24, align 8
  %31 = load i32, i32* %15, align 4
  %32 = call i32 @CTINFO2DIR(i32 %31)
  store i32 %32, i32* %25, align 4
  %33 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %22, align 8
  %34 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %22, align 8
  %41 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  store i64 %39, i64* %43, align 8
  %44 = load i8*, i8** @nf_nat_follow_master, align 8
  %45 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %22, align 8
  %46 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %25, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %22, align 8
  %52 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %23, align 8
  %54 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %23, align 8
  %61 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  store i64 %59, i64* %63, align 8
  %64 = load i8*, i8** @nf_nat_follow_master, align 8
  %65 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %23, align 8
  %66 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %25, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %23, align 8
  %72 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  store i32 0, i32* %26, align 4
  br label %73

73:                                               ; preds = %145, %11
  %74 = load i32, i32* %26, align 4
  %75 = load i32, i32* @H323_RTP_CHANNEL_MAX, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %148

77:                                               ; preds = %73
  %78 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %24, align 8
  %79 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %78, i32 0, i32 0
  %80 = load i64**, i64*** %79, align 8
  %81 = load i32, i32* %26, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64*, i64** %80, i64 %82
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %25, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %21, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %129

91:                                               ; preds = %77
  %92 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %24, align 8
  %93 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %92, i32 0, i32 0
  %94 = load i64**, i64*** %93, align 8
  %95 = load i32, i32* %26, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64*, i64** %94, i64 %96
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %25, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %22, align 8
  %104 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  store i64 %102, i64* %108, align 8
  %109 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %24, align 8
  %110 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %109, i32 0, i32 0
  %111 = load i64**, i64*** %110, align 8
  %112 = load i32, i32* %26, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64*, i64** %111, i64 %113
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %25, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @ntohs(i64 %119)
  %121 = add nsw i32 %120, 1
  %122 = call i64 @htons(i32 %121)
  %123 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %23, align 8
  %124 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  store i64 %122, i64* %128, align 8
  br label %148

129:                                              ; preds = %77
  %130 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %24, align 8
  %131 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %130, i32 0, i32 0
  %132 = load i64**, i64*** %131, align 8
  %133 = load i32, i32* %26, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64*, i64** %132, i64 %134
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* %25, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %129
  br label %148

143:                                              ; preds = %129
  br label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %26, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %26, align 4
  br label %73

148:                                              ; preds = %142, %91, %73
  %149 = load i32, i32* %26, align 4
  %150 = load i32, i32* @H323_RTP_CHANNEL_MAX, align 4
  %151 = icmp sge i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = call i32 @net_notice_ratelimited(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %345

154:                                              ; preds = %148
  %155 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %22, align 8
  %156 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @ntohs(i64 %161)
  store i32 %162, i32* %27, align 4
  br label %163

163:                                              ; preds = %219, %154
  %164 = load i32, i32* %27, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %222

166:                                              ; preds = %163
  %167 = load i32, i32* %27, align 4
  %168 = call i64 @htons(i32 %167)
  %169 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %22, align 8
  %170 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  store i64 %168, i64* %174, align 8
  %175 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %22, align 8
  %176 = call i32 @nf_ct_expect_related(%struct.nf_conntrack_expect* %175, i32 0)
  store i32 %176, i32* %28, align 4
  %177 = load i32, i32* %28, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %211

179:                                              ; preds = %166
  %180 = load i32, i32* %27, align 4
  %181 = add nsw i32 %180, 1
  %182 = call i64 @htons(i32 %181)
  %183 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %23, align 8
  %184 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  store i64 %182, i64* %188, align 8
  %189 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %23, align 8
  %190 = call i32 @nf_ct_expect_related(%struct.nf_conntrack_expect* %189, i32 0)
  store i32 %190, i32* %28, align 4
  %191 = load i32, i32* %28, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %179
  br label %222

194:                                              ; preds = %179
  %195 = load i32, i32* %28, align 4
  %196 = load i32, i32* @EBUSY, align 4
  %197 = sub nsw i32 0, %196
  %198 = icmp eq i32 %195, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  %200 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %22, align 8
  %201 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %200)
  br label %219

202:                                              ; preds = %194
  %203 = load i32, i32* %28, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %22, align 8
  %207 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %206)
  store i32 0, i32* %27, align 4
  br label %222

208:                                              ; preds = %202
  br label %209

209:                                              ; preds = %208
  br label %210

210:                                              ; preds = %209
  br label %218

211:                                              ; preds = %166
  %212 = load i32, i32* %28, align 4
  %213 = load i32, i32* @EBUSY, align 4
  %214 = sub nsw i32 0, %213
  %215 = icmp ne i32 %212, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  store i32 0, i32* %27, align 4
  br label %222

217:                                              ; preds = %211
  br label %218

218:                                              ; preds = %217, %210
  br label %219

219:                                              ; preds = %218, %199
  %220 = load i32, i32* %27, align 4
  %221 = add nsw i32 %220, 2
  store i32 %221, i32* %27, align 4
  br label %163

222:                                              ; preds = %216, %205, %193, %163
  %223 = load i32, i32* %27, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = call i32 @net_notice_ratelimited(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %345

227:                                              ; preds = %222
  %228 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %229 = load i32, i32* %16, align 4
  %230 = load i8**, i8*** %17, align 8
  %231 = load i32, i32* %18, align 4
  %232 = load i32*, i32** %19, align 8
  %233 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %234 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %233, i32 0, i32 0
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %234, align 8
  %236 = load i32, i32* %25, align 4
  %237 = icmp ne i32 %236, 0
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 0
  %245 = load i64, i64* %20, align 8
  %246 = call i64 @htons(i32 1)
  %247 = and i64 %245, %246
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %227
  %250 = load i32, i32* %27, align 4
  %251 = add nsw i32 %250, 1
  br label %254

252:                                              ; preds = %227
  %253 = load i32, i32* %27, align 4
  br label %254

254:                                              ; preds = %252, %249
  %255 = phi i32 [ %251, %249 ], [ %253, %252 ]
  %256 = call i64 @htons(i32 %255)
  %257 = call i64 @set_h245_addr(%struct.sk_buff* %228, i32 %229, i8** %230, i32 %231, i32* %232, i32* %244, i64 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %254
  %260 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %22, align 8
  %261 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %260)
  %262 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %23, align 8
  %263 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %262)
  store i32 -1, i32* %12, align 4
  br label %345

264:                                              ; preds = %254
  %265 = load i64, i64* %21, align 8
  %266 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %24, align 8
  %267 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %266, i32 0, i32 0
  %268 = load i64**, i64*** %267, align 8
  %269 = load i32, i32* %26, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i64*, i64** %268, i64 %270
  %272 = load i64*, i64** %271, align 8
  %273 = load i32, i32* %25, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i64, i64* %272, i64 %274
  store i64 %265, i64* %275, align 8
  %276 = load i32, i32* %27, align 4
  %277 = call i64 @htons(i32 %276)
  %278 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %24, align 8
  %279 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %278, i32 0, i32 0
  %280 = load i64**, i64*** %279, align 8
  %281 = load i32, i32* %26, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i64*, i64** %280, i64 %282
  %284 = load i64*, i64** %283, align 8
  %285 = load i32, i32* %25, align 4
  %286 = icmp ne i32 %285, 0
  %287 = xor i1 %286, true
  %288 = zext i1 %287 to i32
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i64, i64* %284, i64 %289
  store i64 %277, i64* %290, align 8
  %291 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %22, align 8
  %292 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %294, i32 0, i32 0
  %296 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %22, align 8
  %297 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = call i32 @ntohs(i64 %302)
  %304 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %22, align 8
  %305 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i32 0, i32 0
  %309 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %22, align 8
  %310 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = call i32 @ntohs(i64 %315)
  %317 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32* %295, i32 %303, i32* %308, i32 %316)
  %318 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %23, align 8
  %319 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %321, i32 0, i32 0
  %323 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %23, align 8
  %324 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = call i32 @ntohs(i64 %329)
  %331 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %23, align 8
  %332 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 0
  %336 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %23, align 8
  %337 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = call i32 @ntohs(i64 %342)
  %344 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32* %322, i32 %330, i32* %335, i32 %343)
  store i32 0, i32* %12, align 4
  br label %345

345:                                              ; preds = %264, %259, %225, %152
  %346 = load i32, i32* %12, align 4
  ret i32 %346
}

declare dso_local %struct.nf_ct_h323_master* @nfct_help_data(%struct.nf_conn*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @net_notice_ratelimited(i8*) #1

declare dso_local i32 @nf_ct_expect_related(%struct.nf_conntrack_expect*, i32) #1

declare dso_local i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i64 @set_h245_addr(%struct.sk_buff*, i32, i8**, i32, i32*, i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
