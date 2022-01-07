; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_diag.c_inet_sctp_diag_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_diag.c_inet_sctp_diag_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.sctp_association = type { i32, %struct.TYPE_11__, i32, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.list_head }
%struct.list_head = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.sk_buff = type { i32 }
%struct.inet_diag_req_v2 = type { i32 }
%struct.user_namespace = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.sctp_endpoint = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.list_head }
%struct.inet_diag_msg = type { i64, i64, i32 }
%struct.sctp_infox = type { %struct.sctp_association*, %struct.sctp_info* }
%struct.sctp_info = type { i32 }
%struct.nlattr = type { i32 }
%struct.TYPE_14__ = type { %struct.sctp_endpoint* }

@EMSGSIZE = common dso_local global i32 0, align 4
@INET_DIAG_SKMEMINFO = common dso_local global i32 0, align 4
@SK_MEMINFO_VARS = common dso_local global i32 0, align 4
@SK_MEMINFO_WMEM_ALLOC = common dso_local global i64 0, align 8
@SK_MEMINFO_RMEM_ALLOC = common dso_local global i64 0, align 8
@SK_MEMINFO_RCVBUF = common dso_local global i64 0, align 8
@SK_MEMINFO_SNDBUF = common dso_local global i64 0, align 8
@SK_MEMINFO_FWD_ALLOC = common dso_local global i64 0, align 8
@SK_MEMINFO_WMEM_QUEUED = common dso_local global i64 0, align 8
@SK_MEMINFO_OPTMEM = common dso_local global i64 0, align 8
@SK_MEMINFO_BACKLOG = common dso_local global i64 0, align 8
@SK_MEMINFO_DROPS = common dso_local global i64 0, align 8
@INET_DIAG_INFO = common dso_local global i32 0, align 4
@INET_DIAG_PAD = common dso_local global i32 0, align 4
@INET_DIAG_CONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"reno\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sctp_association*, %struct.sk_buff*, %struct.inet_diag_req_v2*, %struct.user_namespace*, i32, i32, i32, %struct.nlmsghdr*, i32)* @inet_sctp_diag_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_sctp_diag_fill(%struct.sock* %0, %struct.sctp_association* %1, %struct.sk_buff* %2, %struct.inet_diag_req_v2* %3, %struct.user_namespace* %4, i32 %5, i32 %6, i32 %7, %struct.nlmsghdr* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.sctp_association*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.inet_diag_req_v2*, align 8
  %16 = alloca %struct.user_namespace*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.nlmsghdr*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.sctp_endpoint*, align 8
  %23 = alloca %struct.list_head*, align 8
  %24 = alloca %struct.inet_diag_msg*, align 8
  %25 = alloca %struct.nlmsghdr*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.sctp_infox, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.nlattr*, align 8
  store %struct.sock* %0, %struct.sock** %12, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %13, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %14, align 8
  store %struct.inet_diag_req_v2* %3, %struct.inet_diag_req_v2** %15, align 8
  store %struct.user_namespace* %4, %struct.user_namespace** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store %struct.nlmsghdr* %8, %struct.nlmsghdr** %20, align 8
  store i32 %9, i32* %21, align 4
  %34 = load %struct.sock*, %struct.sock** %12, align 8
  %35 = call %struct.TYPE_14__* @sctp_sk(%struct.sock* %34)
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %36, align 8
  store %struct.sctp_endpoint* %37, %struct.sctp_endpoint** %22, align 8
  %38 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %15, align 8
  %39 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %26, align 4
  store i8* null, i8** %28, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %18, align 4
  %44 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %45 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %19, align 4
  %48 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %41, i32 %42, i32 %43, i32 %46, i32 24, i32 %47)
  store %struct.nlmsghdr* %48, %struct.nlmsghdr** %25, align 8
  %49 = load %struct.nlmsghdr*, %struct.nlmsghdr** %25, align 8
  %50 = icmp ne %struct.nlmsghdr* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %10
  %52 = load i32, i32* @EMSGSIZE, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %11, align 4
  br label %280

