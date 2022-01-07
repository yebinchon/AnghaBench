; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_minisocks.c_tcp_create_openreq_child.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_minisocks.c_tcp_create_openreq_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { i32, i64, i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.inet_request_sock = type { i32, i32, i64, i32, i64 }
%struct.tcp_request_sock = type { i32, i32, i8*, i32, i8* }
%struct.inet_connection_sock = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i8* }
%struct.tcp_sock = type { i32, i8*, i32, i32, i32, i32, i32*, %struct.TYPE_7__, %struct.TYPE_5__*, i32*, i32, i32, i8*, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, i32, i8*, i8*, i32, i32, i8*, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i32, i64, i64, i32 }
%struct.TYPE_5__ = type { i64 (%struct.sock*, %struct.sock*)* }
%struct.TYPE_8__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@tcp_jiffies32 = common dso_local global i8* null, align 8
@SOCK_KEEPOPEN = common dso_local global i32 0, align 4
@TCPOLEN_TSTAMP_ALIGNED = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@TCP_TS_HZ = common dso_local global i32 0, align 4
@TCP_MSS_DEFAULT = common dso_local global i64 0, align 8
@TCP_MIB_PASSIVEOPENS = common dso_local global i32 0, align 4
@TCPOLEN_MD5SIG_ALIGNED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @tcp_create_openreq_child(%struct.sock* %0, %struct.request_sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.request_sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.inet_request_sock*, align 8
  %10 = alloca %struct.tcp_request_sock*, align 8
  %11 = alloca %struct.inet_connection_sock*, align 8
  %12 = alloca %struct.tcp_sock*, align 8
  %13 = alloca %struct.tcp_sock*, align 8
  %14 = alloca i8*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.request_sock* %1, %struct.request_sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.sock* @inet_csk_clone_lock(%struct.sock* %15, %struct.request_sock* %16, i32 %17)
  store %struct.sock* %18, %struct.sock** %8, align 8
  %19 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %20 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %19)
  store %struct.inet_request_sock* %20, %struct.inet_request_sock** %9, align 8
  %21 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %22 = call %struct.tcp_request_sock* @tcp_rsk(%struct.request_sock* %21)
  store %struct.tcp_request_sock* %22, %struct.tcp_request_sock** %10, align 8
  %23 = load %struct.sock*, %struct.sock** %8, align 8
  %24 = icmp ne %struct.sock* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store %struct.sock* null, %struct.sock** %4, align 8
  br label %308

