; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_process_register_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_process_register_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %union.nf_inet_addr }
%union.nf_inet_addr = type { i32 }
%struct.nf_ct_sip_master = type { i32 }
%struct.nf_conntrack_expect = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.nf_nat_sip_hooks = type { i32 (%struct.sk_buff*, i32, i32, i8**, i32*, %struct.nf_conntrack_expect.0*, i32, i32)* }
%struct.nf_conntrack_expect.0 = type opaque
%struct.TYPE_10__ = type { i32 }

@IPS_EXPECTED = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@SIP_HDR_EXPIRES = common dso_local global i32 0, align 4
@SIP_HDR_CONTACT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cannot parse contact\00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"expires=\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot parse expires\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"cannot alloc expectation\00", align 1
@sip_direct_signalling = common dso_local global i64 0, align 8
@SIP_EXPECT_SIGNALLING = common dso_local global i32 0, align 4
@sip_timeout = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@NF_CT_EXPECT_PERMANENT = common dso_local global i32 0, align 4
@NF_CT_EXPECT_INACTIVE = common dso_local global i32 0, align 4
@nf_nat_sip_hooks = common dso_local global i32 0, align 4
@IPS_NAT_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"cannot add expectation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i8**, i32*, i32)* @process_register_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_register_request(%struct.sk_buff* %0, i32 %1, i32 %2, i8** %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nf_conn*, align 8
  %16 = alloca %struct.nf_ct_sip_master*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.nf_conntrack_expect*, align 8
  %21 = alloca %union.nf_inet_addr*, align 8
  %22 = alloca %union.nf_inet_addr, align 4
  %23 = alloca %struct.nf_nat_sip_hooks*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %28, i32* %14)
  store %struct.nf_conn* %29, %struct.nf_conn** %15, align 8
  %30 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %31 = call %struct.nf_ct_sip_master* @nfct_help_data(%struct.nf_conn* %30)
  store %struct.nf_ct_sip_master* %31, %struct.nf_ct_sip_master** %16, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @CTINFO2DIR(i32 %32)
  store i32 %33, i32* %17, align 4
  store i32 0, i32* %26, align 4
  %34 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %35 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IPS_EXPECTED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %6
  %41 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %41, i32* %7, align 4
  br label %228

42:                                               ; preds = %6
  %43 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %44 = load i8**, i8*** %11, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SIP_HDR_EXPIRES, align 4
  %49 = call i64 @ct_sip_get_header(%struct.nf_conn* %43, i8* %45, i32 0, i32 %47, i32 %48, i32* %18, i32* %19)
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load i8**, i8*** %11, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %18, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = call i32 @simple_strtoul(i8* %56, i32* null, i32 10)
  store i32 %57, i32* %26, align 4
  br label %58

