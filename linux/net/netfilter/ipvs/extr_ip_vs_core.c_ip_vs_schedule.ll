; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ip_vs_service = type { i32, i64, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ip_vs_proto_data = type { %struct.ip_vs_protocol* }
%struct.ip_vs_protocol = type { i32 }
%struct.ip_vs_iphdr = type { i64, i32, i32, i32, i32, i32 }
%struct.ip_vs_scheduler = type { %struct.ip_vs_dest* (%struct.ip_vs_service*, %struct.sk_buff*, %struct.ip_vs_iphdr.0*)* }
%struct.ip_vs_dest = type { i64, i32, i32 }
%struct.ip_vs_iphdr.0 = type opaque
%struct.ip_vs_conn_param = type { i32 }

@FTPDATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Not scheduling FTPDATA\00", align 1
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IP_VS_HDR_INVERSE = common dso_local global i32 0, align 4
@ip_vs_conn_in_get_proto = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Not scheduling reply for existing connection\00", align 1
@IP_VS_SVC_F_PERSISTENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [90 x i8] c"Schedule: port zero only supported in persistent services, check your ipvs configuration\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Schedule: no dest found.\0A\00", align 1
@IP_VS_SVC_F_ONEPACKET = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@IP_VS_CONN_F_ONE_PACKET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [72 x i8] c"Schedule fwd:%c c:%s:%u v:%s:%u d:%s:%u conn->flags:%X conn->refcnt:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ip_vs_conn* @ip_vs_schedule(%struct.ip_vs_service* %0, %struct.sk_buff* %1, %struct.ip_vs_proto_data* %2, i32* %3, %struct.ip_vs_iphdr* %4) #0 {
  %6 = alloca %struct.ip_vs_conn*, align 8
  %7 = alloca %struct.ip_vs_service*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ip_vs_proto_data*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ip_vs_iphdr*, align 8
  %12 = alloca %struct.ip_vs_protocol*, align 8
  %13 = alloca %struct.ip_vs_conn*, align 8
  %14 = alloca %struct.ip_vs_scheduler*, align 8
  %15 = alloca %struct.ip_vs_dest*, align 8
  %16 = alloca [2 x i64], align 16
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.ip_vs_conn_param, align 4
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.ip_vs_proto_data* %2, %struct.ip_vs_proto_data** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.ip_vs_iphdr* %4, %struct.ip_vs_iphdr** %11, align 8
  %24 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %9, align 8
  %25 = getelementptr inbounds %struct.ip_vs_proto_data, %struct.ip_vs_proto_data* %24, i32 0, i32 0
  %26 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %25, align 8
  store %struct.ip_vs_protocol* %26, %struct.ip_vs_protocol** %12, align 8
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %13, align 8
  %27 = load i32*, i32** %10, align 8
  store i32 1, i32* %27, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %11, align 8
  %30 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 0
  %33 = call i64* @frag_safe_skb_hp(%struct.sk_buff* %28, i32 %31, i32 16, i64* %32)
  store i64* %33, i64** %17, align 8
  %34 = load i64*, i64** %17, align 8
  %35 = icmp eq i64* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %5
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %6, align 8
  br label %299

37:                                               ; preds = %5
  %38 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %11, align 8
  %39 = call i32 @ip_vs_iph_inverse(%struct.ip_vs_iphdr* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @likely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %37
  %46 = load i64*, i64** %17, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %18, align 8
  %49 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %11, align 8
  %50 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %49, i32 0, i32 3
  %51 = bitcast i32* %50 to i8*
  store i8* %51, i8** %20, align 8
  %52 = load i64*, i64** %17, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %19, align 8
  %55 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %11, align 8
  %56 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %55, i32 0, i32 4
  %57 = bitcast i32* %56 to i8*
  store i8* %57, i8** %21, align 8
  br label %71

58:                                               ; preds = %37
  %59 = load i64*, i64** %17, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %18, align 8
  %62 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %11, align 8
  %63 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %62, i32 0, i32 4
  %64 = bitcast i32* %63 to i8*
  store i8* %64, i8** %20, align 8
  %65 = load i64*, i64** %17, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %19, align 8
  %68 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %11, align 8
  %69 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %68, i32 0, i32 3
  %70 = bitcast i32* %69 to i8*
  store i8* %70, i8** %21, align 8
  br label %71

71:                                               ; preds = %58, %45
  %72 = load i64, i64* %18, align 8
  %73 = load i64, i64* @FTPDATA, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %77 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %12, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %81 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %11, align 8
  %82 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @IP_VS_DBG_PKT(i32 12, i32 %78, %struct.ip_vs_protocol* %79, %struct.sk_buff* %80, i32 %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %6, align 8
  br label %299

85:                                               ; preds = %71
  %86 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = icmp ne %struct.TYPE_2__* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IFF_LOOPBACK, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %138

99:                                               ; preds = %90, %85
  %100 = load i32, i32* @IP_VS_HDR_INVERSE, align 4
  %101 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %11, align 8
  %102 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = xor i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %12, align 8
  %106 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @ip_vs_conn_in_get_proto, align 4
  %109 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %110 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %113 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %116 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %11, align 8
  %117 = call %struct.ip_vs_conn* @INDIRECT_CALL_1(i32 %107, i32 %108, i32 %111, i32 %114, %struct.sk_buff* %115, %struct.ip_vs_iphdr* %116)
  store %struct.ip_vs_conn* %117, %struct.ip_vs_conn** %13, align 8
  %118 = load i32, i32* @IP_VS_HDR_INVERSE, align 4
  %119 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %11, align 8
  %120 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = xor i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %124 = icmp ne %struct.ip_vs_conn* %123, null
  br i1 %124, label %125, label %137

125:                                              ; preds = %99
  %126 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %127 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %12, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %131 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %11, align 8
  %132 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @IP_VS_DBG_PKT(i32 12, i32 %128, %struct.ip_vs_protocol* %129, %struct.sk_buff* %130, i32 %133, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %135 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %136 = call i32 @__ip_vs_conn_put(%struct.ip_vs_conn* %135)
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %6, align 8
  br label %299

137:                                              ; preds = %99
  br label %138

138:                                              ; preds = %137, %90
  %139 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %140 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @IP_VS_SVC_F_PERSISTENT, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %138
  %146 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %148 = load i64, i64* %18, align 8
  %149 = load i64, i64* %19, align 8
  %150 = load i32*, i32** %10, align 8
  %151 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %11, align 8
  %152 = call %struct.ip_vs_conn* @ip_vs_sched_persist(%struct.ip_vs_service* %146, %struct.sk_buff* %147, i64 %148, i64 %149, i32* %150, %struct.ip_vs_iphdr* %151)
  store %struct.ip_vs_conn* %152, %struct.ip_vs_conn** %6, align 8
  br label %299

153:                                              ; preds = %138
  %154 = load i32*, i32** %10, align 8
  store i32 0, i32* %154, align 4
  %155 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %156 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %173, label %159

159:                                              ; preds = %153
  %160 = load i64, i64* %19, align 8
  %161 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %162 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %160, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %159
  %166 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %167 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %165
  %171 = call i32 @pr_err(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %165
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %6, align 8
  br label %299

173:                                              ; preds = %159, %153
  %174 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %175 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = call %struct.ip_vs_scheduler* @rcu_dereference(i32 %176)
  store %struct.ip_vs_scheduler* %177, %struct.ip_vs_scheduler** %14, align 8
  %178 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %14, align 8
  %179 = icmp ne %struct.ip_vs_scheduler* %178, null
  br i1 %179, label %180, label %190

180:                                              ; preds = %173
  %181 = call i32 (...) @smp_rmb()
  %182 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %14, align 8
  %183 = getelementptr inbounds %struct.ip_vs_scheduler, %struct.ip_vs_scheduler* %182, i32 0, i32 0
  %184 = load %struct.ip_vs_dest* (%struct.ip_vs_service*, %struct.sk_buff*, %struct.ip_vs_iphdr.0*)*, %struct.ip_vs_dest* (%struct.ip_vs_service*, %struct.sk_buff*, %struct.ip_vs_iphdr.0*)** %183, align 8
  %185 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %186 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %187 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %11, align 8
  %188 = bitcast %struct.ip_vs_iphdr* %187 to %struct.ip_vs_iphdr.0*
  %189 = call %struct.ip_vs_dest* %184(%struct.ip_vs_service* %185, %struct.sk_buff* %186, %struct.ip_vs_iphdr.0* %188)
  store %struct.ip_vs_dest* %189, %struct.ip_vs_dest** %15, align 8
  br label %191

190:                                              ; preds = %173
  store %struct.ip_vs_dest* null, %struct.ip_vs_dest** %15, align 8
  br label %191

191:                                              ; preds = %190, %180
  %192 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %15, align 8
  %193 = icmp eq %struct.ip_vs_dest* %192, null
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  %195 = call i32 @IP_VS_DBG(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %6, align 8
  br label %299

196:                                              ; preds = %191
  %197 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %198 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @IP_VS_SVC_F_ONEPACKET, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %196
  %204 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %11, align 8
  %205 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @IPPROTO_UDP, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %203
  %210 = load i32, i32* @IP_VS_CONN_F_ONE_PACKET, align 4
  br label %212

211:                                              ; preds = %203, %196
  br label %212

212:                                              ; preds = %211, %209
  %213 = phi i32 [ %210, %209 ], [ 0, %211 ]
  store i32 %213, i32* %22, align 4
  %214 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %215 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %218 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %11, align 8
  %221 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i8*, i8** %20, align 8
  %224 = load i64, i64* %18, align 8
  %225 = load i8*, i8** %21, align 8
  %226 = load i64, i64* %19, align 8
  %227 = call i32 @ip_vs_conn_fill_param(i32 %216, i32 %219, i64 %222, i8* %223, i64 %224, i8* %225, i64 %226, %struct.ip_vs_conn_param* %23)
  %228 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %15, align 8
  %229 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %15, align 8
  %232 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %231, i32 0, i32 1
  %233 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %15, align 8
  %234 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %212
  %238 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %15, align 8
  %239 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  br label %243

241:                                              ; preds = %212
  %242 = load i64, i64* %19, align 8
  br label %243

243:                                              ; preds = %241, %237
  %244 = phi i64 [ %240, %237 ], [ %242, %241 ]
  %245 = load i32, i32* %22, align 4
  %246 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %15, align 8
  %247 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %248 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call %struct.ip_vs_conn* @ip_vs_conn_new(%struct.ip_vs_conn_param* %23, i32 %230, i32* %232, i64 %244, i32 %245, %struct.ip_vs_dest* %246, i32 %249)
  store %struct.ip_vs_conn* %250, %struct.ip_vs_conn** %13, align 8
  %251 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %252 = icmp ne %struct.ip_vs_conn* %251, null
  br i1 %252, label %255, label %253

253:                                              ; preds = %243
  %254 = load i32*, i32** %10, align 8
  store i32 -1, i32* %254, align 4
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %6, align 8
  br label %299

255:                                              ; preds = %243
  %256 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %257 = call i32 @ip_vs_fwd_tag(%struct.ip_vs_conn* %256)
  %258 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %259 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %258, i32 0, i32 7
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %262 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %261, i32 0, i32 9
  %263 = call i32 @IP_VS_DBG_ADDR(i32 %260, i32* %262)
  %264 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %265 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %264, i32 0, i32 8
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @ntohs(i32 %266)
  %268 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %269 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %268, i32 0, i32 7
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %272 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %271, i32 0, i32 6
  %273 = call i32 @IP_VS_DBG_ADDR(i32 %270, i32* %272)
  %274 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %275 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @ntohs(i32 %276)
  %278 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %279 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %282 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %281, i32 0, i32 3
  %283 = call i32 @IP_VS_DBG_ADDR(i32 %280, i32* %282)
  %284 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %285 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @ntohs(i32 %286)
  %288 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %289 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %292 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %291, i32 0, i32 0
  %293 = call i32 @refcount_read(i32* %292)
  %294 = call i32 @IP_VS_DBG_BUF(i32 6, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0), i32 %257, i32 %263, i32 %267, i32 %273, i32 %277, i32 %283, i32 %287, i32 %290, i32 %293)
  %295 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %296 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %297 = call i32 @ip_vs_conn_stats(%struct.ip_vs_conn* %295, %struct.ip_vs_service* %296)
  %298 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  store %struct.ip_vs_conn* %298, %struct.ip_vs_conn** %6, align 8
  br label %299

299:                                              ; preds = %255, %253, %194, %172, %145, %125, %75, %36
  %300 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  ret %struct.ip_vs_conn* %300
}

declare dso_local i64* @frag_safe_skb_hp(%struct.sk_buff*, i32, i32, i64*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ip_vs_iph_inverse(%struct.ip_vs_iphdr*) #1

declare dso_local i32 @IP_VS_DBG_PKT(i32, i32, %struct.ip_vs_protocol*, %struct.sk_buff*, i32, i8*) #1

declare dso_local %struct.ip_vs_conn* @INDIRECT_CALL_1(i32, i32, i32, i32, %struct.sk_buff*, %struct.ip_vs_iphdr*) #1

declare dso_local i32 @__ip_vs_conn_put(%struct.ip_vs_conn*) #1

declare dso_local %struct.ip_vs_conn* @ip_vs_sched_persist(%struct.ip_vs_service*, %struct.sk_buff*, i64, i64, i32*, %struct.ip_vs_iphdr*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.ip_vs_scheduler* @rcu_dereference(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*) #1

declare dso_local i32 @ip_vs_conn_fill_param(i32, i32, i64, i8*, i64, i8*, i64, %struct.ip_vs_conn_param*) #1

declare dso_local %struct.ip_vs_conn* @ip_vs_conn_new(%struct.ip_vs_conn_param*, i32, i32*, i64, i32, %struct.ip_vs_dest*, i32) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ip_vs_fwd_tag(%struct.ip_vs_conn*) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @ip_vs_conn_stats(%struct.ip_vs_conn*, %struct.ip_vs_service*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