26:                                               ; preds = %3
  %27 = load %struct.sock*, %struct.sock** %8, align 8
  %28 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %27)
  store %struct.inet_connection_sock* %28, %struct.inet_connection_sock** %11, align 8
  %29 = load %struct.sock*, %struct.sock** %8, align 8
  %30 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %29)
  store %struct.tcp_sock* %30, %struct.tcp_sock** %13, align 8
  %31 = load %struct.sock*, %struct.sock** %5, align 8
  %32 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %31)
  store %struct.tcp_sock* %32, %struct.tcp_sock** %12, align 8
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %34 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %36 = call i32 @smc_check_reset_syn_req(%struct.tcp_sock* %33, %struct.request_sock* %34, %struct.tcp_sock* %35)
  %37 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %38 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %37, i32 0, i32 29
  store i64 0, i64* %38, align 8
  %39 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %10, align 8
  %40 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %39, i32 0, i32 4
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr i8, i8* %41, i64 1
  store i8* %42, i8** %14, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %45 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %44, i32 0, i32 28
  store i8* %43, i8** %45, align 8
  %46 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %47 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %46, i32 0, i32 27
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 @WRITE_ONCE(i32 %48, i8* %49)
  %51 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %52 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %51, i32 0, i32 26
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = call i32 @WRITE_ONCE(i32 %53, i8* %54)
  %56 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %57 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %10, align 8
  %59 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr i8, i8* %60, i64 1
  store i8* %61, i8** %14, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %64 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %63, i32 0, i32 24
  store i8* %62, i8** %64, align 8
  %65 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %66 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %65, i32 0, i32 25
  store i8* %62, i8** %66, align 8
  %67 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %68 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %67, i32 0, i32 23
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = call i32 @WRITE_ONCE(i32 %69, i8* %70)
  %72 = load i8*, i8** %14, align 8
  %73 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %74 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %73, i32 0, i32 22
  store i8* %72, i8** %74, align 8
  %75 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %76 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %75, i32 0, i32 21
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %79 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %78, i32 0, i32 20
  %80 = call i32 @INIT_LIST_HEAD(i32* %79)
  %81 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %82 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %10, align 8
  %83 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %82, i32 0, i32 4
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @tcp_init_wl(%struct.tcp_sock* %81, i8* %84)
  %86 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %87 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %86, i32 0, i32 19
  %88 = load i8*, i8** @tcp_jiffies32, align 8
  %89 = call i32 @minmax_reset(i32* %87, i8* %88, i32 -1)
  %90 = load i8*, i8** @tcp_jiffies32, align 8
  %91 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %11, align 8
  %92 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i8* %90, i8** %93, align 8
  %94 = load i8*, i8** @tcp_jiffies32, align 8
  %95 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %96 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %95, i32 0, i32 18
  store i8* %94, i8** %96, align 8
  %97 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %10, align 8
  %98 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.sock*, %struct.sock** %8, align 8
  %101 = getelementptr inbounds %struct.sock, %struct.sock* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %103 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %106 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %105, i32 0, i32 17
  store i32 %104, i32* %106, align 8
  %107 = load %struct.sock*, %struct.sock** %8, align 8
  %108 = call i32 @tcp_init_xmit_timers(%struct.sock* %107)
  %109 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %110 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %109, i32 0, i32 16
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %10, align 8
  %113 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr i8, i8* %114, i64 1
  %116 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %117 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = call i32 @WRITE_ONCE(i32 %111, i8* %115)
  %119 = load %struct.sock*, %struct.sock** %8, align 8
  %120 = load i32, i32* @SOCK_KEEPOPEN, align 4
  %121 = call i64 @sock_flag(%struct.sock* %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %26
  %124 = load %struct.sock*, %struct.sock** %8, align 8
  %125 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %126 = call i32 @keepalive_time_when(%struct.tcp_sock* %125)
  %127 = call i32 @inet_csk_reset_keepalive_timer(%struct.sock* %124, i32 %126)
  br label %128

128:                                              ; preds = %123, %26
  %129 = load %struct.inet_request_sock*, %struct.inet_request_sock** %9, align 8
  %130 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %133 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %132, i32 0, i32 7
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 5
  store i64 %131, i64* %134, align 8
  %135 = load %struct.inet_request_sock*, %struct.inet_request_sock** %9, align 8
  %136 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %139 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %138, i32 0, i32 7
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 7
  store i32 %137, i32* %140, align 8
  %141 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %142 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %145 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %144, i32 0, i32 13
  store i32 %143, i32* %145, align 8
  %146 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %147 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %150 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %149, i32 0, i32 15
  store i32 %148, i32* %150, align 8
  %151 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %152 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %155 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %154, i32 0, i32 14
  store i32 %153, i32* %155, align 4
  %156 = load %struct.inet_request_sock*, %struct.inet_request_sock** %9, align 8
  %157 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %160 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %159, i32 0, i32 7
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 6
  store i64 %158, i64* %161, align 8
  %162 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %163 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %162, i32 0, i32 7
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 6
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %128
  %168 = load %struct.inet_request_sock*, %struct.inet_request_sock** %9, align 8
  %169 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %172 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %171, i32 0, i32 7
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  store i32 %170, i32* %173, align 8
  %174 = load %struct.inet_request_sock*, %struct.inet_request_sock** %9, align 8
  %175 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %178 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %177, i32 0, i32 7
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  store i32 %176, i32* %179, align 4
  br label %193

180:                                              ; preds = %128
  %181 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %182 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %181, i32 0, i32 7
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  store i32 0, i32* %183, align 4
  %184 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %185 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %184, i32 0, i32 7
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  store i32 0, i32* %186, align 8
  %187 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %188 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %187, i32 0, i32 13
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @min(i32 %189, i32 65535)
  %191 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %192 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %191, i32 0, i32 13
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %180, %167
  %194 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %195 = call %struct.TYPE_8__* @tcp_hdr(%struct.sk_buff* %194)
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @ntohs(i32 %197)
  %199 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %200 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %199, i32 0, i32 7
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = shl i32 %198, %202
  %204 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %205 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 8
  %206 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %207 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %210 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 4
  %211 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %212 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %211, i32 0, i32 7
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 5
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %233

216:                                              ; preds = %193
  %217 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %218 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %221 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %220, i32 0, i32 7
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 4
  store i32 %219, i32* %222, align 8
  %223 = call i64 (...) @ktime_get_seconds()
  %224 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %225 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %224, i32 0, i32 7
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 3
  store i64 %223, i64* %226, align 8
  %227 = load i32, i32* @TCPOLEN_TSTAMP_ALIGNED, align 4
  %228 = sext i32 %227 to i64
  %229 = add i64 4, %228
  %230 = trunc i64 %229 to i32
  %231 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %232 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %231, i32 0, i32 4
  store i32 %230, i32* %232, align 8
  br label %239

233:                                              ; preds = %193
  %234 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %235 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %234, i32 0, i32 7
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 3
  store i64 0, i64* %236, align 8
  %237 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %238 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %237, i32 0, i32 4
  store i32 4, i32* %238, align 8
  br label %239

239:                                              ; preds = %233, %216
  %240 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %241 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %259

244:                                              ; preds = %239
  %245 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %10, align 8
  %246 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %245, i32 0, i32 2
  %247 = load i8*, i8** %246, align 8
  %248 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %249 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %248, i32 0, i32 12
  store i8* %247, i8** %249, align 8
  %250 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %10, align 8
  %251 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @USEC_PER_SEC, align 4
  %254 = load i32, i32* @TCP_TS_HZ, align 4
  %255 = sdiv i32 %253, %254
  %256 = call i32 @div_u64(i32 %252, i32 %255)
  %257 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %258 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %257, i32 0, i32 11
  store i32 %256, i32* %258, align 4
  br label %259

259:                                              ; preds = %244, %239
  %260 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %10, align 8
  %261 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %264 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %263, i32 0, i32 10
  store i32 %262, i32* %264, align 8
  %265 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %266 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @TCP_MSS_DEFAULT, align 8
  %269 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %270 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = sext i32 %271 to i64
  %273 = add nsw i64 %268, %272
  %274 = icmp sge i64 %267, %273
  br i1 %274, label %275, label %287

275:                                              ; preds = %259
  %276 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %277 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %280 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = sext i32 %281 to i64
  %283 = sub nsw i64 %278, %282
  %284 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %11, align 8
  %285 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  store i64 %283, i64* %286, align 8
  br label %287

287:                                              ; preds = %275, %259
  %288 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %289 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %292 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %291, i32 0, i32 7
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 2
  store i32 %290, i32* %293, align 8
  %294 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %295 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %296 = call i32 @tcp_ecn_openreq_child(%struct.tcp_sock* %294, %struct.request_sock* %295)
  %297 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %298 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %297, i32 0, i32 6
  store i32* null, i32** %298, align 8
  %299 = load %struct.tcp_sock*, %struct.tcp_sock** %13, align 8
  %300 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @RCU_INIT_POINTER(i32 %301, i32* null)
  %303 = load %struct.sock*, %struct.sock** %5, align 8
  %304 = call i32 @sock_net(%struct.sock* %303)
  %305 = load i32, i32* @TCP_MIB_PASSIVEOPENS, align 4
  %306 = call i32 @__TCP_INC_STATS(i32 %304, i32 %305)
  %307 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %307, %struct.sock** %4, align 8
  br label %308

308:                                              ; preds = %287, %25
  %309 = load %struct.sock*, %struct.sock** %4, align 8
  ret %struct.sock* %309
}

declare dso_local %struct.sock* @inet_csk_clone_lock(%struct.sock*, %struct.request_sock*, i32) #1

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.tcp_request_sock* @tcp_rsk(%struct.request_sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @smc_check_reset_syn_req(%struct.tcp_sock*, %struct.request_sock*, %struct.tcp_sock*) #1

declare dso_local i32 @WRITE_ONCE(i32, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tcp_init_wl(%struct.tcp_sock*, i8*) #1

declare dso_local i32 @minmax_reset(i32*, i8*, i32) #1

declare dso_local i32 @tcp_init_xmit_timers(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_reset_keepalive_timer(%struct.sock*, i32) #1

declare dso_local i32 @keepalive_time_when(%struct.tcp_sock*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.TYPE_8__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ktime_get_seconds(...) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @tcp_ecn_openreq_child(%struct.tcp_sock*, %struct.request_sock*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @__TCP_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
