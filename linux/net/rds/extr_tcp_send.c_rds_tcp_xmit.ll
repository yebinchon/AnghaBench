; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_tcp_send.c_rds_tcp_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_tcp_send.c_rds_tcp_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { i32 }
%struct.rds_message = type { %struct.TYPE_15__, %struct.TYPE_13__, i64, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.rds_conn_path* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.rds_conn_path = type { i32, %struct.rds_tcp_connection* }
%struct.rds_tcp_connection = type { %struct.TYPE_16__*, i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_16__*, i64, i64, i32, i32)* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@RDS_MSG_HAS_ACK_SEQ = common dso_local global i32 0, align 4
@RDS_MSG_RETRANSMITTED = common dso_local global i32 0, align 4
@RDS_FLAG_RETRANSMITTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"rm %p tcp nxt %u ack_seq %llu\0A\00", align 1
@SOCK_NOSPACE = common dso_local global i32 0, align 4
@MSG_MORE = common dso_local global i32 0, align 4
@MSG_SENDPAGE_NOTLAST = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"tcp sendpage %p:%u:%u ret %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@s_tcp_sndbuf_full = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"RDS/tcp: send to %pI6c on cp [%d]returned %d, disconnecting and reconnecting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_tcp_xmit(%struct.rds_connection* %0, %struct.rds_message* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rds_connection*, align 8
  %7 = alloca %struct.rds_message*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rds_conn_path*, align 8
  %12 = alloca %struct.rds_tcp_connection*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rds_connection* %0, %struct.rds_connection** %6, align 8
  store %struct.rds_message* %1, %struct.rds_message** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %18 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load %struct.rds_conn_path*, %struct.rds_conn_path** %19, align 8
  store %struct.rds_conn_path* %20, %struct.rds_conn_path** %11, align 8
  %21 = load %struct.rds_conn_path*, %struct.rds_conn_path** %11, align 8
  %22 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %21, i32 0, i32 1
  %23 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %22, align 8
  store %struct.rds_tcp_connection* %23, %struct.rds_tcp_connection** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %79

26:                                               ; preds = %5
  %27 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %12, align 8
  %28 = call i64 @rds_tcp_write_seq(%struct.rds_tcp_connection* %27)
  %29 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %12, align 8
  %30 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %12, align 8
  %32 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 4
  %35 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %36 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @be32_to_cpu(i32 %39)
  %41 = add i64 %34, %40
  %42 = sub i64 %41, 1
  %43 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %44 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = call i32 (...) @smp_mb__before_atomic()
  %46 = load i32, i32* @RDS_MSG_HAS_ACK_SEQ, align 4
  %47 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %48 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %47, i32 0, i32 3
  %49 = call i32 @set_bit(i32 %46, i32* %48)
  %50 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %51 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %12, align 8
  %55 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* @RDS_MSG_RETRANSMITTED, align 4
  %57 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %58 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %57, i32 0, i32 3
  %59 = call i64 @test_bit(i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %26
  %62 = load i32, i32* @RDS_FLAG_RETRANSMITTED, align 4
  %63 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %64 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %62
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %61, %26
  %70 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %71 = bitcast %struct.rds_message* %70 to i8*
  %72 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %12, align 8
  %73 = call i64 @rds_tcp_write_seq(%struct.rds_tcp_connection* %72)
  %74 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %75 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 (i8*, i8*, i64, i32, ...) @rdsdebug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %71, i64 %73, i32 %77)
  br label %79

79:                                               ; preds = %69, %5
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = icmp ult i64 %81, 4
  br i1 %82, label %83, label %123

83:                                               ; preds = %79
  %84 = load i32, i32* @SOCK_NOSPACE, align 4
  %85 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %12, align 8
  %86 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %85, i32 0, i32 0
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = call i32 @set_bit(i32 %84, i32* %92)
  %94 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %12, align 8
  %95 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %94, i32 0, i32 0
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %98 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = bitcast %struct.TYPE_12__* %99 to i8*
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr i8, i8* %100, i64 %102
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = sub i64 8, %105
  %107 = trunc i64 %106 to i32
  %108 = call i32 @rds_tcp_sendmsg(%struct.TYPE_16__* %96, i8* %103, i32 %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %83
  br label %261

112:                                              ; preds = %83
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %13, align 4
  %118 = add i32 %116, %117
  %119 = zext i32 %118 to i64
  %120 = icmp ne i64 %119, 4
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %261

122:                                              ; preds = %112
  br label %123

123:                                              ; preds = %122, %79
  %124 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %125 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp sgt i32 %127, 1
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load i32, i32* @MSG_MORE, align 4
  %131 = load i32, i32* @MSG_SENDPAGE_NOTLAST, align 4
  %132 = or i32 %130, %131
  br label %134

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133, %129
  %135 = phi i32 [ %132, %129 ], [ 0, %133 ]
  store i32 %135, i32* %15, align 4
  br label %136

136:                                              ; preds = %259, %134
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %139 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ult i32 %137, %141
  br i1 %142, label %143, label %260

143:                                              ; preds = %136
  %144 = load i32, i32* @MSG_DONTWAIT, align 4
  %145 = load i32, i32* @MSG_NOSIGNAL, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* %15, align 4
  %148 = or i32 %146, %147
  store i32 %148, i32* %16, align 4
  %149 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %12, align 8
  %150 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %149, i32 0, i32 0
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i32 (%struct.TYPE_16__*, i64, i64, i32, i32)*, i32 (%struct.TYPE_16__*, i64, i64, i32, i32)** %154, align 8
  %156 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %12, align 8
  %157 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %156, i32 0, i32 0
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %157, align 8
  %159 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %160 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i64 %164
  %166 = call i64 @sg_page(%struct.TYPE_17__* %165)
  %167 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %168 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = zext i32 %176 to i64
  %178 = add nsw i64 %175, %177
  %179 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %180 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = sub i32 %187, %188
  %190 = load i32, i32* %16, align 4
  %191 = call i32 %155(%struct.TYPE_16__* %158, i64 %166, i64 %178, i32 %189, i32 %190)
  store i32 %191, i32* %14, align 4
  %192 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %193 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i64 %197
  %199 = call i64 @sg_page(%struct.TYPE_17__* %198)
  %200 = inttoptr i64 %199 to i8*
  %201 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %202 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %203, align 8
  %205 = load i32, i32* %9, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = zext i32 %210 to i64
  %212 = add nsw i64 %209, %211
  %213 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %214 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %215, align 8
  %217 = load i32, i32* %9, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sub i32 %221, %222
  %224 = load i32, i32* %14, align 4
  %225 = call i32 (i8*, i8*, i64, i32, ...) @rdsdebug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %200, i64 %212, i32 %223, i32 %224)
  %226 = load i32, i32* %14, align 4
  %227 = icmp sle i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %143
  br label %260

229:                                              ; preds = %143
  %230 = load i32, i32* %14, align 4
  %231 = load i32, i32* %10, align 4
  %232 = add i32 %231, %230
  store i32 %232, i32* %10, align 4
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* %13, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %13, align 4
  %236 = load i32, i32* %10, align 4
  %237 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %238 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %239, align 8
  %241 = load i32, i32* %9, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp eq i32 %236, %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %229
  store i32 0, i32* %10, align 4
  %248 = load i32, i32* %9, align 4
  %249 = add i32 %248, 1
  store i32 %249, i32* %9, align 4
  br label %250

250:                                              ; preds = %247, %229
  %251 = load i32, i32* %9, align 4
  %252 = load %struct.rds_message*, %struct.rds_message** %7, align 8
  %253 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = sub nsw i32 %255, 1
  %257 = icmp eq i32 %251, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %250
  store i32 0, i32* %15, align 4
  br label %259

259:                                              ; preds = %258, %250
  br label %136

260:                                              ; preds = %228, %136
  br label %261

261:                                              ; preds = %260, %121, %111
  %262 = load i32, i32* %14, align 4
  %263 = icmp sle i32 %262, 0
  br i1 %263, label %264, label %288

264:                                              ; preds = %261
  %265 = load i32, i32* %14, align 4
  %266 = load i32, i32* @EAGAIN, align 4
  %267 = sub nsw i32 0, %266
  %268 = icmp eq i32 %265, %267
  br i1 %268, label %269, label %272

269:                                              ; preds = %264
  %270 = load i32, i32* @s_tcp_sndbuf_full, align 4
  %271 = call i32 @rds_tcp_stats_inc(i32 %270)
  store i32 0, i32* %14, align 4
  br label %287

272:                                              ; preds = %264
  %273 = load %struct.rds_conn_path*, %struct.rds_conn_path** %11, align 8
  %274 = call i64 @rds_conn_path_up(%struct.rds_conn_path* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %286

276:                                              ; preds = %272
  %277 = load %struct.rds_connection*, %struct.rds_connection** %6, align 8
  %278 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %277, i32 0, i32 0
  %279 = load %struct.rds_conn_path*, %struct.rds_conn_path** %11, align 8
  %280 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %14, align 4
  %283 = call i32 @pr_warn(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i32* %278, i32 %281, i32 %282)
  %284 = load %struct.rds_conn_path*, %struct.rds_conn_path** %11, align 8
  %285 = call i32 @rds_conn_path_drop(%struct.rds_conn_path* %284, i32 0)
  br label %286

286:                                              ; preds = %276, %272
  br label %287

287:                                              ; preds = %286, %269
  br label %288

288:                                              ; preds = %287, %261
  %289 = load i32, i32* %13, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %288
  %292 = load i32, i32* %14, align 4
  store i32 %292, i32* %13, align 4
  br label %293

293:                                              ; preds = %291, %288
  %294 = load i32, i32* %13, align 4
  ret i32 %294
}

declare dso_local i64 @rds_tcp_write_seq(%struct.rds_tcp_connection*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rdsdebug(i8*, i8*, i64, i32, ...) #1

declare dso_local i32 @rds_tcp_sendmsg(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i64 @sg_page(%struct.TYPE_17__*) #1

declare dso_local i32 @rds_tcp_stats_inc(i32) #1

declare dso_local i64 @rds_conn_path_up(%struct.rds_conn_path*) #1

declare dso_local i32 @pr_warn(i8*, i32*, i32, i32) #1

declare dso_local i32 @rds_conn_path_drop(%struct.rds_conn_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