54:                                               ; preds = %10
  %55 = load %struct.nlmsghdr*, %struct.nlmsghdr** %25, align 8
  %56 = call %struct.inet_diag_msg* @nlmsg_data(%struct.nlmsghdr* %55)
  store %struct.inet_diag_msg* %56, %struct.inet_diag_msg** %24, align 8
  %57 = load %struct.sock*, %struct.sock** %12, align 8
  %58 = call i32 @sk_fullsock(%struct.sock* %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %64 = icmp ne %struct.sctp_association* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %24, align 8
  %67 = load %struct.sock*, %struct.sock** %12, align 8
  %68 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %69 = call i32 @inet_diag_msg_sctpasoc_fill(%struct.inet_diag_msg* %66, %struct.sock* %67, %struct.sctp_association* %68)
  br label %83

70:                                               ; preds = %54
  %71 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %24, align 8
  %72 = load %struct.sock*, %struct.sock** %12, align 8
  %73 = call i32 @inet_diag_msg_common_fill(%struct.inet_diag_msg* %71, %struct.sock* %72)
  %74 = load %struct.sock*, %struct.sock** %12, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %24, align 8
  %78 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %24, align 8
  %80 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %24, align 8
  %82 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %70, %65
  %84 = load %struct.sock*, %struct.sock** %12, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %86 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %24, align 8
  %87 = load i32, i32* %26, align 4
  %88 = load %struct.user_namespace*, %struct.user_namespace** %16, align 8
  %89 = load i32, i32* %21, align 4
  %90 = call i64 @inet_diag_msg_attrs_fill(%struct.sock* %84, %struct.sk_buff* %85, %struct.inet_diag_msg* %86, i32 %87, %struct.user_namespace* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %274

93:                                               ; preds = %83
  %94 = load i32, i32* %26, align 4
  %95 = load i32, i32* @INET_DIAG_SKMEMINFO, align 4
  %96 = sub nsw i32 %95, 1
  %97 = shl i32 1, %96
  %98 = and i32 %94, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %198

100:                                              ; preds = %93
  %101 = load i32, i32* @SK_MEMINFO_VARS, align 4
  %102 = zext i32 %101 to i64
  %103 = call i8* @llvm.stacksave()
  store i8* %103, i8** %29, align 8
  %104 = alloca i32, i64 %102, align 16
  store i64 %102, i64* %30, align 8
  %105 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %106 = icmp ne %struct.sctp_association* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %100
  %108 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %109 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %108, i32 0, i32 3
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %116 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %31, align 4
  br label %121

118:                                              ; preds = %107, %100
  %119 = load %struct.sock*, %struct.sock** %12, align 8
  %120 = call i32 @sk_wmem_alloc_get(%struct.sock* %119)
  store i32 %120, i32* %31, align 4
  br label %121

121:                                              ; preds = %118, %114
  %122 = load i32, i32* %31, align 4
  %123 = load i64, i64* @SK_MEMINFO_WMEM_ALLOC, align 8
  %124 = getelementptr inbounds i32, i32* %104, i64 %123
  store i32 %122, i32* %124, align 4
  %125 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %126 = icmp ne %struct.sctp_association* %125, null
  br i1 %126, label %127, label %139

127:                                              ; preds = %121
  %128 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %129 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %128, i32 0, i32 3
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %136 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %135, i32 0, i32 2
  %137 = call i8* @atomic_read(i32* %136)
  %138 = ptrtoint i8* %137 to i32
  store i32 %138, i32* %31, align 4
  br label %142

139:                                              ; preds = %127, %121
  %140 = load %struct.sock*, %struct.sock** %12, align 8
  %141 = call i32 @sk_rmem_alloc_get(%struct.sock* %140)
  store i32 %141, i32* %31, align 4
  br label %142

142:                                              ; preds = %139, %134
  %143 = load i32, i32* %31, align 4
  %144 = load i64, i64* @SK_MEMINFO_RMEM_ALLOC, align 8
  %145 = getelementptr inbounds i32, i32* %104, i64 %144
  store i32 %143, i32* %145, align 4
  %146 = load %struct.sock*, %struct.sock** %12, align 8
  %147 = getelementptr inbounds %struct.sock, %struct.sock* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i64, i64* @SK_MEMINFO_RCVBUF, align 8
  %150 = getelementptr inbounds i32, i32* %104, i64 %149
  store i32 %148, i32* %150, align 4
  %151 = load %struct.sock*, %struct.sock** %12, align 8
  %152 = getelementptr inbounds %struct.sock, %struct.sock* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* @SK_MEMINFO_SNDBUF, align 8
  %155 = getelementptr inbounds i32, i32* %104, i64 %154
  store i32 %153, i32* %155, align 4
  %156 = load %struct.sock*, %struct.sock** %12, align 8
  %157 = getelementptr inbounds %struct.sock, %struct.sock* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i64, i64* @SK_MEMINFO_FWD_ALLOC, align 8
  %160 = getelementptr inbounds i32, i32* %104, i64 %159
  store i32 %158, i32* %160, align 4
  %161 = load %struct.sock*, %struct.sock** %12, align 8
  %162 = getelementptr inbounds %struct.sock, %struct.sock* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load i64, i64* @SK_MEMINFO_WMEM_QUEUED, align 8
  %165 = getelementptr inbounds i32, i32* %104, i64 %164
  store i32 %163, i32* %165, align 4
  %166 = load %struct.sock*, %struct.sock** %12, align 8
  %167 = getelementptr inbounds %struct.sock, %struct.sock* %166, i32 0, i32 6
  %168 = call i8* @atomic_read(i32* %167)
  %169 = ptrtoint i8* %168 to i32
  %170 = load i64, i64* @SK_MEMINFO_OPTMEM, align 8
  %171 = getelementptr inbounds i32, i32* %104, i64 %170
  store i32 %169, i32* %171, align 4
  %172 = load %struct.sock*, %struct.sock** %12, align 8
  %173 = getelementptr inbounds %struct.sock, %struct.sock* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @READ_ONCE(i32 %175)
  %177 = load i64, i64* @SK_MEMINFO_BACKLOG, align 8
  %178 = getelementptr inbounds i32, i32* %104, i64 %177
  store i32 %176, i32* %178, align 4
  %179 = load %struct.sock*, %struct.sock** %12, align 8
  %180 = getelementptr inbounds %struct.sock, %struct.sock* %179, i32 0, i32 4
  %181 = call i8* @atomic_read(i32* %180)
  %182 = ptrtoint i8* %181 to i32
  %183 = load i64, i64* @SK_MEMINFO_DROPS, align 8
  %184 = getelementptr inbounds i32, i32* %104, i64 %183
  store i32 %182, i32* %184, align 4
  %185 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %186 = load i32, i32* @INET_DIAG_SKMEMINFO, align 4
  %187 = mul nuw i64 4, %102
  %188 = trunc i64 %187 to i32
  %189 = bitcast i32* %104 to i32**
  %190 = call i64 @nla_put(%struct.sk_buff* %185, i32 %186, i32 %188, i32** %189)
  %191 = icmp slt i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %142
  store i32 2, i32* %32, align 4
  br label %194

193:                                              ; preds = %142
  store i32 0, i32* %32, align 4
  br label %194

194:                                              ; preds = %192, %193
  %195 = load i8*, i8** %29, align 8
  call void @llvm.stackrestore(i8* %195)
  %196 = load i32, i32* %32, align 4
  switch i32 %196, label %282 [
    i32 0, label %197
    i32 2, label %274
  ]

197:                                              ; preds = %194
  br label %198

198:                                              ; preds = %197, %93
  %199 = load i32, i32* %26, align 4
  %200 = load i32, i32* @INET_DIAG_INFO, align 4
  %201 = sub nsw i32 %200, 1
  %202 = shl i32 1, %201
  %203 = and i32 %199, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %198
  %206 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %207 = load i32, i32* @INET_DIAG_INFO, align 4
  %208 = load i32, i32* @INET_DIAG_PAD, align 4
  %209 = call %struct.nlattr* @nla_reserve_64bit(%struct.sk_buff* %206, i32 %207, i32 4, i32 %208)
  store %struct.nlattr* %209, %struct.nlattr** %33, align 8
  %210 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %211 = icmp ne %struct.nlattr* %210, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %205
  br label %274

213:                                              ; preds = %205
  %214 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %215 = call i8* @nla_data(%struct.nlattr* %214)
  store i8* %215, i8** %28, align 8
  br label %216

216:                                              ; preds = %213, %198
  %217 = load i8*, i8** %28, align 8
  %218 = bitcast i8* %217 to %struct.sctp_info*
  %219 = getelementptr inbounds %struct.sctp_infox, %struct.sctp_infox* %27, i32 0, i32 1
  store %struct.sctp_info* %218, %struct.sctp_info** %219, align 8
  %220 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %221 = getelementptr inbounds %struct.sctp_infox, %struct.sctp_infox* %27, i32 0, i32 0
  store %struct.sctp_association* %220, %struct.sctp_association** %221, align 8
  %222 = load %struct.sock*, %struct.sock** %12, align 8
  %223 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %24, align 8
  %224 = call i32 @sctp_diag_get_info(%struct.sock* %222, %struct.inet_diag_msg* %223, %struct.sctp_infox* %27)
  %225 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %226 = icmp ne %struct.sctp_association* %225, null
  br i1 %226, label %227, label %232

227:                                              ; preds = %216
  %228 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %229 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 0
  br label %237

232:                                              ; preds = %216
  %233 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %22, align 8
  %234 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 0
  br label %237

237:                                              ; preds = %232, %227
  %238 = phi %struct.list_head* [ %231, %227 ], [ %236, %232 ]
  store %struct.list_head* %238, %struct.list_head** %23, align 8
  %239 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %240 = load %struct.list_head*, %struct.list_head** %23, align 8
  %241 = call i64 @inet_diag_msg_sctpladdrs_fill(%struct.sk_buff* %239, %struct.list_head* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %237
  br label %274

244:                                              ; preds = %237
  %245 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %246 = icmp ne %struct.sctp_association* %245, null
  br i1 %246, label %247, label %261

247:                                              ; preds = %244
  %248 = load i32, i32* %26, align 4
  %249 = load i32, i32* @INET_DIAG_CONG, align 4
  %250 = sub nsw i32 %249, 1
  %251 = shl i32 1, %250
  %252 = and i32 %248, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %247
  %255 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %256 = load i32, i32* @INET_DIAG_CONG, align 4
  %257 = call i64 @nla_put_string(%struct.sk_buff* %255, i32 %256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %258 = icmp slt i64 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %254
  br label %274

260:                                              ; preds = %254
  br label %261

261:                                              ; preds = %260, %247, %244
  %262 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %263 = icmp ne %struct.sctp_association* %262, null
  br i1 %263, label %264, label %270

264:                                              ; preds = %261
  %265 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %266 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %267 = call i64 @inet_diag_msg_sctpaddrs_fill(%struct.sk_buff* %265, %struct.sctp_association* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %264
  br label %274

270:                                              ; preds = %264, %261
  %271 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %272 = load %struct.nlmsghdr*, %struct.nlmsghdr** %25, align 8
  %273 = call i32 @nlmsg_end(%struct.sk_buff* %271, %struct.nlmsghdr* %272)
  store i32 0, i32* %11, align 4
  br label %280

274:                                              ; preds = %269, %259, %243, %212, %194, %92
  %275 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %276 = load %struct.nlmsghdr*, %struct.nlmsghdr** %25, align 8
  %277 = call i32 @nlmsg_cancel(%struct.sk_buff* %275, %struct.nlmsghdr* %276)
  %278 = load i32, i32* @EMSGSIZE, align 4
  %279 = sub nsw i32 0, %278
  store i32 %279, i32* %11, align 4
  br label %280

280:                                              ; preds = %274, %270, %51
  %281 = load i32, i32* %11, align 4
  ret i32 %281

282:                                              ; preds = %194
  unreachable
}

declare dso_local %struct.TYPE_14__* @sctp_sk(%struct.sock*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.inet_diag_msg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sk_fullsock(%struct.sock*) #1

declare dso_local i32 @inet_diag_msg_sctpasoc_fill(%struct.inet_diag_msg*, %struct.sock*, %struct.sctp_association*) #1

declare dso_local i32 @inet_diag_msg_common_fill(%struct.inet_diag_msg*, %struct.sock*) #1

declare dso_local i64 @inet_diag_msg_attrs_fill(%struct.sock*, %struct.sk_buff*, %struct.inet_diag_msg*, i32, %struct.user_namespace*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sk_wmem_alloc_get(%struct.sock*) #1

declare dso_local i8* @atomic_read(i32*) #1

declare dso_local i32 @sk_rmem_alloc_get(%struct.sock*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32**) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local %struct.nlattr* @nla_reserve_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @sctp_diag_get_info(%struct.sock*, %struct.inet_diag_msg*, %struct.sctp_infox*) #1

declare dso_local i64 @inet_diag_msg_sctpladdrs_fill(%struct.sk_buff*, %struct.list_head*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i8*) #1

declare dso_local i64 @inet_diag_msg_sctpaddrs_fill(%struct.sk_buff*, %struct.sctp_association*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