58:                                               ; preds = %51, %42
  %59 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %60 = load i8**, i8*** %11, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SIP_HDR_CONTACT, align 4
  %65 = call i32 @ct_sip_parse_header_uri(%struct.nf_conn* %59, i8* %61, i32* null, i32 %63, i32 %64, i32* null, i32* %18, i32* %19, %union.nf_inet_addr* %22, i32* %24)
  store i32 %65, i32* %27, align 4
  %66 = load i32, i32* %27, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %71 = call i32 @nf_ct_helper_log(%struct.sk_buff* %69, %struct.nf_conn* %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @NF_DROP, align 4
  store i32 %72, i32* %7, align 4
  br label %228

73:                                               ; preds = %58
  %74 = load i32, i32* %27, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %77, i32* %7, align 4
  br label %228

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %81 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = load i32, i32* %17, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = call i32 @nf_inet_addr_cmp(%union.nf_inet_addr* %88, %union.nf_inet_addr* %22)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %79
  %92 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %92, i32* %7, align 4
  br label %228

93:                                               ; preds = %79
  %94 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %95 = load i8**, i8*** %11, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %19, align 4
  %99 = add i32 %97, %98
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @ct_sip_parse_transport(%struct.nf_conn* %94, i8* %96, i32 %99, i32 %101, i32* %25)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %93
  %105 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %105, i32* %7, align 4
  br label %228

106:                                              ; preds = %93
  %107 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %108 = load i8**, i8*** %11, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %19, align 4
  %112 = add i32 %110, %111
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @ct_sip_parse_numerical_param(%struct.nf_conn* %107, i8* %109, i32 %112, i32 %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null, i32* %26)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %106
  %118 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %119 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %120 = call i32 @nf_ct_helper_log(%struct.sk_buff* %118, %struct.nf_conn* %119, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %121 = load i32, i32* @NF_DROP, align 4
  store i32 %121, i32* %7, align 4
  br label %228

122:                                              ; preds = %106
  %123 = load i32, i32* %26, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %126, i32* %27, align 4
  br label %218

127:                                              ; preds = %122
  %128 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %129 = call %struct.nf_conntrack_expect* @nf_ct_expect_alloc(%struct.nf_conn* %128)
  store %struct.nf_conntrack_expect* %129, %struct.nf_conntrack_expect** %20, align 8
  %130 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %131 = icmp ne %struct.nf_conntrack_expect* %130, null
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %134 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %135 = call i32 @nf_ct_helper_log(%struct.sk_buff* %133, %struct.nf_conn* %134, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %136 = load i32, i32* @NF_DROP, align 4
  store i32 %136, i32* %7, align 4
  br label %228

137:                                              ; preds = %127
  store %union.nf_inet_addr* null, %union.nf_inet_addr** %21, align 8
  %138 = load i64, i64* @sip_direct_signalling, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %137
  %141 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %142 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %141, i32 0, i32 1
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = load i32, i32* %17, align 4
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  store %union.nf_inet_addr* %152, %union.nf_inet_addr** %21, align 8
  br label %153

153:                                              ; preds = %140, %137
  %154 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %155 = load i32, i32* @SIP_EXPECT_SIGNALLING, align 4
  %156 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %157 = call i32 @nf_ct_l3num(%struct.nf_conn* %156)
  %158 = load %union.nf_inet_addr*, %union.nf_inet_addr** %21, align 8
  %159 = load i32, i32* %25, align 4
  %160 = call i32 @nf_ct_expect_init(%struct.nf_conntrack_expect* %154, i32 %155, i32 %157, %union.nf_inet_addr* %158, %union.nf_inet_addr* %22, i32 %159, i32* null, i32* %24)
  %161 = load i32, i32* @sip_timeout, align 4
  %162 = load i32, i32* @HZ, align 4
  %163 = mul nsw i32 %161, %162
  %164 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %165 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 4
  %167 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %168 = call %struct.TYPE_10__* @nfct_help(%struct.nf_conn* %167)
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %172 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* @NF_CT_EXPECT_PERMANENT, align 4
  %174 = load i32, i32* @NF_CT_EXPECT_INACTIVE, align 4
  %175 = or i32 %173, %174
  %176 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %177 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* @nf_nat_sip_hooks, align 4
  %179 = call %struct.nf_nat_sip_hooks* @rcu_dereference(i32 %178)
  store %struct.nf_nat_sip_hooks* %179, %struct.nf_nat_sip_hooks** %23, align 8
  %180 = load %struct.nf_nat_sip_hooks*, %struct.nf_nat_sip_hooks** %23, align 8
  %181 = icmp ne %struct.nf_nat_sip_hooks* %180, null
  br i1 %181, label %182, label %203

182:                                              ; preds = %153
  %183 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %184 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @IPS_NAT_MASK, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %182
  %190 = load %struct.nf_nat_sip_hooks*, %struct.nf_nat_sip_hooks** %23, align 8
  %191 = getelementptr inbounds %struct.nf_nat_sip_hooks, %struct.nf_nat_sip_hooks* %190, i32 0, i32 0
  %192 = load i32 (%struct.sk_buff*, i32, i32, i8**, i32*, %struct.nf_conntrack_expect.0*, i32, i32)*, i32 (%struct.sk_buff*, i32, i32, i8**, i32*, %struct.nf_conntrack_expect.0*, i32, i32)** %191, align 8
  %193 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* %10, align 4
  %196 = load i8**, i8*** %11, align 8
  %197 = load i32*, i32** %12, align 8
  %198 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %199 = bitcast %struct.nf_conntrack_expect* %198 to %struct.nf_conntrack_expect.0*
  %200 = load i32, i32* %18, align 4
  %201 = load i32, i32* %19, align 4
  %202 = call i32 %192(%struct.sk_buff* %193, i32 %194, i32 %195, i8** %196, i32* %197, %struct.nf_conntrack_expect.0* %199, i32 %200, i32 %201)
  store i32 %202, i32* %27, align 4
  br label %215

203:                                              ; preds = %182, %153
  %204 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %205 = call i64 @nf_ct_expect_related(%struct.nf_conntrack_expect* %204, i32 0)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %203
  %208 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %209 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %210 = call i32 @nf_ct_helper_log(%struct.sk_buff* %208, %struct.nf_conn* %209, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %211 = load i32, i32* @NF_DROP, align 4
  store i32 %211, i32* %27, align 4
  br label %214

212:                                              ; preds = %203
  %213 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %213, i32* %27, align 4
  br label %214

214:                                              ; preds = %212, %207
  br label %215

215:                                              ; preds = %214, %189
  %216 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %20, align 8
  %217 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %216)
  br label %218

218:                                              ; preds = %215, %125
  %219 = load i32, i32* %27, align 4
  %220 = load i32, i32* @NF_ACCEPT, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  %223 = load i32, i32* %13, align 4
  %224 = load %struct.nf_ct_sip_master*, %struct.nf_ct_sip_master** %16, align 8
  %225 = getelementptr inbounds %struct.nf_ct_sip_master, %struct.nf_ct_sip_master* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 4
  br label %226

226:                                              ; preds = %222, %218
  %227 = load i32, i32* %27, align 4
  store i32 %227, i32* %7, align 4
  br label %228

228:                                              ; preds = %226, %132, %117, %104, %91, %76, %68, %40
  %229 = load i32, i32* %7, align 4
  ret i32 %229
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.nf_ct_sip_master* @nfct_help_data(%struct.nf_conn*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @ct_sip_get_header(%struct.nf_conn*, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @ct_sip_parse_header_uri(%struct.nf_conn*, i8*, i32*, i32, i32, i32*, i32*, i32*, %union.nf_inet_addr*, i32*) #1

declare dso_local i32 @nf_ct_helper_log(%struct.sk_buff*, %struct.nf_conn*, i8*) #1

declare dso_local i32 @nf_inet_addr_cmp(%union.nf_inet_addr*, %union.nf_inet_addr*) #1

declare dso_local i64 @ct_sip_parse_transport(%struct.nf_conn*, i8*, i32, i32, i32*) #1

declare dso_local i64 @ct_sip_parse_numerical_param(%struct.nf_conn*, i8*, i32, i32, i8*, i32*, i32*, i32*) #1

declare dso_local %struct.nf_conntrack_expect* @nf_ct_expect_alloc(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_expect_init(%struct.nf_conntrack_expect*, i32, i32, %union.nf_inet_addr*, %union.nf_inet_addr*, i32, i32*, i32*) #1

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local %struct.TYPE_10__* @nfct_help(%struct.nf_conn*) #1

declare dso_local %struct.nf_nat_sip_hooks* @rcu_dereference(i32) #1

declare dso_local i64 @nf_ct_expect_related(%struct.nf_conntrack_expect*, i32) #1

declare dso_local i32 @nf_ct_expect_put(%struct.nf_conntrack_expect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
