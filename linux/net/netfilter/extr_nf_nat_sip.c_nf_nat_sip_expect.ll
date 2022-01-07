; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_sip.c_nf_nat_sip_expect.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_sip.c_nf_nat_sip_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_expect = type { i32, %struct.TYPE_19__, %struct.TYPE_17__, %union.nf_inet_addr, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %union.nf_inet_addr }
%struct.TYPE_15__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64 }
%union.nf_inet_addr = type { i32 }
%struct.nf_conn = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__, %struct.TYPE_22__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %union.nf_inet_addr }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %union.nf_inet_addr }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.nf_ct_sip_master = type { i64 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@nf_nat_sip_expected = common dso_local global i32 0, align 4
@NF_CT_EXP_F_SKIP_MASTER = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"all ports in use for SIP\00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot mangle packet\00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i8**, i32*, %struct.nf_conntrack_expect*, i32, i32)* @nf_nat_sip_expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_nat_sip_expect(%struct.sk_buff* %0, i32 %1, i32 %2, i8** %3, i32* %4, %struct.nf_conntrack_expect* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.nf_conntrack_expect*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.nf_conn*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.nf_ct_sip_master*, align 8
  %22 = alloca %union.nf_inet_addr, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8** %3, i8*** %13, align 8
  store i32* %4, i32** %14, align 8
  store %struct.nf_conntrack_expect* %5, %struct.nf_conntrack_expect** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %31 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %30, i32* %18)
  store %struct.nf_conn* %31, %struct.nf_conn** %19, align 8
  %32 = load i32, i32* %18, align 4
  %33 = call i32 @CTINFO2DIR(i32 %32)
  store i32 %33, i32* %20, align 4
  %34 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %35 = call %struct.nf_ct_sip_master* @nfct_help_data(%struct.nf_conn* %34)
  store %struct.nf_ct_sip_master* %35, %struct.nf_ct_sip_master** %21, align 8
  %36 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 9
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %25, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %26, align 8
  %41 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %42 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %41, i32 0, i32 0
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %42, align 8
  %44 = load i32, i32* %20, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  %50 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %51 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %50, i32 0, i32 0
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %51, align 8
  %53 = load i32, i32* %20, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 1
  %62 = call i64 @nf_inet_addr_cmp(%union.nf_inet_addr* %49, %union.nf_inet_addr* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %8
  %65 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %66 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = bitcast %union.nf_inet_addr* %22 to i8*
  %70 = bitcast %union.nf_inet_addr* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 8 %70, i64 4, i1 false)
  br label %86

71:                                               ; preds = %8
  %72 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %73 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %72, i32 0, i32 0
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %73, align 8
  %75 = load i32, i32* %20, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 1
  %84 = bitcast %union.nf_inet_addr* %22 to i8*
  %85 = bitcast %union.nf_inet_addr* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 8 %85, i64 4, i1 false)
  br label %86

86:                                               ; preds = %71, %64
  %87 = load %struct.nf_ct_sip_master*, %struct.nf_ct_sip_master** %21, align 8
  %88 = getelementptr inbounds %struct.nf_ct_sip_master, %struct.nf_ct_sip_master* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %105

92:                                               ; preds = %86
  %93 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %94 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %93, i32 0, i32 0
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %94, align 8
  %96 = load i32, i32* %20, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  br label %105

105:                                              ; preds = %92, %91
  %106 = phi i64 [ %89, %91 ], [ %104, %92 ]
  store i64 %106, i64* %24, align 8
  %107 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %108 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %24, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %105
  %117 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %118 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %117, i32 0, i32 0
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %118, align 8
  %120 = load i32, i32* %20, align 4
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @ntohs(i64 %131)
  store i64 %132, i64* %23, align 8
  br label %142

133:                                              ; preds = %105
  %134 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %135 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @ntohs(i64 %140)
  store i64 %141, i64* %23, align 8
  br label %142

142:                                              ; preds = %133, %116
  %143 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %144 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %143, i32 0, i32 3
  %145 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %146 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = bitcast %union.nf_inet_addr* %144 to i8*
  %150 = bitcast %union.nf_inet_addr* %148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %149, i8* align 8 %150, i64 4, i1 false)
  %151 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %152 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = bitcast %union.nf_inet_addr* %154 to i8*
  %156 = bitcast %union.nf_inet_addr* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %155, i8* align 4 %156, i64 4, i1 false)
  %157 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %158 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %165 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  store i64 %163, i64* %167, align 8
  %168 = load i32, i32* %20, align 4
  %169 = icmp ne i32 %168, 0
  %170 = xor i1 %169, true
  %171 = zext i1 %170 to i32
  %172 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %173 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* @nf_nat_sip_expected, align 4
  %175 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %176 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %203, %142
  %178 = load i64, i64* %23, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %206

