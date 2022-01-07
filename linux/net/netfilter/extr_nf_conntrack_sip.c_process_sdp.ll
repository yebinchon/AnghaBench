; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_process_sdp.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_process_sdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%union.nf_inet_addr = type { i32 }
%struct.nf_nat_sip_hooks = type { i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32, i32, %union.nf_inet_addr*)*, i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32, %union.nf_inet_addr*)* }
%struct.sdp_media_type = type { i32, i64 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@nf_nat_sip_hooks = common dso_local global i32 0, align 4
@SDP_HDR_VERSION = common dso_local global i32 0, align 4
@SDP_HDR_UNSPEC = common dso_local global i32 0, align 4
@SDP_HDR_CONNECTION = common dso_local global i32 0, align 4
@SDP_HDR_MEDIA = common dso_local global i32 0, align 4
@sdp_media_types = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"wrong port %u\00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot parse SDP message\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"cannot add expectation for voice\00", align 1
@IPS_NAT_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"cannot mangle SDP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32)* @process_sdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_sdp(%struct.sk_buff* %0, i32 %1, i32 %2, i8** %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nf_conn*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %union.nf_inet_addr, align 4
  %25 = alloca %union.nf_inet_addr, align 4
  %26 = alloca %union.nf_inet_addr, align 4
  %27 = alloca %struct.nf_nat_sip_hooks*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.sdp_media_type*, align 8
  %30 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %31, i32* %14)
  store %struct.nf_conn* %32, %struct.nf_conn** %15, align 8
  %33 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %33, i32* %30, align 4
  %34 = load i32, i32* @nf_nat_sip_hooks, align 4
  %35 = call %struct.nf_nat_sip_hooks* @rcu_dereference(i32 %34)
  store %struct.nf_nat_sip_hooks* %35, %struct.nf_nat_sip_hooks** %27, align 8
  %36 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %37 = load i8**, i8*** %11, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SDP_HDR_VERSION, align 4
  %42 = load i32, i32* @SDP_HDR_UNSPEC, align 4
  %43 = call i64 @ct_sip_get_sdp_header(%struct.nf_conn* %36, i8* %38, i32 0, i32 %40, i32 %41, i32 %42, i32* %16, i32* %17)
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %6
  %46 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %46, i32* %7, align 4
  br label %238

47:                                               ; preds = %6
  %48 = load i32, i32* %16, align 4
  store i32 %48, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %49 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %50 = load i8**, i8*** %11, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %20, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SDP_HDR_CONNECTION, align 4
  %56 = load i32, i32* @SDP_HDR_MEDIA, align 4
  %57 = call i64 @ct_sip_parse_sdp_addr(%struct.nf_conn* %49, i8* %51, i32 %52, i32 %54, i32 %55, i32 %56, i32* %16, i32* %17, %union.nf_inet_addr* %24)
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* %17, align 4
  store i32 %60, i32* %21, align 4
  br label %61

61:                                               ; preds = %59, %47
  %62 = load i32, i32* %20, align 4
  store i32 %62, i32* %18, align 4
  store i32 0, i32* %23, align 4
  br label %63

63:                                               ; preds = %210, %115, %88, %61
  %64 = load i32, i32* %23, align 4
  %65 = load i32, i32* @sdp_media_types, align 4
  %66 = call i32 @ARRAY_SIZE(i32 %65)
  %67 = icmp ult i32 %64, %66
  br i1 %67, label %68, label %213

68:                                               ; preds = %63
  %69 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %70 = load i8**, i8*** %11, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %18, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SDP_HDR_MEDIA, align 4
  %76 = load i32, i32* @SDP_HDR_UNSPEC, align 4
  %77 = call i64 @ct_sip_get_sdp_header(%struct.nf_conn* %69, i8* %71, i32 %72, i32 %74, i32 %75, i32 %76, i32* %18, i32* %19)
  %78 = icmp sle i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %213

80:                                               ; preds = %68
  %81 = load i8**, i8*** %11, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %19, align 4
  %85 = call %struct.sdp_media_type* @sdp_media_type(i8* %82, i32 %83, i32 %84)
  store %struct.sdp_media_type* %85, %struct.sdp_media_type** %29, align 8
  %86 = load %struct.sdp_media_type*, %struct.sdp_media_type** %29, align 8
  %87 = icmp ne %struct.sdp_media_type* %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %19, align 4
  %90 = load i32, i32* %18, align 4
  %91 = add i32 %90, %89
  store i32 %91, i32* %18, align 4
  br label %63

