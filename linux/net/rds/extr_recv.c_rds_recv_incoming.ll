; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_recv.c_rds_recv_incoming.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_recv.c_rds_recv_incoming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { i32, i32, %struct.rds_conn_path*, %struct.TYPE_6__* }
%struct.rds_conn_path = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.in6_addr = type { i32 }
%struct.rds_incoming = type { i32, i32*, %struct.TYPE_7__, %struct.TYPE_9__, %struct.rds_connection*, i32, %struct.rds_conn_path* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i32, i32, i32 }
%struct.rds_sock = type { i32, i32 }
%struct.sock = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"conn %p next %llu inc %p seq %llu len %u sport %u dport %u flags 0x%x rx_jiffies %lu\0A\00", align 1
@RDS_FLAG_RETRANSMITTED = common dso_local global i32 0, align 4
@s_recv_drop_old_seq = common dso_local global i32 0, align 4
@rds_sysctl_ping_enable = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"ignore ping with 0 sport from %pI6c\0A\00", align 1
@s_recv_ping = common dso_local global i32 0, align 4
@RDS_FLAG_PROBE_PORT = common dso_local global i64 0, align 8
@s_recv_drop_no_sock = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"adding inc %p to rs %p's recv queue\0A\00", align 1
@s_recv_queued = common dso_local global i32 0, align 4
@SOCK_RCVTSTAMP = common dso_local global i32 0, align 4
@RDS_MSG_RX_END = common dso_local global i64 0, align 8
@s_recv_drop_dead_sock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_recv_incoming(%struct.rds_connection* %0, %struct.in6_addr* %1, %struct.in6_addr* %2, %struct.rds_incoming* %3, i32 %4) #0 {
  %6 = alloca %struct.rds_connection*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.rds_incoming*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rds_sock*, align 8
  %12 = alloca %struct.sock*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.rds_conn_path*, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %6, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %7, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %8, align 8
  store %struct.rds_incoming* %3, %struct.rds_incoming** %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.rds_sock* null, %struct.rds_sock** %11, align 8
  %15 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %16 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %17 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %16, i32 0, i32 4
  store %struct.rds_connection* %15, %struct.rds_connection** %17, align 8
  %18 = load i32, i32* @jiffies, align 4
  %19 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %20 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %22 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %29 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %28, i32 0, i32 6
  %30 = load %struct.rds_conn_path*, %struct.rds_conn_path** %29, align 8
  store %struct.rds_conn_path* %30, %struct.rds_conn_path** %14, align 8
  br label %36

31:                                               ; preds = %5
  %32 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %33 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %32, i32 0, i32 2
  %34 = load %struct.rds_conn_path*, %struct.rds_conn_path** %33, align 8
  %35 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %34, i64 0
  store %struct.rds_conn_path* %35, %struct.rds_conn_path** %14, align 8
  br label %36

36:                                               ; preds = %31, %27
  %37 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %38 = load %struct.rds_conn_path*, %struct.rds_conn_path** %14, align 8
  %39 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %42 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %43 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @be64_to_cpu(i32 %45)
  %47 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %48 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @be32_to_cpu(i32 %50)
  %52 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %53 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @be16_to_cpu(i64 %55)
  %57 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %58 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @be16_to_cpu(i64 %60)
  %62 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %63 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %67 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), %struct.rds_connection* %37, i64 %40, %struct.rds_incoming* %41, i64 %46, i32 %51, i64 %56, i64 %61, i32 %65, i32 %68)
  %70 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %71 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @be64_to_cpu(i32 %73)
  %75 = load %struct.rds_conn_path*, %struct.rds_conn_path** %14, align 8
  %76 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %36
  %80 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %81 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @RDS_FLAG_RETRANSMITTED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* @s_recv_drop_old_seq, align 4
  %89 = call i32 @rds_stats_inc(i32 %88)
  br label %264

90:                                               ; preds = %79, %36
  %91 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %92 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @be64_to_cpu(i32 %94)
  %96 = add nsw i64 %95, 1
  %97 = load %struct.rds_conn_path*, %struct.rds_conn_path** %14, align 8
  %98 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load i64, i64* @rds_sysctl_ping_enable, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %149