180:                                              ; preds = %177
  %181 = load i64, i64* %23, align 8
  %182 = call i64 @htons(i64 %181)
  %183 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %184 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i32 0, i32 0
  store i64 %182, i64* %188, align 8
  %189 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %190 = load i32, i32* @NF_CT_EXP_F_SKIP_MASTER, align 4
  %191 = call i32 @nf_ct_expect_related(%struct.nf_conntrack_expect* %189, i32 %190)
  store i32 %191, i32* %28, align 4
  %192 = load i32, i32* %28, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %180
  br label %206

195:                                              ; preds = %180
  %196 = load i32, i32* %28, align 4
  %197 = load i32, i32* @EBUSY, align 4
  %198 = sub nsw i32 0, %197
  %199 = icmp ne i32 %196, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  store i64 0, i64* %23, align 8
  br label %206

201:                                              ; preds = %195
  br label %202

202:                                              ; preds = %201
  br label %203

203:                                              ; preds = %202
  %204 = load i64, i64* %23, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %23, align 8
  br label %177

206:                                              ; preds = %200, %194, %177
  %207 = load i64, i64* %23, align 8
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %211 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %212 = call i32 @nf_ct_helper_log(%struct.sk_buff* %210, %struct.nf_conn* %211, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %213 = load i32, i32* @NF_DROP, align 4
  store i32 %213, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %262

214:                                              ; preds = %206
  %215 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %216 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 1
  %219 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %220 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %219, i32 0, i32 3
  %221 = call i64 @nf_inet_addr_cmp(%union.nf_inet_addr* %218, %union.nf_inet_addr* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %237

223:                                              ; preds = %214
  %224 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %225 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %232 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %230, %235
  br i1 %236, label %237, label %256

237:                                              ; preds = %223, %214
  %238 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %239 = load i64, i64* %23, align 8
  %240 = call i32 @sip_sprintf_addr_port(%struct.nf_conn* %238, i8* %40, %union.nf_inet_addr* %22, i64 %239)
  store i32 %240, i32* %27, align 4
  %241 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %242 = load i32, i32* %11, align 4
  %243 = load i32, i32* %12, align 4
  %244 = load i8**, i8*** %13, align 8
  %245 = load i32*, i32** %14, align 8
  %246 = load i32, i32* %16, align 4
  %247 = load i32, i32* %17, align 4
  %248 = load i32, i32* %27, align 4
  %249 = call i32 @mangle_packet(%struct.sk_buff* %241, i32 %242, i32 %243, i8** %244, i32* %245, i32 %246, i32 %247, i8* %40, i32 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %255, label %251

251:                                              ; preds = %237
  %252 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %253 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %254 = call i32 @nf_ct_helper_log(%struct.sk_buff* %252, %struct.nf_conn* %253, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %258

255:                                              ; preds = %237
  br label %256

256:                                              ; preds = %255, %223
  %257 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %257, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %262

258:                                              ; preds = %251
  %259 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %260 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %259)
  %261 = load i32, i32* @NF_DROP, align 4
  store i32 %261, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %262

262:                                              ; preds = %258, %256, %209
  %263 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %263)
  %264 = load i32, i32* %9, align 4
  ret i32 %264
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local %struct.nf_ct_sip_master* @nfct_help_data(%struct.nf_conn*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @nf_inet_addr_cmp(%union.nf_inet_addr*, %union.nf_inet_addr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @ntohs(i64) #1

declare dso_local i64 @htons(i64) #1

declare dso_local i32 @nf_ct_expect_related(%struct.nf_conntrack_expect*, i32) #1

declare dso_local i32 @nf_ct_helper_log(%struct.sk_buff*, %struct.nf_conn*, i8*) #1

declare dso_local i32 @sip_sprintf_addr_port(%struct.nf_conn*, i8*, %union.nf_inet_addr*, i64) #1

declare dso_local i32 @mangle_packet(%struct.sk_buff*, i32, i32, i8**, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
