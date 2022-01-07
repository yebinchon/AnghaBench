; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_sk_diag_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_sk_diag_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_diag_handler = type { i64 (%struct.sock*, i32, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.inet_diag_msg*, i8*)*, i64 }
%struct.sock = type { i64, i64, i64, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.inet_diag_msg = type { i64, i32, i8*, i64 }
%struct.inet_connection_sock = type { i64, i32, i64, i64, i64 }
%struct.inet_diag_req_v2 = type { i32, i64 }
%struct.user_namespace = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.tcp_congestion_ops = type { i64 (%struct.sock.0*, i32, i32*, %union.tcp_cc_info*)*, i32 }
%struct.sock.0 = type opaque
%union.tcp_cc_info = type { %struct.tcp_congestion_ops* }
%struct.nlattr = type { i32 }
%struct.inet_diag_meminfo = type { i32, i32, %struct.tcp_congestion_ops*, i32 }

@inet_diag_table = common dso_local global %struct.inet_diag_handler** null, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@INET_DIAG_MEMINFO = common dso_local global i32 0, align 4
@INET_DIAG_SKMEMINFO = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i64 0, align 8
@INET_DIAG_PROTOCOL = common dso_local global i32 0, align 4
@ICSK_TIME_RETRANS = common dso_local global i64 0, align 8
@ICSK_TIME_REO_TIMEOUT = common dso_local global i64 0, align 8
@ICSK_TIME_LOSS_PROBE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@ICSK_TIME_PROBE0 = common dso_local global i64 0, align 8
@INET_DIAG_INFO = common dso_local global i32 0, align 4
@INET_DIAG_PAD = common dso_local global i32 0, align 4
@INET_DIAG_CONG = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i64 0, align 8
@INET_DIAG_CLASS_ID = common dso_local global i32 0, align 4
@INET_DIAG_TCLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_sk_diag_fill(%struct.sock* %0, %struct.inet_connection_sock* %1, %struct.sk_buff* %2, %struct.inet_diag_req_v2* %3, %struct.user_namespace* %4, i64 %5, i64 %6, i32 %7, %struct.nlmsghdr* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.inet_connection_sock*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.inet_diag_req_v2*, align 8
  %16 = alloca %struct.user_namespace*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.nlmsghdr*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.tcp_congestion_ops*, align 8
  %23 = alloca %struct.inet_diag_handler*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.inet_diag_msg*, align 8
  %26 = alloca %struct.nlmsghdr*, align 8
  %27 = alloca %struct.nlattr*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.inet_diag_meminfo, align 8
  %30 = alloca i32, align 4
  %31 = alloca %union.tcp_cc_info, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %12, align 8
  store %struct.inet_connection_sock* %1, %struct.inet_connection_sock** %13, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %14, align 8
  store %struct.inet_diag_req_v2* %3, %struct.inet_diag_req_v2** %15, align 8
  store %struct.user_namespace* %4, %struct.user_namespace** %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i32 %7, i32* %19, align 4
  store %struct.nlmsghdr* %8, %struct.nlmsghdr** %20, align 8
  store i32 %9, i32* %21, align 4
  %35 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %15, align 8
  %36 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %24, align 4
  store i8* null, i8** %28, align 8
  %38 = load %struct.inet_diag_handler**, %struct.inet_diag_handler*** @inet_diag_table, align 8
  %39 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %15, align 8
  %40 = getelementptr inbounds %struct.inet_diag_req_v2, %struct.inet_diag_req_v2* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.inet_diag_handler*, %struct.inet_diag_handler** %38, i64 %41
  %43 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %42, align 8
  store %struct.inet_diag_handler* %43, %struct.inet_diag_handler** %23, align 8
  %44 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %23, align 8
  %45 = icmp ne %struct.inet_diag_handler* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %50 = load i64, i64* %17, align 8
  %51 = load i64, i64* %18, align 8
  %52 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %53 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %19, align 4
  %56 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %49, i64 %50, i64 %51, i32 %54, i32 32, i32 %55)
  store %struct.nlmsghdr* %56, %struct.nlmsghdr** %26, align 8
  %57 = load %struct.nlmsghdr*, %struct.nlmsghdr** %26, align 8
  %58 = icmp ne %struct.nlmsghdr* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %10
  %60 = load i32, i32* @EMSGSIZE, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %11, align 4
  br label %411

62:                                               ; preds = %10
  %63 = load %struct.nlmsghdr*, %struct.nlmsghdr** %26, align 8
  %64 = call %struct.inet_diag_msg* @nlmsg_data(%struct.nlmsghdr* %63)
  store %struct.inet_diag_msg* %64, %struct.inet_diag_msg** %25, align 8
  %65 = load %struct.sock*, %struct.sock** %12, align 8
  %66 = call i32 @sk_fullsock(%struct.sock* %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUG_ON(i32 %69)
  %71 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %25, align 8
  %72 = load %struct.sock*, %struct.sock** %12, align 8
  %73 = call i32 @inet_diag_msg_common_fill(%struct.inet_diag_msg* %71, %struct.sock* %72)
  %74 = load %struct.sock*, %struct.sock** %12, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %25, align 8
  %78 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %25, align 8
  %80 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %79, i32 0, i32 1
  store i32 0, i32* %80, align 8
  %81 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %25, align 8
  %82 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load %struct.sock*, %struct.sock** %12, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %85 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %25, align 8
  %86 = load i32, i32* %24, align 4
  %87 = load %struct.user_namespace*, %struct.user_namespace** %16, align 8
  %88 = load i32, i32* %21, align 4
  %89 = call i64 @inet_diag_msg_attrs_fill(%struct.sock* %83, %struct.sk_buff* %84, %struct.inet_diag_msg* %85, i32 %86, %struct.user_namespace* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %62
  br label %405

92:                                               ; preds = %62
  %93 = load i32, i32* %24, align 4
  %94 = load i32, i32* @INET_DIAG_MEMINFO, align 4
  %95 = sub nsw i32 %94, 1
  %96 = shl i32 1, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.inet_diag_meminfo, %struct.inet_diag_meminfo* %29, i32 0, i32 0
  %101 = load %struct.sock*, %struct.sock** %12, align 8
  %102 = call i32 @sk_wmem_alloc_get(%struct.sock* %101)
  store i32 %102, i32* %100, align 8
  %103 = getelementptr inbounds %struct.inet_diag_meminfo, %struct.inet_diag_meminfo* %29, i32 0, i32 1
  %104 = load %struct.sock*, %struct.sock** %12, align 8
  %105 = getelementptr inbounds %struct.sock, %struct.sock* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %103, align 4
  %107 = getelementptr inbounds %struct.inet_diag_meminfo, %struct.inet_diag_meminfo* %29, i32 0, i32 2
  %108 = load %struct.sock*, %struct.sock** %12, align 8
  %109 = getelementptr inbounds %struct.sock, %struct.sock* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 8
  %111 = call %struct.tcp_congestion_ops* @READ_ONCE(i32 %110)
  store %struct.tcp_congestion_ops* %111, %struct.tcp_congestion_ops** %107, align 8
  %112 = getelementptr inbounds %struct.inet_diag_meminfo, %struct.inet_diag_meminfo* %29, i32 0, i32 3
  %113 = load %struct.sock*, %struct.sock** %12, align 8
  %114 = call i32 @sk_rmem_alloc_get(%struct.sock* %113)
  store i32 %114, i32* %112, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %116 = load i32, i32* @INET_DIAG_MEMINFO, align 4
  %117 = bitcast %struct.inet_diag_meminfo* %29 to %union.tcp_cc_info*
  %118 = call i64 @nla_put(%struct.sk_buff* %115, i32 %116, i64 24, %union.tcp_cc_info* %117)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %99
  br label %405

121:                                              ; preds = %99
  br label %122

122:                                              ; preds = %121, %92
  %123 = load i32, i32* %24, align 4
  %124 = load i32, i32* @INET_DIAG_SKMEMINFO, align 4
  %125 = sub nsw i32 %124, 1
  %126 = shl i32 1, %125
  %127 = and i32 %123, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %122
  %130 = load %struct.sock*, %struct.sock** %12, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %132 = load i32, i32* @INET_DIAG_SKMEMINFO, align 4
  %133 = call i64 @sock_diag_put_meminfo(%struct.sock* %130, %struct.sk_buff* %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %405

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %122
  %138 = load %struct.sock*, %struct.sock** %12, align 8
  %139 = getelementptr inbounds %struct.sock, %struct.sock* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SOCK_RAW, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %153

143:                                              ; preds = %137
  %144 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %145 = load i32, i32* @INET_DIAG_PROTOCOL, align 4
  %146 = load %struct.sock*, %struct.sock** %12, align 8
  %147 = getelementptr inbounds %struct.sock, %struct.sock* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @nla_put_u8(%struct.sk_buff* %144, i32 %145, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  br label %405

152:                                              ; preds = %143
  br label %153

153:                                              ; preds = %152, %137
  %154 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %13, align 8
  %155 = icmp ne %struct.inet_connection_sock* %154, null
  br i1 %155, label %163, label %156

156:                                              ; preds = %153
  %157 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %23, align 8
  %158 = getelementptr inbounds %struct.inet_diag_handler, %struct.inet_diag_handler* %157, i32 0, i32 1
  %159 = load i32 (%struct.sock*, %struct.inet_diag_msg*, i8*)*, i32 (%struct.sock*, %struct.inet_diag_msg*, i8*)** %158, align 8
  %160 = load %struct.sock*, %struct.sock** %12, align 8
  %161 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %25, align 8
  %162 = call i32 %159(%struct.sock* %160, %struct.inet_diag_msg* %161, i8* null)
  br label %401

163:                                              ; preds = %153
  %164 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %13, align 8
  %165 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @ICSK_TIME_RETRANS, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %181, label %169

169:                                              ; preds = %163
  %170 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %13, align 8
  %171 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @ICSK_TIME_REO_TIMEOUT, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %181, label %175

175:                                              ; preds = %169
  %176 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %13, align 8
  %177 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @ICSK_TIME_LOSS_PROBE, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %197

181:                                              ; preds = %175, %169, %163
  %182 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %25, align 8
  %183 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %182, i32 0, i32 1
  store i32 1, i32* %183, align 8
  %184 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %13, align 8
  %185 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %25, align 8
  %188 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %187, i32 0, i32 3
  store i64 %186, i64* %188, align 8
  %189 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %13, align 8
  %190 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @jiffies, align 8
  %193 = sub nsw i64 %191, %192
  %194 = call i8* @jiffies_to_msecs(i64 %193)
  %195 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %25, align 8
  %196 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %195, i32 0, i32 2
  store i8* %194, i8** %196, align 8
  br label %248

197:                                              ; preds = %175
  %198 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %13, align 8
  %199 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @ICSK_TIME_PROBE0, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %219

203:                                              ; preds = %197
  %204 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %25, align 8
  %205 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %204, i32 0, i32 1
  store i32 4, i32* %205, align 8
  %206 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %13, align 8
  %207 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %25, align 8
  %210 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %209, i32 0, i32 3
  store i64 %208, i64* %210, align 8
  %211 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %13, align 8
  %212 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @jiffies, align 8
  %215 = sub nsw i64 %213, %214
  %216 = call i8* @jiffies_to_msecs(i64 %215)
  %217 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %25, align 8
  %218 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %217, i32 0, i32 2
  store i8* %216, i8** %218, align 8
  br label %247

219:                                              ; preds = %197
  %220 = load %struct.sock*, %struct.sock** %12, align 8
  %221 = getelementptr inbounds %struct.sock, %struct.sock* %220, i32 0, i32 4
  %222 = call i64 @timer_pending(%struct.TYPE_2__* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %241

224:                                              ; preds = %219
  %225 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %25, align 8
  %226 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %225, i32 0, i32 1
  store i32 2, i32* %226, align 8
  %227 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %13, align 8
  %228 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %25, align 8
  %231 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %230, i32 0, i32 3
  store i64 %229, i64* %231, align 8
  %232 = load %struct.sock*, %struct.sock** %12, align 8
  %233 = getelementptr inbounds %struct.sock, %struct.sock* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @jiffies, align 8
  %237 = sub nsw i64 %235, %236
  %238 = call i8* @jiffies_to_msecs(i64 %237)
  %239 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %25, align 8
  %240 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %239, i32 0, i32 2
  store i8* %238, i8** %240, align 8
  br label %246

241:                                              ; preds = %219
  %242 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %25, align 8
  %243 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %242, i32 0, i32 1
  store i32 0, i32* %243, align 8
  %244 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %25, align 8
  %245 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %244, i32 0, i32 2
  store i8* null, i8** %245, align 8
  br label %246

246:                                              ; preds = %241, %224
  br label %247

247:                                              ; preds = %246, %203
  br label %248

248:                                              ; preds = %247, %181
  %249 = load i32, i32* %24, align 4
  %250 = load i32, i32* @INET_DIAG_INFO, align 4
  %251 = sub nsw i32 %250, 1
  %252 = shl i32 1, %251
  %253 = and i32 %249, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %274

255:                                              ; preds = %248
  %256 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %23, align 8
  %257 = getelementptr inbounds %struct.inet_diag_handler, %struct.inet_diag_handler* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %274

260:                                              ; preds = %255
  %261 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %262 = load i32, i32* @INET_DIAG_INFO, align 4
  %263 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %23, align 8
  %264 = getelementptr inbounds %struct.inet_diag_handler, %struct.inet_diag_handler* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = load i32, i32* @INET_DIAG_PAD, align 4
  %267 = call %struct.nlattr* @nla_reserve_64bit(%struct.sk_buff* %261, i32 %262, i64 %265, i32 %266)
  store %struct.nlattr* %267, %struct.nlattr** %27, align 8
  %268 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %269 = icmp ne %struct.nlattr* %268, null
  br i1 %269, label %271, label %270

270:                                              ; preds = %260
  br label %405

271:                                              ; preds = %260
  %272 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %273 = call i8* @nla_data(%struct.nlattr* %272)
  store i8* %273, i8** %28, align 8
  br label %274

274:                                              ; preds = %271, %255, %248
  %275 = load i32, i32* %24, align 4
  %276 = load i32, i32* @INET_DIAG_CONG, align 4
  %277 = sub nsw i32 %276, 1
  %278 = shl i32 1, %277
  %279 = and i32 %275, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %302

281:                                              ; preds = %274
  store i32 0, i32* %30, align 4
  %282 = call i32 (...) @rcu_read_lock()
  %283 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %13, align 8
  %284 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = call %struct.tcp_congestion_ops* @READ_ONCE(i32 %285)
  store %struct.tcp_congestion_ops* %286, %struct.tcp_congestion_ops** %22, align 8
  %287 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %22, align 8
  %288 = icmp ne %struct.tcp_congestion_ops* %287, null
  br i1 %288, label %289, label %296

289:                                              ; preds = %281
  %290 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %291 = load i32, i32* @INET_DIAG_CONG, align 4
  %292 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %22, align 8
  %293 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @nla_put_string(%struct.sk_buff* %290, i32 %291, i32 %294)
  store i32 %295, i32* %30, align 4
  br label %296

296:                                              ; preds = %289, %281
  %297 = call i32 (...) @rcu_read_unlock()
  %298 = load i32, i32* %30, align 4
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %296
  br label %405

301:                                              ; preds = %296
  br label %302

302:                                              ; preds = %301, %274
  %303 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %23, align 8
  %304 = getelementptr inbounds %struct.inet_diag_handler, %struct.inet_diag_handler* %303, i32 0, i32 1
  %305 = load i32 (%struct.sock*, %struct.inet_diag_msg*, i8*)*, i32 (%struct.sock*, %struct.inet_diag_msg*, i8*)** %304, align 8
  %306 = load %struct.sock*, %struct.sock** %12, align 8
  %307 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %25, align 8
  %308 = load i8*, i8** %28, align 8
  %309 = call i32 %305(%struct.sock* %306, %struct.inet_diag_msg* %307, i8* %308)
  %310 = load i32, i32* %24, align 4
  %311 = load i32, i32* @INET_DIAG_INFO, align 4
  %312 = sub nsw i32 %311, 1
  %313 = shl i32 1, %312
  %314 = and i32 %310, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %332

316:                                              ; preds = %302
  %317 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %23, align 8
  %318 = getelementptr inbounds %struct.inet_diag_handler, %struct.inet_diag_handler* %317, i32 0, i32 0
  %319 = load i64 (%struct.sock*, i32, %struct.sk_buff*)*, i64 (%struct.sock*, i32, %struct.sk_buff*)** %318, align 8
  %320 = icmp ne i64 (%struct.sock*, i32, %struct.sk_buff*)* %319, null
  br i1 %320, label %321, label %332

321:                                              ; preds = %316
  %322 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %23, align 8
  %323 = getelementptr inbounds %struct.inet_diag_handler, %struct.inet_diag_handler* %322, i32 0, i32 0
  %324 = load i64 (%struct.sock*, i32, %struct.sk_buff*)*, i64 (%struct.sock*, i32, %struct.sk_buff*)** %323, align 8
  %325 = load %struct.sock*, %struct.sock** %12, align 8
  %326 = load i32, i32* %21, align 4
  %327 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %328 = call i64 %324(%struct.sock* %325, i32 %326, %struct.sk_buff* %327)
  %329 = icmp slt i64 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %321
  br label %405

331:                                              ; preds = %321
  br label %332

332:                                              ; preds = %331, %316, %302
  %333 = load %struct.sock*, %struct.sock** %12, align 8
  %334 = getelementptr inbounds %struct.sock, %struct.sock* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @TCP_TIME_WAIT, align 8
  %337 = icmp slt i64 %335, %336
  br i1 %337, label %338, label %371

338:                                              ; preds = %332
  store i64 0, i64* %32, align 8
  %339 = call i32 (...) @rcu_read_lock()
  %340 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %13, align 8
  %341 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 8
  %343 = call %struct.tcp_congestion_ops* @READ_ONCE(i32 %342)
  store %struct.tcp_congestion_ops* %343, %struct.tcp_congestion_ops** %22, align 8
  %344 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %22, align 8
  %345 = icmp ne %struct.tcp_congestion_ops* %344, null
  br i1 %345, label %346, label %359

346:                                              ; preds = %338
  %347 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %22, align 8
  %348 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %347, i32 0, i32 0
  %349 = load i64 (%struct.sock.0*, i32, i32*, %union.tcp_cc_info*)*, i64 (%struct.sock.0*, i32, i32*, %union.tcp_cc_info*)** %348, align 8
  %350 = icmp ne i64 (%struct.sock.0*, i32, i32*, %union.tcp_cc_info*)* %349, null
  br i1 %350, label %351, label %359

351:                                              ; preds = %346
  %352 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %22, align 8
  %353 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %352, i32 0, i32 0
  %354 = load i64 (%struct.sock.0*, i32, i32*, %union.tcp_cc_info*)*, i64 (%struct.sock.0*, i32, i32*, %union.tcp_cc_info*)** %353, align 8
  %355 = load %struct.sock*, %struct.sock** %12, align 8
  %356 = bitcast %struct.sock* %355 to %struct.sock.0*
  %357 = load i32, i32* %24, align 4
  %358 = call i64 %354(%struct.sock.0* %356, i32 %357, i32* %33, %union.tcp_cc_info* %31)
  store i64 %358, i64* %32, align 8
  br label %359

359:                                              ; preds = %351, %346, %338
  %360 = call i32 (...) @rcu_read_unlock()
  %361 = load i64, i64* %32, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %370

363:                                              ; preds = %359
  %364 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %365 = load i32, i32* %33, align 4
  %366 = load i64, i64* %32, align 8
  %367 = call i64 @nla_put(%struct.sk_buff* %364, i32 %365, i64 %366, %union.tcp_cc_info* %31)
  %368 = icmp slt i64 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %363
  br label %405

370:                                              ; preds = %363, %359
  br label %371

371:                                              ; preds = %370, %332
  %372 = load i32, i32* %24, align 4
  %373 = load i32, i32* @INET_DIAG_CLASS_ID, align 4
  %374 = sub nsw i32 %373, 1
  %375 = shl i32 1, %374
  %376 = and i32 %372, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %385, label %378

378:                                              ; preds = %371
  %379 = load i32, i32* %24, align 4
  %380 = load i32, i32* @INET_DIAG_TCLASS, align 4
  %381 = sub nsw i32 %380, 1
  %382 = shl i32 1, %381
  %383 = and i32 %379, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %400

385:                                              ; preds = %378, %371
  store i64 0, i64* %34, align 8
  %386 = load i64, i64* %34, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %392, label %388

388:                                              ; preds = %385
  %389 = load %struct.sock*, %struct.sock** %12, align 8
  %390 = getelementptr inbounds %struct.sock, %struct.sock* %389, i32 0, i32 2
  %391 = load i64, i64* %390, align 8
  store i64 %391, i64* %34, align 8
  br label %392

392:                                              ; preds = %388, %385
  %393 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %394 = load i32, i32* @INET_DIAG_CLASS_ID, align 4
  %395 = load i64, i64* %34, align 8
  %396 = call i64 @nla_put_u32(%struct.sk_buff* %393, i32 %394, i64 %395)
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %399

398:                                              ; preds = %392
  br label %405

399:                                              ; preds = %392
  br label %400

400:                                              ; preds = %399, %378
  br label %401

401:                                              ; preds = %400, %156
  %402 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %403 = load %struct.nlmsghdr*, %struct.nlmsghdr** %26, align 8
  %404 = call i32 @nlmsg_end(%struct.sk_buff* %402, %struct.nlmsghdr* %403)
  store i32 0, i32* %11, align 4
  br label %411

405:                                              ; preds = %398, %369, %330, %300, %270, %151, %135, %120, %91
  %406 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %407 = load %struct.nlmsghdr*, %struct.nlmsghdr** %26, align 8
  %408 = call i32 @nlmsg_cancel(%struct.sk_buff* %406, %struct.nlmsghdr* %407)
  %409 = load i32, i32* @EMSGSIZE, align 4
  %410 = sub nsw i32 0, %409
  store i32 %410, i32* %11, align 4
  br label %411

411:                                              ; preds = %405, %401, %59
  %412 = load i32, i32* %11, align 4
  ret i32 %412
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i64, i64, i32, i32, i32) #1

declare dso_local %struct.inet_diag_msg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @sk_fullsock(%struct.sock*) #1

declare dso_local i32 @inet_diag_msg_common_fill(%struct.inet_diag_msg*, %struct.sock*) #1

declare dso_local i64 @inet_diag_msg_attrs_fill(%struct.sock*, %struct.sk_buff*, %struct.inet_diag_msg*, i32, %struct.user_namespace*, i32) #1

declare dso_local i32 @sk_wmem_alloc_get(%struct.sock*) #1

declare dso_local %struct.tcp_congestion_ops* @READ_ONCE(i32) #1

declare dso_local i32 @sk_rmem_alloc_get(%struct.sock*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, %union.tcp_cc_info*) #1

declare dso_local i64 @sock_diag_put_meminfo(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i8* @jiffies_to_msecs(i64) #1

declare dso_local i64 @timer_pending(%struct.TYPE_2__*) #1

declare dso_local %struct.nlattr* @nla_reserve_64bit(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