101:                                              ; preds = %90
  %102 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %103 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %149

107:                                              ; preds = %101
  %108 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %109 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %115 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.in6_addr* %114)
  br label %264

116:                                              ; preds = %107
  %117 = load i32, i32* @s_recv_ping, align 4
  %118 = call i32 @rds_stats_inc(i32 %117)
  %119 = load %struct.rds_conn_path*, %struct.rds_conn_path** %14, align 8
  %120 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %121 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @rds_send_pong(%struct.rds_conn_path* %119, i64 %123)
  %125 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %126 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @be16_to_cpu(i64 %128)
  %130 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %131 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @be16_to_cpu(i64 %133)
  %135 = call i64 @RDS_HS_PROBE(i64 %129, i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %116
  %138 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %139 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %138, i32 0, i32 3
  %140 = load %struct.rds_conn_path*, %struct.rds_conn_path** %14, align 8
  %141 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %140, i32 0, i32 1
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = call i32 @rds_recv_hs_exthdrs(%struct.TYPE_9__* %139, %struct.TYPE_8__* %142)
  %144 = load %struct.rds_conn_path*, %struct.rds_conn_path** %14, align 8
  %145 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %144, i32 0, i32 1
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = call i32 @rds_start_mprds(%struct.TYPE_8__* %146)
  br label %148

148:                                              ; preds = %137, %116
  br label %264

149:                                              ; preds = %101, %90
  %150 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %151 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @be16_to_cpu(i64 %153)
  %155 = load i64, i64* @RDS_FLAG_PROBE_PORT, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %179

157:                                              ; preds = %149
  %158 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %159 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %179

163:                                              ; preds = %157
  %164 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %165 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %164, i32 0, i32 3
  %166 = load %struct.rds_conn_path*, %struct.rds_conn_path** %14, align 8
  %167 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %166, i32 0, i32 1
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = call i32 @rds_recv_hs_exthdrs(%struct.TYPE_9__* %165, %struct.TYPE_8__* %168)
  %170 = load %struct.rds_conn_path*, %struct.rds_conn_path** %14, align 8
  %171 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %170, i32 0, i32 1
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = call i32 @rds_start_mprds(%struct.TYPE_8__* %172)
  %174 = load %struct.rds_conn_path*, %struct.rds_conn_path** %14, align 8
  %175 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %174, i32 0, i32 1
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = call i32 @wake_up(i32* %177)
  br label %264

179:                                              ; preds = %157, %149
  %180 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %181 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %182 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %186 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call %struct.rds_sock* @rds_find_bound(%struct.in6_addr* %180, i64 %184, i32 %187)
  store %struct.rds_sock* %188, %struct.rds_sock** %11, align 8
  %189 = load %struct.rds_sock*, %struct.rds_sock** %11, align 8
  %190 = icmp ne %struct.rds_sock* %189, null
  br i1 %190, label %194, label %191

191:                                              ; preds = %179
  %192 = load i32, i32* @s_recv_drop_no_sock, align 4
  %193 = call i32 @rds_stats_inc(i32 %192)
  br label %264

194:                                              ; preds = %179
  %195 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %196 = load %struct.rds_sock*, %struct.rds_sock** %11, align 8
  %197 = call i32 @rds_recv_incoming_exthdrs(%struct.rds_incoming* %195, %struct.rds_sock* %196)
  %198 = load %struct.rds_sock*, %struct.rds_sock** %11, align 8
  %199 = call %struct.sock* @rds_rs_to_sk(%struct.rds_sock* %198)
  store %struct.sock* %199, %struct.sock** %12, align 8
  %200 = load %struct.rds_sock*, %struct.rds_sock** %11, align 8
  %201 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %200, i32 0, i32 0
  %202 = load i64, i64* %13, align 8
  %203 = call i32 @write_lock_irqsave(i32* %201, i64 %202)
  %204 = load %struct.sock*, %struct.sock** %12, align 8
  %205 = load i32, i32* @SOCK_DEAD, align 4
  %206 = call i64 @sock_flag(%struct.sock* %204, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %256, label %208

208:                                              ; preds = %194
  %209 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %210 = load %struct.rds_sock*, %struct.rds_sock** %11, align 8
  %211 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.rds_incoming* %209, %struct.rds_sock* %210)
  %212 = load i32, i32* @s_recv_queued, align 4
  %213 = call i32 @rds_stats_inc(i32 %212)
  %214 = load %struct.rds_sock*, %struct.rds_sock** %11, align 8
  %215 = load %struct.sock*, %struct.sock** %12, align 8
  %216 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %217 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %216, i32 0, i32 4
  %218 = load %struct.rds_connection*, %struct.rds_connection** %217, align 8
  %219 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %222 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @be32_to_cpu(i32 %224)
  %226 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %227 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @rds_recv_rcvbuf_delta(%struct.rds_sock* %214, %struct.sock* %215, i32 %220, i32 %225, i64 %229)
  %231 = load %struct.sock*, %struct.sock** %12, align 8
  %232 = load i32, i32* @SOCK_RCVTSTAMP, align 4
  %233 = call i64 @sock_flag(%struct.sock* %231, i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %208
  %236 = call i32 (...) @ktime_get_real()
  %237 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %238 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  store i32 %236, i32* %239, align 8
  br label %240

240:                                              ; preds = %235, %208
  %241 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %242 = call i32 @rds_inc_addref(%struct.rds_incoming* %241)
  %243 = call i32 (...) @local_clock()
  %244 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %245 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = load i64, i64* @RDS_MSG_RX_END, align 8
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  store i32 %243, i32* %248, align 4
  %249 = load %struct.rds_incoming*, %struct.rds_incoming** %9, align 8
  %250 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %249, i32 0, i32 0
  %251 = load %struct.rds_sock*, %struct.rds_sock** %11, align 8
  %252 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %251, i32 0, i32 1
  %253 = call i32 @list_add_tail(i32* %250, i32* %252)
  %254 = load %struct.sock*, %struct.sock** %12, align 8
  %255 = call i32 @__rds_wake_sk_sleep(%struct.sock* %254)
  br label %259

256:                                              ; preds = %194
  %257 = load i32, i32* @s_recv_drop_dead_sock, align 4
  %258 = call i32 @rds_stats_inc(i32 %257)
  br label %259

259:                                              ; preds = %256, %240
  %260 = load %struct.rds_sock*, %struct.rds_sock** %11, align 8
  %261 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %260, i32 0, i32 0
  %262 = load i64, i64* %13, align 8
  %263 = call i32 @write_unlock_irqrestore(i32* %261, i64 %262)
  br label %264

264:                                              ; preds = %259, %191, %163, %148, %113, %87
  %265 = load %struct.rds_sock*, %struct.rds_sock** %11, align 8
  %266 = icmp ne %struct.rds_sock* %265, null
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load %struct.rds_sock*, %struct.rds_sock** %11, align 8
  %269 = call i32 @rds_sock_put(%struct.rds_sock* %268)
  br label %270

270:                                              ; preds = %267, %264
  ret void
}

declare dso_local i32 @rdsdebug(i8*, ...) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @be16_to_cpu(i64) #1

declare dso_local i32 @rds_stats_inc(i32) #1

declare dso_local i32 @rds_send_pong(%struct.rds_conn_path*, i64) #1

declare dso_local i64 @RDS_HS_PROBE(i64, i64) #1

declare dso_local i32 @rds_recv_hs_exthdrs(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @rds_start_mprds(%struct.TYPE_8__*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local %struct.rds_sock* @rds_find_bound(%struct.in6_addr*, i64, i32) #1

declare dso_local i32 @rds_recv_incoming_exthdrs(%struct.rds_incoming*, %struct.rds_sock*) #1

declare dso_local %struct.sock* @rds_rs_to_sk(%struct.rds_sock*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @rds_recv_rcvbuf_delta(%struct.rds_sock*, %struct.sock*, i32, i32, i64) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @rds_inc_addref(%struct.rds_incoming*) #1

declare dso_local i32 @local_clock(...) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @__rds_wake_sk_sleep(%struct.sock*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rds_sock_put(%struct.rds_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
