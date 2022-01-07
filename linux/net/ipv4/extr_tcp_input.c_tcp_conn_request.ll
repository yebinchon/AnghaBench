; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_conn_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_conn_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_fastopen_cookie.10 = type { i32 }
%struct.request_sock_ops = type { i32, i32 }
%struct.tcp_request_sock_ops = type { i32 (%struct.sock*, %struct.dst_entry*, %struct.flowi*, %struct.request_sock*, %struct.tcp_fastopen_cookie*, i32)*, i64 (%struct.sk_buff*)*, %struct.dst_entry.0* (%struct.sock.1*, %struct.flowi.2*, %struct.request_sock.3*)*, i64 (%struct.net*, %struct.sk_buff.4*)*, i32 (%struct.request_sock.5*, %struct.sock.6*, %struct.sk_buff.7*)*, i32 }
%struct.sock = type opaque
%struct.dst_entry = type opaque
%struct.flowi = type opaque
%struct.request_sock = type opaque
%struct.tcp_fastopen_cookie = type opaque
%struct.sk_buff = type opaque
%struct.dst_entry.0 = type { i32 }
%struct.sock.1 = type opaque
%struct.flowi.2 = type opaque
%struct.request_sock.3 = type opaque
%struct.net = type opaque
%struct.sk_buff.4 = type opaque
%struct.request_sock.5 = type opaque
%struct.sock.6 = type opaque
%struct.sk_buff.7 = type opaque
%struct.sock.8 = type { i32 (%struct.sock.8*)* }
%struct.sk_buff.9 = type { i32 }
%struct.tcp_options_received = type { i64, i64, i64, i32, i32 }
%struct.tcp_sock = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.net.11 = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.request_sock.12 = type { i64, i32 }
%struct.flowi.13 = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i64, i64, %struct.tcp_request_sock_ops* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@__const.tcp_conn_request.foc = private unnamed_addr constant %struct.tcp_fastopen_cookie.10 { i32 -1 }, align 4
@LINUX_MIB_LISTENOVERFLOWS = common dso_local global i32 0, align 4
@CONFIG_SMC = common dso_local global i32 0, align 4
@TCP_SYNACK_FASTOPEN = common dso_local global i32 0, align 4
@TCP_SYNACK_NORMAL = common dso_local global i32 0, align 4
@TCP_SYNACK_COOKIE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_conn_request(%struct.request_sock_ops* %0, %struct.tcp_request_sock_ops* %1, %struct.sock.8* %2, %struct.sk_buff.9* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_sock_ops*, align 8
  %7 = alloca %struct.tcp_request_sock_ops*, align 8
  %8 = alloca %struct.sock.8*, align 8
  %9 = alloca %struct.sk_buff.9*, align 8
  %10 = alloca %struct.tcp_fastopen_cookie.10, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.tcp_options_received, align 8
  %13 = alloca %struct.tcp_sock*, align 8
  %14 = alloca %struct.net.11*, align 8
  %15 = alloca %struct.sock.8*, align 8
  %16 = alloca %struct.request_sock.12*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.dst_entry.0*, align 8
  %19 = alloca %struct.flowi.13, align 4
  store %struct.request_sock_ops* %0, %struct.request_sock_ops** %6, align 8
  store %struct.tcp_request_sock_ops* %1, %struct.tcp_request_sock_ops** %7, align 8
  store %struct.sock.8* %2, %struct.sock.8** %8, align 8
  store %struct.sk_buff.9* %3, %struct.sk_buff.9** %9, align 8
  %20 = bitcast %struct.tcp_fastopen_cookie.10* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.tcp_fastopen_cookie.10* @__const.tcp_conn_request.foc to i8*), i64 4, i1 false)
  %21 = load %struct.sk_buff.9*, %struct.sk_buff.9** %9, align 8
  %22 = call %struct.TYPE_14__* @TCP_SKB_CB(%struct.sk_buff.9* %21)
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  %25 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %26 = call %struct.tcp_sock* @tcp_sk(%struct.sock.8* %25)
  store %struct.tcp_sock* %26, %struct.tcp_sock** %13, align 8
  %27 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %28 = call %struct.net.11* @sock_net(%struct.sock.8* %27)
  store %struct.net.11* %28, %struct.net.11** %14, align 8
  store %struct.sock.8* null, %struct.sock.8** %15, align 8
  store i32 0, i32* %17, align 4
  %29 = load %struct.net.11*, %struct.net.11** %14, align 8
  %30 = getelementptr inbounds %struct.net.11, %struct.net.11* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %38, label %34

