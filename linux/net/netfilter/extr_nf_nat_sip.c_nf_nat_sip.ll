; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_sip.c_nf_nat_sip.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_sip.c_nf_nat_sip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.nf_conn = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.nf_ct_sip_master = type { i64 }
%union.nf_inet_addr = type { i32 }
%struct.udphdr = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"SIP/2.0\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot mangle SIP message\00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@SIP_HDR_VIA_TCP = common dso_local global i32 0, align 4
@SIP_HDR_VIA_UDP = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"cannot mangle Via header\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"maddr=\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"cannot mangle maddr\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"received=\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"cannot mangle received\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"rport=\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"cannot mangle rport\00", align 1
@SIP_HDR_CONTACT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"cannot mangle contact\00", align 1
@SIP_HDR_FROM = common dso_local global i32 0, align 4
@SIP_HDR_TO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"cannot mangle SIP from/to\00", align 1
@IP_CT_DIR_REPLY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"cannot mangle packet\00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i8**, i32*)* @nf_nat_sip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_nat_sip(%struct.sk_buff* %0, i32 %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nf_conn*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nf_ct_sip_master*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %union.nf_inet_addr, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca %struct.udphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %35, i32* %12)
  store %struct.nf_conn* %36, %struct.nf_conn** %13, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @CTINFO2DIR(i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %40 = call %struct.nf_ct_sip_master* @nfct_help_data(%struct.nf_conn* %39)
  store %struct.nf_ct_sip_master* %40, %struct.nf_ct_sip_master** %15, align 8
  %41 = load i8**, i8*** %10, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %44 = call i64 @strncasecmp(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %5
  %47 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %48 = load i8**, i8*** %10, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @ct_sip_parse_request(%struct.nf_conn* %47, i8* %49, i32 %51, i32* %17, i32* %18, %union.nf_inet_addr* %20, i64* %21)
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %46
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i8**, i8*** %10, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %18, align 4
  %62 = load i64, i64* %21, align 8
  %63 = call i32 @map_addr(%struct.sk_buff* %55, i32 %56, i32 %57, i8** %58, i32* %59, i32 %60, i32 %61, %union.nf_inet_addr* %20, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %54
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %68 = call i32 @nf_ct_helper_log(%struct.sk_buff* %66, %struct.nf_conn* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @NF_DROP, align 4
  store i32 %69, i32* %6, align 4
  br label %500

70:                                               ; preds = %54, %46
  store i32 1, i32* %22, align 4
  br label %72

71:                                               ; preds = %5
  store i32 0, i32* %22, align 4
  br label %72

72:                                               ; preds = %71, %70
  %73 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %74 = call i64 @nf_ct_protonum(%struct.nf_conn* %73)
  %75 = load i64, i64* @IPPROTO_TCP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @SIP_HDR_VIA_TCP, align 4
  store i32 %78, i32* %19, align 4
  br label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @SIP_HDR_VIA_UDP, align 4
  store i32 %80, i32* %19, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %83 = load i8**, i8*** %10, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %19, align 4
  %88 = call i64 @ct_sip_parse_header_uri(%struct.nf_conn* %82, i8* %84, i32* null, i32 %86, i32 %87, i32* null, i32* %17, i32* %18, %union.nf_inet_addr* %20, i64* %21)
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %400

90:                                               ; preds = %81
  %91 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 %92, 9
  %94 = call i8* @llvm.stacksave()
  store i8* %94, i8** %30, align 8
  %95 = alloca i8, i64 %93, align 16
  store i64 %93, i64* %31, align 8
  %96 = load i32, i32* %22, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %127

98:                                               ; preds = %90
  %99 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %100 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %99, i32 0, i32 0
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = call i64 @nf_inet_addr_cmp(%union.nf_inet_addr* %20, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %98
  %111 = load i64, i64* %21, align 8
  %112 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %113 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %112, i32 0, i32 0
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %111, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %110, %98
  store i32 2, i32* %32, align 4
  br label %396

126:                                              ; preds = %110
  br label %156

127:                                              ; preds = %90
  %128 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %129 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %128, i32 0, i32 0
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = load i32, i32* %14, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = call i64 @nf_inet_addr_cmp(%union.nf_inet_addr* %20, i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %127
  %140 = load i64, i64* %21, align 8
  %141 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %142 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %141, i32 0, i32 0
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %142, align 8
  %144 = load i32, i32* %14, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %140, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %139, %127
  store i32 2, i32* %32, align 4
  br label %396

155:                                              ; preds = %139
  br label %156

156:                                              ; preds = %155, %126
  %157 = load i32*, i32** %11, align 8
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %24, align 4
  %159 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load i8**, i8*** %10, align 8
  %163 = load i32*, i32** %11, align 8
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* %18, align 4
  %166 = load i64, i64* %21, align 8
  %167 = call i32 @map_addr(%struct.sk_buff* %159, i32 %160, i32 %161, i8** %162, i32* %163, i32 %164, i32 %165, %union.nf_inet_addr* %20, i64 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %156
  %170 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %171 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %172 = call i32 @nf_ct_helper_log(%struct.sk_buff* %170, %struct.nf_conn* %171, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %173 = load i32, i32* @NF_DROP, align 4
  store i32 %173, i32* %6, align 4
  store i32 1, i32* %32, align 4
  br label %396

174:                                              ; preds = %156
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* %18, align 4
  %177 = add i32 %175, %176
  %178 = load i32*, i32** %11, align 8
  %179 = load i32, i32* %178, align 4
  %180 = add i32 %177, %179
  %181 = load i32, i32* %24, align 4
  %182 = sub i32 %180, %181
  store i32 %182, i32* %25, align 4
  %183 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %184 = load i8**, i8*** %10, align 8
  %185 = load i8*, i8** %184, align 8
  %186 = load i32, i32* %25, align 4
  %187 = load i32*, i32** %11, align 8
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @ct_sip_parse_address_param(%struct.nf_conn* %183, i8* %185, i32 %186, i32 %188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %26, i32* %27, %union.nf_inet_addr* %20, i32 1)
  %190 = icmp sgt i64 %189, 0
  br i1 %190, label %191, label %249

191:                                              ; preds = %174
  %192 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %193 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %192, i32 0, i32 0
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %193, align 8
  %195 = load i32, i32* %14, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = call i64 @nf_inet_addr_cmp(%union.nf_inet_addr* %20, i32* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %249

203:                                              ; preds = %191
  %204 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %205 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %204, i32 0, i32 0
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %205, align 8
  %207 = load i32, i32* %14, align 4
  %208 = icmp ne i32 %207, 0
  %209 = xor i1 %208, true
  %210 = zext i1 %209 to i32
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  %216 = call i64 @nf_inet_addr_cmp(%union.nf_inet_addr* %20, i32* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %249, label %218

218:                                              ; preds = %203
  %219 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %220 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %221 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %220, i32 0, i32 0
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %221, align 8
  %223 = load i32, i32* %14, align 4
  %224 = icmp ne i32 %223, 0
  %225 = xor i1 %224, true
  %226 = zext i1 %225 to i32
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 1
  %232 = call i32 @sip_sprintf_addr(%struct.nf_conn* %219, i8* %95, i32* %231, i32 1)
  store i32 %232, i32* %28, align 4
  %233 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* %9, align 4
  %236 = load i8**, i8*** %10, align 8
  %237 = load i32*, i32** %11, align 8
  %238 = load i32, i32* %26, align 4
  %239 = load i32, i32* %27, align 4
  %240 = load i32, i32* %28, align 4
  %241 = call i32 @mangle_packet(%struct.sk_buff* %233, i32 %234, i32 %235, i8** %236, i32* %237, i32 %238, i32 %239, i8* %95, i32 %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %218
  %244 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %245 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %246 = call i32 @nf_ct_helper_log(%struct.sk_buff* %244, %struct.nf_conn* %245, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %247 = load i32, i32* @NF_DROP, align 4
  store i32 %247, i32* %6, align 4
  store i32 1, i32* %32, align 4
  br label %396

248:                                              ; preds = %218
  br label %249

249:                                              ; preds = %248, %203, %191, %174
  %250 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %251 = load i8**, i8*** %10, align 8
  %252 = load i8*, i8** %251, align 8
  %253 = load i32, i32* %25, align 4
  %254 = load i32*, i32** %11, align 8
  %255 = load i32, i32* %254, align 4
  %256 = call i64 @ct_sip_parse_address_param(%struct.nf_conn* %250, i8* %252, i32 %253, i32 %255, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* %26, i32* %27, %union.nf_inet_addr* %20, i32 0)
  %257 = icmp sgt i64 %256, 0
  br i1 %257, label %258, label %316

258:                                              ; preds = %249
  %259 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %260 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %259, i32 0, i32 0
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %260, align 8
  %262 = load i32, i32* %14, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 1
  %268 = call i64 @nf_inet_addr_cmp(%union.nf_inet_addr* %20, i32* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %316

270:                                              ; preds = %258
  %271 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %272 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %271, i32 0, i32 0
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %272, align 8
  %274 = load i32, i32* %14, align 4
  %275 = icmp ne i32 %274, 0
  %276 = xor i1 %275, true
  %277 = zext i1 %276 to i32
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 1
  %283 = call i64 @nf_inet_addr_cmp(%union.nf_inet_addr* %20, i32* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %316, label %285

285:                                              ; preds = %270
  %286 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %287 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %288 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %287, i32 0, i32 0
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %288, align 8
  %290 = load i32, i32* %14, align 4
  %291 = icmp ne i32 %290, 0
  %292 = xor i1 %291, true
  %293 = zext i1 %292 to i32
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 1
  %299 = call i32 @sip_sprintf_addr(%struct.nf_conn* %286, i8* %95, i32* %298, i32 0)
  store i32 %299, i32* %28, align 4
  %300 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %301 = load i32, i32* %8, align 4
  %302 = load i32, i32* %9, align 4
  %303 = load i8**, i8*** %10, align 8
  %304 = load i32*, i32** %11, align 8
  %305 = load i32, i32* %26, align 4
  %306 = load i32, i32* %27, align 4
  %307 = load i32, i32* %28, align 4
  %308 = call i32 @mangle_packet(%struct.sk_buff* %300, i32 %301, i32 %302, i8** %303, i32* %304, i32 %305, i32 %306, i8* %95, i32 %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %315, label %310

310:                                              ; preds = %285
  %311 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %312 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %313 = call i32 @nf_ct_helper_log(%struct.sk_buff* %311, %struct.nf_conn* %312, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %314 = load i32, i32* @NF_DROP, align 4
  store i32 %314, i32* %6, align 4
  store i32 1, i32* %32, align 4
  br label %396

315:                                              ; preds = %285
  br label %316

316:                                              ; preds = %315, %270, %258, %249
  %317 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %318 = load i8**, i8*** %10, align 8
  %319 = load i8*, i8** %318, align 8
  %320 = load i32, i32* %25, align 4
  %321 = load i32*, i32** %11, align 8
  %322 = load i32, i32* %321, align 4
  %323 = call i64 @ct_sip_parse_numerical_param(%struct.nf_conn* %317, i8* %319, i32 %320, i32 %322, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* %26, i32* %27, i32* %29)
  %324 = icmp sgt i64 %323, 0
  br i1 %324, label %325, label %395

325:                                              ; preds = %316
  %326 = load i32, i32* %29, align 4
  %327 = call i64 @htons(i32 %326)
  %328 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %329 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %328, i32 0, i32 0
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %329, align 8
  %331 = load i32, i32* %14, align 4
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = icmp eq i64 %327, %339
  br i1 %340, label %341, label %395

341:                                              ; preds = %325
  %342 = load i32, i32* %29, align 4
  %343 = call i64 @htons(i32 %342)
  %344 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %345 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %344, i32 0, i32 0
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %345, align 8
  %347 = load i32, i32* %14, align 4
  %348 = icmp ne i32 %347, 0
  %349 = xor i1 %348, true
  %350 = zext i1 %349 to i32
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %343, %358
  br i1 %359, label %360, label %395

360:                                              ; preds = %341
  %361 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %362 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %361, i32 0, i32 0
  %363 = load %struct.TYPE_16__*, %struct.TYPE_16__** %362, align 8
  %364 = load i32, i32* %14, align 4
  %365 = icmp ne i32 %364, 0
  %366 = xor i1 %365, true
  %367 = zext i1 %366 to i32
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %363, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  store i64 %375, i64* %33, align 8
  %376 = load i64, i64* %33, align 8
  %377 = call i32 @ntohs(i64 %376)
  %378 = call i32 @sprintf(i8* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %377)
  store i32 %378, i32* %28, align 4
  %379 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %380 = load i32, i32* %8, align 4
  %381 = load i32, i32* %9, align 4
  %382 = load i8**, i8*** %10, align 8
  %383 = load i32*, i32** %11, align 8
  %384 = load i32, i32* %26, align 4
  %385 = load i32, i32* %27, align 4
  %386 = load i32, i32* %28, align 4
  %387 = call i32 @mangle_packet(%struct.sk_buff* %379, i32 %380, i32 %381, i8** %382, i32* %383, i32 %384, i32 %385, i8* %95, i32 %386)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %394, label %389

389:                                              ; preds = %360
  %390 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %391 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %392 = call i32 @nf_ct_helper_log(%struct.sk_buff* %390, %struct.nf_conn* %391, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %393 = load i32, i32* @NF_DROP, align 4
  store i32 %393, i32* %6, align 4
  store i32 1, i32* %32, align 4
  br label %396

394:                                              ; preds = %360
  br label %395

395:                                              ; preds = %394, %341, %325, %316
  store i32 0, i32* %32, align 4
  br label %396

396:                                              ; preds = %154, %125, %395, %389, %310, %243, %169
  %397 = load i8*, i8** %30, align 8
  call void @llvm.stackrestore(i8* %397)
  %398 = load i32, i32* %32, align 4
  switch i32 %398, label %502 [
    i32 0, label %399
    i32 1, label %500
    i32 2, label %401
  ]

399:                                              ; preds = %396
  br label %400

400:                                              ; preds = %399, %81
  br label %401

401:                                              ; preds = %400, %396
  store i32 0, i32* %16, align 4
  store i32 0, i32* %23, align 4
  br label %402

402:                                              ; preds = %427, %401
  %403 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %404 = load i8**, i8*** %10, align 8
  %405 = load i8*, i8** %404, align 8
  %406 = load i32*, i32** %11, align 8
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* @SIP_HDR_CONTACT, align 4
  %409 = call i64 @ct_sip_parse_header_uri(%struct.nf_conn* %403, i8* %405, i32* %16, i32 %407, i32 %408, i32* %23, i32* %17, i32* %18, %union.nf_inet_addr* %20, i64* %21)
  %410 = icmp sgt i64 %409, 0
  br i1 %410, label %411, label %428

411:                                              ; preds = %402
  %412 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %413 = load i32, i32* %8, align 4
  %414 = load i32, i32* %9, align 4
  %415 = load i8**, i8*** %10, align 8
  %416 = load i32*, i32** %11, align 8
  %417 = load i32, i32* %17, align 4
  %418 = load i32, i32* %18, align 4
  %419 = load i64, i64* %21, align 8
  %420 = call i32 @map_addr(%struct.sk_buff* %412, i32 %413, i32 %414, i8** %415, i32* %416, i32 %417, i32 %418, %union.nf_inet_addr* %20, i64 %419)
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %427, label %422

422:                                              ; preds = %411
  %423 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %424 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %425 = call i32 @nf_ct_helper_log(%struct.sk_buff* %423, %struct.nf_conn* %424, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %426 = load i32, i32* @NF_DROP, align 4
  store i32 %426, i32* %6, align 4
  br label %500

427:                                              ; preds = %411
  br label %402

428:                                              ; preds = %402
  %429 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %430 = load i32, i32* %8, align 4
  %431 = load i32, i32* %9, align 4
  %432 = load i8**, i8*** %10, align 8
  %433 = load i32*, i32** %11, align 8
  %434 = load i32, i32* @SIP_HDR_FROM, align 4
  %435 = call i32 @map_sip_addr(%struct.sk_buff* %429, i32 %430, i32 %431, i8** %432, i32* %433, i32 %434)
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %446

437:                                              ; preds = %428
  %438 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %439 = load i32, i32* %8, align 4
  %440 = load i32, i32* %9, align 4
  %441 = load i8**, i8*** %10, align 8
  %442 = load i32*, i32** %11, align 8
  %443 = load i32, i32* @SIP_HDR_TO, align 4
  %444 = call i32 @map_sip_addr(%struct.sk_buff* %438, i32 %439, i32 %440, i8** %441, i32* %442, i32 %443)
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %451, label %446

446:                                              ; preds = %437, %428
  %447 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %448 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %449 = call i32 @nf_ct_helper_log(%struct.sk_buff* %447, %struct.nf_conn* %448, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %450 = load i32, i32* @NF_DROP, align 4
  store i32 %450, i32* %6, align 4
  br label %500

451:                                              ; preds = %437
  %452 = load i32, i32* %14, align 4
  %453 = load i32, i32* @IP_CT_DIR_REPLY, align 4
  %454 = icmp eq i32 %452, %453
  br i1 %454, label %455, label %498

455:                                              ; preds = %451
  %456 = load %struct.nf_ct_sip_master*, %struct.nf_ct_sip_master** %15, align 8
  %457 = getelementptr inbounds %struct.nf_ct_sip_master, %struct.nf_ct_sip_master* %456, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %498

460:                                              ; preds = %455
  %461 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %462 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %463 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 8
  %465 = call i64 @skb_ensure_writable(%struct.sk_buff* %461, i32 %464)
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %472

467:                                              ; preds = %460
  %468 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %469 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %470 = call i32 @nf_ct_helper_log(%struct.sk_buff* %468, %struct.nf_conn* %469, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %471 = load i32, i32* @NF_DROP, align 4
  store i32 %471, i32* %6, align 4
  br label %500

472:                                              ; preds = %460
  %473 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %474 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %473, i32 0, i32 0
  %475 = load i64, i64* %474, align 8
  %476 = inttoptr i64 %475 to i8*
  %477 = load i32, i32* %8, align 4
  %478 = zext i32 %477 to i64
  %479 = getelementptr i8, i8* %476, i64 %478
  %480 = bitcast i8* %479 to %struct.udphdr*
  store %struct.udphdr* %480, %struct.udphdr** %34, align 8
  %481 = load %struct.nf_ct_sip_master*, %struct.nf_ct_sip_master** %15, align 8
  %482 = getelementptr inbounds %struct.nf_ct_sip_master, %struct.nf_ct_sip_master* %481, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = load %struct.udphdr*, %struct.udphdr** %34, align 8
  %485 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %484, i32 0, i32 0
  store i64 %483, i64* %485, align 8
  %486 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %487 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %488 = load i32, i32* %12, align 4
  %489 = load i32, i32* %8, align 4
  %490 = call i32 @nf_nat_mangle_udp_packet(%struct.sk_buff* %486, %struct.nf_conn* %487, i32 %488, i32 %489, i32 0, i32 0, i32* null, i32 0)
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %497, label %492

492:                                              ; preds = %472
  %493 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %494 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %495 = call i32 @nf_ct_helper_log(%struct.sk_buff* %493, %struct.nf_conn* %494, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %496 = load i32, i32* @NF_DROP, align 4
  store i32 %496, i32* %6, align 4
  br label %500

497:                                              ; preds = %472
  br label %498

498:                                              ; preds = %497, %455, %451
  %499 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %499, i32* %6, align 4
  br label %500

500:                                              ; preds = %498, %492, %467, %446, %422, %396, %65
  %501 = load i32, i32* %6, align 4
  ret i32 %501

502:                                              ; preds = %396
  unreachable
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local %struct.nf_ct_sip_master* @nfct_help_data(%struct.nf_conn*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ct_sip_parse_request(%struct.nf_conn*, i8*, i32, i32*, i32*, %union.nf_inet_addr*, i64*) #1

declare dso_local i32 @map_addr(%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32, %union.nf_inet_addr*, i64) #1

declare dso_local i32 @nf_ct_helper_log(%struct.sk_buff*, %struct.nf_conn*, i8*) #1

declare dso_local i64 @nf_ct_protonum(%struct.nf_conn*) #1

declare dso_local i64 @ct_sip_parse_header_uri(%struct.nf_conn*, i8*, i32*, i32, i32, i32*, i32*, i32*, %union.nf_inet_addr*, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @nf_inet_addr_cmp(%union.nf_inet_addr*, i32*) #1

declare dso_local i64 @ct_sip_parse_address_param(%struct.nf_conn*, i8*, i32, i32, i8*, i32*, i32*, %union.nf_inet_addr*, i32) #1

declare dso_local i32 @sip_sprintf_addr(%struct.nf_conn*, i8*, i32*, i32) #1

declare dso_local i32 @mangle_packet(%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32, i8*, i32) #1

declare dso_local i64 @ct_sip_parse_numerical_param(%struct.nf_conn*, i8*, i32, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ntohs(i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @map_sip_addr(%struct.sk_buff*, i32, i32, i8**, i32*, i32) #1

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @nf_nat_mangle_udp_packet(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