92:                                               ; preds = %80
  %93 = load %struct.sdp_media_type*, %struct.sdp_media_type** %29, align 8
  %94 = getelementptr inbounds %struct.sdp_media_type, %struct.sdp_media_type* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %18, align 4
  %97 = zext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %18, align 4
  %100 = load %struct.sdp_media_type*, %struct.sdp_media_type** %29, align 8
  %101 = getelementptr inbounds %struct.sdp_media_type, %struct.sdp_media_type* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %19, align 4
  %104 = zext i32 %103 to i64
  %105 = sub nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %19, align 4
  %107 = load i8**, i8*** %11, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %18, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = call i32 @simple_strtoul(i8* %111, i32* null, i32 10)
  store i32 %112, i32* %28, align 4
  %113 = load i32, i32* %28, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %92
  br label %63

116:                                              ; preds = %92
  %117 = load i32, i32* %28, align 4
  %118 = icmp ult i32 %117, 1024
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %28, align 4
  %121 = icmp ugt i32 %120, 65535
  br i1 %121, label %122, label %128

122:                                              ; preds = %119, %116
  %123 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %124 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %125 = load i32, i32* %28, align 4
  %126 = call i32 (%struct.sk_buff*, %struct.nf_conn*, i8*, ...) @nf_ct_helper_log(%struct.sk_buff* %123, %struct.nf_conn* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @NF_DROP, align 4
  store i32 %127, i32* %7, align 4
  br label %238

128:                                              ; preds = %119
  store i32 0, i32* %22, align 4
  %129 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %130 = load i8**, i8*** %11, align 8
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %18, align 4
  %133 = load i32*, i32** %12, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @SDP_HDR_CONNECTION, align 4
  %136 = load i32, i32* @SDP_HDR_MEDIA, align 4
  %137 = call i64 @ct_sip_parse_sdp_addr(%struct.nf_conn* %129, i8* %131, i32 %132, i32 %134, i32 %135, i32 %136, i32* %16, i32* %17, %union.nf_inet_addr* %25)
  %138 = icmp sgt i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %128
  %140 = load i32, i32* %17, align 4
  store i32 %140, i32* %22, align 4
  %141 = call i32 @memcpy(%union.nf_inet_addr* %26, %union.nf_inet_addr* %25, i32 4)
  br label %153

142:                                              ; preds = %128
  %143 = load i32, i32* %21, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = call i32 @memcpy(%union.nf_inet_addr* %26, %union.nf_inet_addr* %24, i32 4)
  br label %152

147:                                              ; preds = %142
  %148 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %149 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %150 = call i32 (%struct.sk_buff*, %struct.nf_conn*, i8*, ...) @nf_ct_helper_log(%struct.sk_buff* %148, %struct.nf_conn* %149, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %151 = load i32, i32* @NF_DROP, align 4
  store i32 %151, i32* %7, align 4
  br label %238

152:                                              ; preds = %145
  br label %153

153:                                              ; preds = %152, %139
  %154 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i8**, i8*** %11, align 8
  %158 = load i32*, i32** %12, align 8
  %159 = load i32, i32* %28, align 4
  %160 = call i32 @htons(i32 %159)
  %161 = load %struct.sdp_media_type*, %struct.sdp_media_type** %29, align 8
  %162 = getelementptr inbounds %struct.sdp_media_type, %struct.sdp_media_type* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %19, align 4
  %166 = call i32 @set_expected_rtp_rtcp(%struct.sk_buff* %154, i32 %155, i32 %156, i8** %157, i32* %158, %union.nf_inet_addr* %26, i32 %160, i32 %163, i32 %164, i32 %165)
  store i32 %166, i32* %30, align 4
  %167 = load i32, i32* %30, align 4
  %168 = load i32, i32* @NF_ACCEPT, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %153
  %171 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %172 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %173 = call i32 (%struct.sk_buff*, %struct.nf_conn*, i8*, ...) @nf_ct_helper_log(%struct.sk_buff* %171, %struct.nf_conn* %172, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %174 = load i32, i32* %30, align 4
  store i32 %174, i32* %7, align 4
  br label %238

175:                                              ; preds = %153
  %176 = load i32, i32* %22, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %210

178:                                              ; preds = %175
  %179 = load %struct.nf_nat_sip_hooks*, %struct.nf_nat_sip_hooks** %27, align 8
  %180 = icmp ne %struct.nf_nat_sip_hooks* %179, null
  br i1 %180, label %181, label %210

181:                                              ; preds = %178
  %182 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %183 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @IPS_NAT_MASK, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %210

188:                                              ; preds = %181
  %189 = load %struct.nf_nat_sip_hooks*, %struct.nf_nat_sip_hooks** %27, align 8
  %190 = getelementptr inbounds %struct.nf_nat_sip_hooks, %struct.nf_nat_sip_hooks* %189, i32 0, i32 0
  %191 = load i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32, i32, %union.nf_inet_addr*)*, i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32, i32, %union.nf_inet_addr*)** %190, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %10, align 4
  %195 = load i8**, i8*** %11, align 8
  %196 = load i32*, i32** %12, align 8
  %197 = load i32, i32* %18, align 4
  %198 = load i32, i32* @SDP_HDR_CONNECTION, align 4
  %199 = load i32, i32* @SDP_HDR_MEDIA, align 4
  %200 = call i32 %191(%struct.sk_buff* %192, i32 %193, i32 %194, i8** %195, i32* %196, i32 %197, i32 %198, i32 %199, %union.nf_inet_addr* %26)
  store i32 %200, i32* %30, align 4
  %201 = load i32, i32* %30, align 4
  %202 = load i32, i32* @NF_ACCEPT, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %209

204:                                              ; preds = %188
  %205 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %206 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %207 = call i32 (%struct.sk_buff*, %struct.nf_conn*, i8*, ...) @nf_ct_helper_log(%struct.sk_buff* %205, %struct.nf_conn* %206, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %208 = load i32, i32* %30, align 4
  store i32 %208, i32* %7, align 4
  br label %238

209:                                              ; preds = %188
  br label %210

210:                                              ; preds = %209, %181, %178, %175
  %211 = load i32, i32* %23, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %23, align 4
  br label %63

213:                                              ; preds = %79, %63
  %214 = load i32, i32* @nf_nat_sip_hooks, align 4
  %215 = call %struct.nf_nat_sip_hooks* @rcu_dereference(i32 %214)
  store %struct.nf_nat_sip_hooks* %215, %struct.nf_nat_sip_hooks** %27, align 8
  %216 = load %struct.nf_nat_sip_hooks*, %struct.nf_nat_sip_hooks** %27, align 8
  %217 = icmp ne %struct.nf_nat_sip_hooks* %216, null
  br i1 %217, label %218, label %236

218:                                              ; preds = %213
  %219 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %220 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @IPS_NAT_MASK, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %236

225:                                              ; preds = %218
  %226 = load %struct.nf_nat_sip_hooks*, %struct.nf_nat_sip_hooks** %27, align 8
  %227 = getelementptr inbounds %struct.nf_nat_sip_hooks, %struct.nf_nat_sip_hooks* %226, i32 0, i32 1
  %228 = load i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32, %union.nf_inet_addr*)*, i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32, %union.nf_inet_addr*)** %227, align 8
  %229 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* %10, align 4
  %232 = load i8**, i8*** %11, align 8
  %233 = load i32*, i32** %12, align 8
  %234 = load i32, i32* %20, align 4
  %235 = call i32 %228(%struct.sk_buff* %229, i32 %230, i32 %231, i8** %232, i32* %233, i32 %234, %union.nf_inet_addr* %26)
  store i32 %235, i32* %30, align 4
  br label %236

236:                                              ; preds = %225, %218, %213
  %237 = load i32, i32* %30, align 4
  store i32 %237, i32* %7, align 4
  br label %238

238:                                              ; preds = %236, %204, %170, %147, %122, %45
  %239 = load i32, i32* %7, align 4
  ret i32 %239
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.nf_nat_sip_hooks* @rcu_dereference(i32) #1

declare dso_local i64 @ct_sip_get_sdp_header(%struct.nf_conn*, i8*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @ct_sip_parse_sdp_addr(%struct.nf_conn*, i8*, i32, i32, i32, i32, i32*, i32*, %union.nf_inet_addr*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.sdp_media_type* @sdp_media_type(i8*, i32, i32) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @nf_ct_helper_log(%struct.sk_buff*, %struct.nf_conn*, i8*, ...) #1

declare dso_local i32 @memcpy(%union.nf_inet_addr*, %union.nf_inet_addr*, i32) #1

declare dso_local i32 @set_expected_rtp_rtcp(%struct.sk_buff*, i32, i32, i8**, i32*, %union.nf_inet_addr*, i32, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