34:                                               ; preds = %4
  %35 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %36 = call i64 @inet_csk_reqsk_queue_is_full(%struct.sock.8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %34, %4
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %38
  %42 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %43 = load %struct.request_sock_ops*, %struct.request_sock_ops** %6, align 8
  %44 = getelementptr inbounds %struct.request_sock_ops, %struct.request_sock_ops* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @tcp_syn_flood_action(%struct.sock.8* %42, i32 %45)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  br label %376

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %38, %34
  %52 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %53 = call i64 @sk_acceptq_is_full(%struct.sock.8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %57 = call %struct.net.11* @sock_net(%struct.sock.8* %56)
  %58 = load i32, i32* @LINUX_MIB_LISTENOVERFLOWS, align 4
  %59 = call i32 @NET_INC_STATS(%struct.net.11* %57, i32 %58)
  br label %376

60:                                               ; preds = %51
  %61 = load %struct.request_sock_ops*, %struct.request_sock_ops** %6, align 8
  %62 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %63 = load i32, i32* %17, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call %struct.request_sock.12* @inet_reqsk_alloc(%struct.request_sock_ops* %61, %struct.sock.8* %62, i32 %66)
  store %struct.request_sock.12* %67, %struct.request_sock.12** %16, align 8
  %68 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %69 = icmp ne %struct.request_sock.12* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %60
  br label %376

71:                                               ; preds = %60
  %72 = load %struct.tcp_request_sock_ops*, %struct.tcp_request_sock_ops** %7, align 8
  %73 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %74 = call %struct.TYPE_10__* @tcp_rsk(%struct.request_sock.12* %73)
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 4
  store %struct.tcp_request_sock_ops* %72, %struct.tcp_request_sock_ops** %75, align 8
  %76 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %77 = call %struct.TYPE_10__* @tcp_rsk(%struct.request_sock.12* %76)
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = call i32 @tcp_clear_options(%struct.tcp_options_received* %12)
  %80 = load %struct.tcp_request_sock_ops*, %struct.tcp_request_sock_ops** %7, align 8
  %81 = getelementptr inbounds %struct.tcp_request_sock_ops, %struct.tcp_request_sock_ops* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %12, i32 0, i32 4
  store i32 %82, i32* %83, align 4
  %84 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %85 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %12, i32 0, i32 3
  store i32 %87, i32* %88, align 8
  %89 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %90 = call %struct.net.11* @sock_net(%struct.sock.8* %89)
  %91 = load %struct.sk_buff.9*, %struct.sk_buff.9** %9, align 8
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %71
  br label %96

95:                                               ; preds = %71
  br label %96

96:                                               ; preds = %95, %94
  %97 = phi %struct.tcp_fastopen_cookie.10* [ null, %94 ], [ %10, %95 ]
  %98 = call i32 @tcp_parse_options(%struct.net.11* %90, %struct.sk_buff.9* %91, %struct.tcp_options_received* %12, i32 0, %struct.tcp_fastopen_cookie.10* %97)
  %99 = load i32, i32* %17, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %12, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = call i32 @tcp_clear_options(%struct.tcp_options_received* %12)
  br label %107

107:                                              ; preds = %105, %101, %96
  %108 = load i32, i32* @CONFIG_SMC, align 4
  %109 = call i64 @IS_ENABLED(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i32, i32* %17, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %12, i32 0, i32 2
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %114, %111, %107
  %117 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %12, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %12, i32 0, i32 0
  store i64 %118, i64* %119, align 8
  %120 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %121 = load %struct.sk_buff.9*, %struct.sk_buff.9** %9, align 8
  %122 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %123 = call i32 @tcp_openreq_init(%struct.request_sock.12* %120, %struct.tcp_options_received* %12, %struct.sk_buff.9* %121, %struct.sock.8* %122)
  %124 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %125 = call %struct.TYPE_12__* @inet_sk(%struct.sock.8* %124)
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %129 = call %struct.TYPE_13__* @inet_rsk(%struct.request_sock.12* %128)
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  store i32 %127, i32* %130, align 4
  %131 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %132 = load %struct.sk_buff.9*, %struct.sk_buff.9** %9, align 8
  %133 = call i32 @inet_request_bound_dev_if(%struct.sock.8* %131, %struct.sk_buff.9* %132)
  %134 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %135 = call %struct.TYPE_13__* @inet_rsk(%struct.request_sock.12* %134)
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 8
  %137 = load %struct.tcp_request_sock_ops*, %struct.tcp_request_sock_ops** %7, align 8
  %138 = getelementptr inbounds %struct.tcp_request_sock_ops, %struct.tcp_request_sock_ops* %137, i32 0, i32 4
  %139 = load i32 (%struct.request_sock.5*, %struct.sock.6*, %struct.sk_buff.7*)*, i32 (%struct.request_sock.5*, %struct.sock.6*, %struct.sk_buff.7*)** %138, align 8
  %140 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %141 = bitcast %struct.request_sock.12* %140 to %struct.request_sock.5*
  %142 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %143 = bitcast %struct.sock.8* %142 to %struct.sock.6*
  %144 = load %struct.sk_buff.9*, %struct.sk_buff.9** %9, align 8
  %145 = bitcast %struct.sk_buff.9* %144 to %struct.sk_buff.7*
  %146 = call i32 %139(%struct.request_sock.5* %141, %struct.sock.6* %143, %struct.sk_buff.7* %145)
  %147 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %148 = load %struct.sk_buff.9*, %struct.sk_buff.9** %9, align 8
  %149 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %150 = call i64 @security_inet_conn_request(%struct.sock.8* %147, %struct.sk_buff.9* %148, %struct.request_sock.12* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %116
  br label %373

153:                                              ; preds = %116
  %154 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %12, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %169

157:                                              ; preds = %153
  %158 = load %struct.tcp_request_sock_ops*, %struct.tcp_request_sock_ops** %7, align 8
  %159 = getelementptr inbounds %struct.tcp_request_sock_ops, %struct.tcp_request_sock_ops* %158, i32 0, i32 3
  %160 = load i64 (%struct.net*, %struct.sk_buff.4*)*, i64 (%struct.net*, %struct.sk_buff.4*)** %159, align 8
  %161 = load %struct.net.11*, %struct.net.11** %14, align 8
  %162 = bitcast %struct.net.11* %161 to %struct.net*
  %163 = load %struct.sk_buff.9*, %struct.sk_buff.9** %9, align 8
  %164 = bitcast %struct.sk_buff.9* %163 to %struct.sk_buff.4*
  %165 = call i64 %160(%struct.net* %162, %struct.sk_buff.4* %164)
  %166 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %167 = call %struct.TYPE_10__* @tcp_rsk(%struct.request_sock.12* %166)
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 3
  store i64 %165, i64* %168, align 8
  br label %169

169:                                              ; preds = %157, %153
  %170 = load %struct.tcp_request_sock_ops*, %struct.tcp_request_sock_ops** %7, align 8
  %171 = getelementptr inbounds %struct.tcp_request_sock_ops, %struct.tcp_request_sock_ops* %170, i32 0, i32 2
  %172 = load %struct.dst_entry.0* (%struct.sock.1*, %struct.flowi.2*, %struct.request_sock.3*)*, %struct.dst_entry.0* (%struct.sock.1*, %struct.flowi.2*, %struct.request_sock.3*)** %171, align 8
  %173 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %174 = bitcast %struct.sock.8* %173 to %struct.sock.1*
  %175 = bitcast %struct.flowi.13* %19 to %struct.flowi.2*
  %176 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %177 = bitcast %struct.request_sock.12* %176 to %struct.request_sock.3*
  %178 = call %struct.dst_entry.0* %172(%struct.sock.1* %174, %struct.flowi.2* %175, %struct.request_sock.3* %177)
  store %struct.dst_entry.0* %178, %struct.dst_entry.0** %18, align 8
  %179 = load %struct.dst_entry.0*, %struct.dst_entry.0** %18, align 8
  %180 = icmp ne %struct.dst_entry.0* %179, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %169
  br label %373

182:                                              ; preds = %169
  %183 = load i32, i32* %17, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %231, label %185

185:                                              ; preds = %182
  %186 = load i64, i64* %11, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %231, label %188

188:                                              ; preds = %185
  %189 = load %struct.net.11*, %struct.net.11** %14, align 8
  %190 = getelementptr inbounds %struct.net.11, %struct.net.11* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %224, label %194

194:                                              ; preds = %188
  %195 = load %struct.net.11*, %struct.net.11** %14, align 8
  %196 = getelementptr inbounds %struct.net.11, %struct.net.11* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %200 = call i32 @inet_csk_reqsk_queue_len(%struct.sock.8* %199)
  %201 = sub nsw i32 %198, %200
  %202 = load %struct.net.11*, %struct.net.11** %14, align 8
  %203 = getelementptr inbounds %struct.net.11, %struct.net.11* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = ashr i32 %205, 2
  %207 = icmp slt i32 %201, %206
  br i1 %207, label %208, label %224

208:                                              ; preds = %194
  %209 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %210 = load %struct.dst_entry.0*, %struct.dst_entry.0** %18, align 8
  %211 = call i32 @tcp_peer_is_proven(%struct.request_sock.12* %209, %struct.dst_entry.0* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %224, label %213

213:                                              ; preds = %208
  %214 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %215 = load %struct.sk_buff.9*, %struct.sk_buff.9** %9, align 8
  %216 = call %struct.TYPE_11__* @tcp_hdr(%struct.sk_buff.9* %215)
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @ntohs(i32 %218)
  %220 = load %struct.request_sock_ops*, %struct.request_sock_ops** %6, align 8
  %221 = getelementptr inbounds %struct.request_sock_ops, %struct.request_sock_ops* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @pr_drop_req(%struct.request_sock.12* %214, i32 %219, i32 %222)
  br label %370

224:                                              ; preds = %208, %194, %188
  %225 = load %struct.tcp_request_sock_ops*, %struct.tcp_request_sock_ops** %7, align 8
  %226 = getelementptr inbounds %struct.tcp_request_sock_ops, %struct.tcp_request_sock_ops* %225, i32 0, i32 1
  %227 = load i64 (%struct.sk_buff*)*, i64 (%struct.sk_buff*)** %226, align 8
  %228 = load %struct.sk_buff.9*, %struct.sk_buff.9** %9, align 8
  %229 = bitcast %struct.sk_buff.9* %228 to %struct.sk_buff*
  %230 = call i64 %227(%struct.sk_buff* %229)
  store i64 %230, i64* %11, align 8
  br label %231

231:                                              ; preds = %224, %185, %182
  %232 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %233 = load %struct.sk_buff.9*, %struct.sk_buff.9** %9, align 8
  %234 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %235 = load %struct.dst_entry.0*, %struct.dst_entry.0** %18, align 8
  %236 = call i32 @tcp_ecn_create_request(%struct.request_sock.12* %232, %struct.sk_buff.9* %233, %struct.sock.8* %234, %struct.dst_entry.0* %235)
  %237 = load i32, i32* %17, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %258

239:                                              ; preds = %231
  %240 = load %struct.tcp_request_sock_ops*, %struct.tcp_request_sock_ops** %7, align 8
  %241 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %242 = load %struct.sk_buff.9*, %struct.sk_buff.9** %9, align 8
  %243 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %244 = getelementptr inbounds %struct.request_sock.12, %struct.request_sock.12* %243, i32 0, i32 1
  %245 = call i64 @cookie_init_sequence(%struct.tcp_request_sock_ops* %240, %struct.sock.8* %241, %struct.sk_buff.9* %242, i32* %244)
  store i64 %245, i64* %11, align 8
  %246 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %12, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %249 = getelementptr inbounds %struct.request_sock.12, %struct.request_sock.12* %248, i32 0, i32 0
  store i64 %247, i64* %249, align 8
  %250 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %12, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %257, label %253

253:                                              ; preds = %239
  %254 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %255 = call %struct.TYPE_13__* @inet_rsk(%struct.request_sock.12* %254)
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 0
  store i64 0, i64* %256, align 8
  br label %257

257:                                              ; preds = %253, %239
  br label %258

258:                                              ; preds = %257, %231
  %259 = load i64, i64* %11, align 8
  %260 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %261 = call %struct.TYPE_10__* @tcp_rsk(%struct.request_sock.12* %260)
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 2
  store i64 %259, i64* %262, align 8
  %263 = call i32 (...) @net_tx_rndhash()
  %264 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %265 = call %struct.TYPE_10__* @tcp_rsk(%struct.request_sock.12* %264)
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 1
  store i32 %263, i32* %266, align 4
  %267 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %268 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %269 = load %struct.dst_entry.0*, %struct.dst_entry.0** %18, align 8
  %270 = call i32 @tcp_openreq_init_rwin(%struct.request_sock.12* %267, %struct.sock.8* %268, %struct.dst_entry.0* %269)
  %271 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %272 = call i32 @req_to_sk(%struct.request_sock.12* %271)
  %273 = load %struct.sk_buff.9*, %struct.sk_buff.9** %9, align 8
  %274 = call i32 @sk_rx_queue_set(i32 %272, %struct.sk_buff.9* %273)
  %275 = load i32, i32* %17, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %287, label %277

277:                                              ; preds = %258
  %278 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %279 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %280 = load %struct.sk_buff.9*, %struct.sk_buff.9** %9, align 8
  %281 = call i32 @tcp_reqsk_record_syn(%struct.sock.8* %278, %struct.request_sock.12* %279, %struct.sk_buff.9* %280)
  %282 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %283 = load %struct.sk_buff.9*, %struct.sk_buff.9** %9, align 8
  %284 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %285 = load %struct.dst_entry.0*, %struct.dst_entry.0** %18, align 8
  %286 = call %struct.sock.8* @tcp_try_fastopen(%struct.sock.8* %282, %struct.sk_buff.9* %283, %struct.request_sock.12* %284, %struct.tcp_fastopen_cookie.10* %10, %struct.dst_entry.0* %285)
  store %struct.sock.8* %286, %struct.sock.8** %15, align 8
  br label %287

287:                                              ; preds = %277, %258
  %288 = load %struct.sock.8*, %struct.sock.8** %15, align 8
  %289 = icmp ne %struct.sock.8* %288, null
  br i1 %289, label %290, label %327

290:                                              ; preds = %287
  %291 = load %struct.tcp_request_sock_ops*, %struct.tcp_request_sock_ops** %7, align 8
  %292 = getelementptr inbounds %struct.tcp_request_sock_ops, %struct.tcp_request_sock_ops* %291, i32 0, i32 0
  %293 = load i32 (%struct.sock*, %struct.dst_entry*, %struct.flowi*, %struct.request_sock*, %struct.tcp_fastopen_cookie*, i32)*, i32 (%struct.sock*, %struct.dst_entry*, %struct.flowi*, %struct.request_sock*, %struct.tcp_fastopen_cookie*, i32)** %292, align 8
  %294 = load %struct.sock.8*, %struct.sock.8** %15, align 8
  %295 = bitcast %struct.sock.8* %294 to %struct.sock*
  %296 = load %struct.dst_entry.0*, %struct.dst_entry.0** %18, align 8
  %297 = bitcast %struct.dst_entry.0* %296 to %struct.dst_entry*
  %298 = bitcast %struct.flowi.13* %19 to %struct.flowi*
  %299 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %300 = bitcast %struct.request_sock.12* %299 to %struct.request_sock*
  %301 = bitcast %struct.tcp_fastopen_cookie.10* %10 to %struct.tcp_fastopen_cookie*
  %302 = load i32, i32* @TCP_SYNACK_FASTOPEN, align 4
  %303 = call i32 %293(%struct.sock* %295, %struct.dst_entry* %297, %struct.flowi* %298, %struct.request_sock* %300, %struct.tcp_fastopen_cookie* %301, i32 %302)
  %304 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %305 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %306 = load %struct.sock.8*, %struct.sock.8** %15, align 8
  %307 = call i32 @inet_csk_reqsk_queue_add(%struct.sock.8* %304, %struct.request_sock.12* %305, %struct.sock.8* %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %317, label %309

309:                                              ; preds = %290
  %310 = load %struct.sock.8*, %struct.sock.8** %15, align 8
  %311 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %312 = call i32 @reqsk_fastopen_remove(%struct.sock.8* %310, %struct.request_sock.12* %311, i32 0)
  %313 = load %struct.sock.8*, %struct.sock.8** %15, align 8
  %314 = call i32 @bh_unlock_sock(%struct.sock.8* %313)
  %315 = load %struct.sock.8*, %struct.sock.8** %15, align 8
  %316 = call i32 @sock_put(%struct.sock.8* %315)
  br label %373

317:                                              ; preds = %290
  %318 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %319 = getelementptr inbounds %struct.sock.8, %struct.sock.8* %318, i32 0, i32 0
  %320 = load i32 (%struct.sock.8*)*, i32 (%struct.sock.8*)** %319, align 8
  %321 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %322 = call i32 %320(%struct.sock.8* %321)
  %323 = load %struct.sock.8*, %struct.sock.8** %15, align 8
  %324 = call i32 @bh_unlock_sock(%struct.sock.8* %323)
  %325 = load %struct.sock.8*, %struct.sock.8** %15, align 8
  %326 = call i32 @sock_put(%struct.sock.8* %325)
  br label %367

327:                                              ; preds = %287
  %328 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %329 = call %struct.TYPE_10__* @tcp_rsk(%struct.request_sock.12* %328)
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 0
  store i32 0, i32* %330, align 8
  %331 = load i32, i32* %17, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %340, label %333

333:                                              ; preds = %327
  %334 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %335 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %336 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %337 = bitcast %struct.request_sock.12* %336 to %struct.sock.8*
  %338 = call i32 @tcp_timeout_init(%struct.sock.8* %337)
  %339 = call i32 @inet_csk_reqsk_queue_hash_add(%struct.sock.8* %334, %struct.request_sock.12* %335, i32 %338)
  br label %340

340:                                              ; preds = %333, %327
  %341 = load %struct.tcp_request_sock_ops*, %struct.tcp_request_sock_ops** %7, align 8
  %342 = getelementptr inbounds %struct.tcp_request_sock_ops, %struct.tcp_request_sock_ops* %341, i32 0, i32 0
  %343 = load i32 (%struct.sock*, %struct.dst_entry*, %struct.flowi*, %struct.request_sock*, %struct.tcp_fastopen_cookie*, i32)*, i32 (%struct.sock*, %struct.dst_entry*, %struct.flowi*, %struct.request_sock*, %struct.tcp_fastopen_cookie*, i32)** %342, align 8
  %344 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %345 = bitcast %struct.sock.8* %344 to %struct.sock*
  %346 = load %struct.dst_entry.0*, %struct.dst_entry.0** %18, align 8
  %347 = bitcast %struct.dst_entry.0* %346 to %struct.dst_entry*
  %348 = bitcast %struct.flowi.13* %19 to %struct.flowi*
  %349 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %350 = bitcast %struct.request_sock.12* %349 to %struct.request_sock*
  %351 = bitcast %struct.tcp_fastopen_cookie.10* %10 to %struct.tcp_fastopen_cookie*
  %352 = load i32, i32* %17, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %356, label %354

354:                                              ; preds = %340
  %355 = load i32, i32* @TCP_SYNACK_NORMAL, align 4
  br label %358

356:                                              ; preds = %340
  %357 = load i32, i32* @TCP_SYNACK_COOKIE, align 4
  br label %358

358:                                              ; preds = %356, %354
  %359 = phi i32 [ %355, %354 ], [ %357, %356 ]
  %360 = call i32 %343(%struct.sock* %345, %struct.dst_entry* %347, %struct.flowi* %348, %struct.request_sock* %350, %struct.tcp_fastopen_cookie* %351, i32 %359)
  %361 = load i32, i32* %17, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %366

363:                                              ; preds = %358
  %364 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %365 = call i32 @reqsk_free(%struct.request_sock.12* %364)
  store i32 0, i32* %5, align 4
  br label %379

366:                                              ; preds = %358
  br label %367

367:                                              ; preds = %366, %317
  %368 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %369 = call i32 @reqsk_put(%struct.request_sock.12* %368)
  store i32 0, i32* %5, align 4
  br label %379

370:                                              ; preds = %213
  %371 = load %struct.dst_entry.0*, %struct.dst_entry.0** %18, align 8
  %372 = call i32 @dst_release(%struct.dst_entry.0* %371)
  br label %373

373:                                              ; preds = %370, %309, %181, %152
  %374 = load %struct.request_sock.12*, %struct.request_sock.12** %16, align 8
  %375 = call i32 @__reqsk_free(%struct.request_sock.12* %374)
  br label %376

376:                                              ; preds = %373, %70, %55, %49
  %377 = load %struct.sock.8*, %struct.sock.8** %8, align 8
  %378 = call i32 @tcp_listendrop(%struct.sock.8* %377)
  store i32 0, i32* %5, align 4
  br label %379

379:                                              ; preds = %376, %367, %363
  %380 = load i32, i32* %5, align 4
  ret i32 %380
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_14__* @TCP_SKB_CB(%struct.sk_buff.9*) #2

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock.8*) #2

declare dso_local %struct.net.11* @sock_net(%struct.sock.8*) #2

declare dso_local i64 @inet_csk_reqsk_queue_is_full(%struct.sock.8*) #2

declare dso_local i32 @tcp_syn_flood_action(%struct.sock.8*, i32) #2

declare dso_local i64 @sk_acceptq_is_full(%struct.sock.8*) #2

declare dso_local i32 @NET_INC_STATS(%struct.net.11*, i32) #2

declare dso_local %struct.request_sock.12* @inet_reqsk_alloc(%struct.request_sock_ops*, %struct.sock.8*, i32) #2

declare dso_local %struct.TYPE_10__* @tcp_rsk(%struct.request_sock.12*) #2

declare dso_local i32 @tcp_clear_options(%struct.tcp_options_received*) #2

declare dso_local i32 @tcp_parse_options(%struct.net.11*, %struct.sk_buff.9*, %struct.tcp_options_received*, i32, %struct.tcp_fastopen_cookie.10*) #2

declare dso_local i64 @IS_ENABLED(i32) #2

declare dso_local i32 @tcp_openreq_init(%struct.request_sock.12*, %struct.tcp_options_received*, %struct.sk_buff.9*, %struct.sock.8*) #2

declare dso_local %struct.TYPE_12__* @inet_sk(%struct.sock.8*) #2

declare dso_local %struct.TYPE_13__* @inet_rsk(%struct.request_sock.12*) #2

declare dso_local i32 @inet_request_bound_dev_if(%struct.sock.8*, %struct.sk_buff.9*) #2

declare dso_local i64 @security_inet_conn_request(%struct.sock.8*, %struct.sk_buff.9*, %struct.request_sock.12*) #2

declare dso_local i32 @inet_csk_reqsk_queue_len(%struct.sock.8*) #2

declare dso_local i32 @tcp_peer_is_proven(%struct.request_sock.12*, %struct.dst_entry.0*) #2

declare dso_local i32 @pr_drop_req(%struct.request_sock.12*, i32, i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local %struct.TYPE_11__* @tcp_hdr(%struct.sk_buff.9*) #2

declare dso_local i32 @tcp_ecn_create_request(%struct.request_sock.12*, %struct.sk_buff.9*, %struct.sock.8*, %struct.dst_entry.0*) #2

declare dso_local i64 @cookie_init_sequence(%struct.tcp_request_sock_ops*, %struct.sock.8*, %struct.sk_buff.9*, i32*) #2

declare dso_local i32 @net_tx_rndhash(...) #2

declare dso_local i32 @tcp_openreq_init_rwin(%struct.request_sock.12*, %struct.sock.8*, %struct.dst_entry.0*) #2

declare dso_local i32 @sk_rx_queue_set(i32, %struct.sk_buff.9*) #2

declare dso_local i32 @req_to_sk(%struct.request_sock.12*) #2

declare dso_local i32 @tcp_reqsk_record_syn(%struct.sock.8*, %struct.request_sock.12*, %struct.sk_buff.9*) #2

declare dso_local %struct.sock.8* @tcp_try_fastopen(%struct.sock.8*, %struct.sk_buff.9*, %struct.request_sock.12*, %struct.tcp_fastopen_cookie.10*, %struct.dst_entry.0*) #2

declare dso_local i32 @inet_csk_reqsk_queue_add(%struct.sock.8*, %struct.request_sock.12*, %struct.sock.8*) #2

declare dso_local i32 @reqsk_fastopen_remove(%struct.sock.8*, %struct.request_sock.12*, i32) #2

declare dso_local i32 @bh_unlock_sock(%struct.sock.8*) #2

declare dso_local i32 @sock_put(%struct.sock.8*) #2

declare dso_local i32 @inet_csk_reqsk_queue_hash_add(%struct.sock.8*, %struct.request_sock.12*, i32) #2

declare dso_local i32 @tcp_timeout_init(%struct.sock.8*) #2

declare dso_local i32 @reqsk_free(%struct.request_sock.12*) #2

declare dso_local i32 @reqsk_put(%struct.request_sock.12*) #2

declare dso_local i32 @dst_release(%struct.dst_entry.0*) #2

declare dso_local i32 @__reqsk_free(%struct.request_sock.12*) #2

declare dso_local i32 @tcp_listendrop(%struct.sock.8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
