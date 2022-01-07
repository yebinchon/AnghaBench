; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_rds_ib_process_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_rds_ib_process_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_recv_work = type { %struct.TYPE_5__*, %struct.rds_ib_incoming* }
%struct.TYPE_5__ = type { i32 }
%struct.rds_ib_incoming = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.rds_header, i8** }
%struct.rds_header = type { i64, i64, i64, i64, i32, i64, i64 }
%struct.rds_connection = type { i32, i32, %struct.rds_ib_connection* }
%struct.rds_ib_connection = type { %struct.rds_ib_incoming*, %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work*, %struct.rds_header* }
%struct.rds_ib_ack_state = type { i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [36 x i8] c"ic %p ibinc %p recv %p byte len %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"incoming message from %pI6c didn't include a header, disconnecting and reconnecting\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"incoming message from %pI6c has corrupted header - forcing a reconnect\0A\00", align 1
@s_recv_drop_bad_checksum = common dso_local global i32 0, align 4
@s_ib_ack_received = common dso_local global i32 0, align 4
@RDS_MSG_RX_HDR = common dso_local global i64 0, align 8
@RDS_MSG_RX_START = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"ic %p ibinc %p rem %u flag 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"fragment header mismatch; forcing reconnect\0A\00", align 1
@RDS_FRAG_SIZE = common dso_local global %struct.rds_ib_recv_work* null, align 8
@RDS_FLAG_CONG_BITMAP = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@RDS_FLAG_ACK_REQUIRED = common dso_local global i32 0, align 4
@s_recv_ack_required = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_connection*, %struct.rds_ib_recv_work*, i32, %struct.rds_ib_ack_state*)* @rds_ib_process_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_ib_process_recv(%struct.rds_connection* %0, %struct.rds_ib_recv_work* %1, i32 %2, %struct.rds_ib_ack_state* %3) #0 {
  %5 = alloca %struct.rds_connection*, align 8
  %6 = alloca %struct.rds_ib_recv_work*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rds_ib_ack_state*, align 8
  %9 = alloca %struct.rds_ib_connection*, align 8
  %10 = alloca %struct.rds_ib_incoming*, align 8
  %11 = alloca %struct.rds_header*, align 8
  %12 = alloca %struct.rds_header*, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %5, align 8
  store %struct.rds_ib_recv_work* %1, %struct.rds_ib_recv_work** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.rds_ib_ack_state* %3, %struct.rds_ib_ack_state** %8, align 8
  %13 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %14 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %13, i32 0, i32 2
  %15 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %14, align 8
  store %struct.rds_ib_connection* %15, %struct.rds_ib_connection** %9, align 8
  %16 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %17 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %16, i32 0, i32 0
  %18 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %17, align 8
  store %struct.rds_ib_incoming* %18, %struct.rds_ib_incoming** %10, align 8
  %19 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %20 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %21 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @rdsdebug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.rds_ib_connection* %19, %struct.rds_ib_incoming* %20, %struct.rds_ib_recv_work* %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 56
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %29 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %30 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %29, i32 0, i32 1
  %31 = call i32 (%struct.rds_connection*, i8*, ...) @rds_ib_conn_error(%struct.rds_connection* %28, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32* %30)
  br label %263

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 %34, 56
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %38 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %37, i32 0, i32 3
  %39 = load %struct.rds_header*, %struct.rds_header** %38, align 8
  %40 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %6, align 8
  %41 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %42 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %41, i32 0, i32 2
  %43 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %42, align 8
  %44 = ptrtoint %struct.rds_ib_recv_work* %40 to i64
  %45 = ptrtoint %struct.rds_ib_recv_work* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 16
  %48 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %39, i64 %47
  store %struct.rds_header* %48, %struct.rds_header** %11, align 8
  %49 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %50 = call i32 @rds_message_verify_checksum(%struct.rds_header* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %32
  %53 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %54 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %55 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %54, i32 0, i32 1
  %56 = call i32 (%struct.rds_connection*, i8*, ...) @rds_ib_conn_error(%struct.rds_connection* %53, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32* %55)
  %57 = load i32, i32* @s_recv_drop_bad_checksum, align 4
  %58 = call i32 @rds_stats_inc(i32 %57)
  br label %263

59:                                               ; preds = %32
  %60 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %61 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @be64_to_cpu(i64 %62)
  %64 = load %struct.rds_ib_ack_state*, %struct.rds_ib_ack_state** %8, align 8
  %65 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load %struct.rds_ib_ack_state*, %struct.rds_ib_ack_state** %8, align 8
  %67 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %69 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %74 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %75 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @rds_ib_send_add_credits(%struct.rds_connection* %73, i64 %76)
  br label %78

78:                                               ; preds = %72, %59
  %79 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %80 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %78
  %84 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %85 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i32, i32* @s_ib_ack_received, align 4
  %93 = call i32 @rds_ib_stats_inc(i32 %92)
  %94 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %95 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %6, align 8
  %96 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = call i32 @rds_ib_frag_free(%struct.rds_ib_connection* %94, %struct.TYPE_5__* %97)
  %99 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %6, align 8
  %100 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %99, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %100, align 8
  br label %263

101:                                              ; preds = %88, %83, %78
  %102 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %103 = icmp ne %struct.rds_ib_incoming* %102, null
  br i1 %103, label %148, label %104

104:                                              ; preds = %101
  %105 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %6, align 8
  %106 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %105, i32 0, i32 1
  %107 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %106, align 8
  store %struct.rds_ib_incoming* %107, %struct.rds_ib_incoming** %10, align 8
  %108 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %6, align 8
  %109 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %108, i32 0, i32 1
  store %struct.rds_ib_incoming* null, %struct.rds_ib_incoming** %109, align 8
  %110 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %111 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %112 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %111, i32 0, i32 0
  store %struct.rds_ib_incoming* %110, %struct.rds_ib_incoming** %112, align 8
  %113 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %114 = getelementptr inbounds %struct.rds_ib_incoming, %struct.rds_ib_incoming* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store %struct.rds_header* %115, %struct.rds_header** %12, align 8
  %116 = call i8* (...) @local_clock()
  %117 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %118 = getelementptr inbounds %struct.rds_ib_incoming, %struct.rds_ib_incoming* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i8**, i8*** %119, align 8
  %121 = load i64, i64* @RDS_MSG_RX_HDR, align 8
  %122 = getelementptr inbounds i8*, i8** %120, i64 %121
  store i8* %116, i8** %122, align 8
  %123 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %124 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %125 = call i32 @memcpy(%struct.rds_header* %123, %struct.rds_header* %124, i32 56)
  %126 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %127 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = call %struct.rds_ib_recv_work* @be32_to_cpu(i64 %128)
  %130 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %131 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %130, i32 0, i32 1
  store %struct.rds_ib_recv_work* %129, %struct.rds_ib_recv_work** %131, align 8
  %132 = call i8* (...) @local_clock()
  %133 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %134 = getelementptr inbounds %struct.rds_ib_incoming, %struct.rds_ib_incoming* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i8**, i8*** %135, align 8
  %137 = load i64, i64* @RDS_MSG_RX_START, align 8
  %138 = getelementptr inbounds i8*, i8** %136, i64 %137
  store i8* %132, i8** %138, align 8
  %139 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %140 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %141 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %142 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %141, i32 0, i32 1
  %143 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %142, align 8
  %144 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %145 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @rdsdebug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), %struct.rds_ib_connection* %139, %struct.rds_ib_incoming* %140, %struct.rds_ib_recv_work* %143, i32 %146)
  br label %187

148:                                              ; preds = %101
  %149 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %150 = getelementptr inbounds %struct.rds_ib_incoming, %struct.rds_ib_incoming* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store %struct.rds_header* %151, %struct.rds_header** %12, align 8
  %152 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %153 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %152, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %156 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %154, %157
  br i1 %158, label %183, label %159

159:                                              ; preds = %148
  %160 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %161 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %164 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %162, %165
  br i1 %166, label %183, label %167

167:                                              ; preds = %159
  %168 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %169 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %172 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %170, %173
  br i1 %174, label %183, label %175

175:                                              ; preds = %167
  %176 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %177 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.rds_header*, %struct.rds_header** %11, align 8
  %180 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %178, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %175, %167, %159, %148
  %184 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %185 = call i32 (%struct.rds_connection*, i8*, ...) @rds_ib_conn_error(%struct.rds_connection* %184, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %263

186:                                              ; preds = %175
  br label %187

187:                                              ; preds = %186, %104
  %188 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %6, align 8
  %189 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %188, i32 0, i32 0
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %193 = getelementptr inbounds %struct.rds_ib_incoming, %struct.rds_ib_incoming* %192, i32 0, i32 1
  %194 = call i32 @list_add_tail(i32* %191, i32* %193)
  %195 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %6, align 8
  %196 = getelementptr inbounds %struct.rds_ib_recv_work, %struct.rds_ib_recv_work* %195, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %196, align 8
  %197 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %198 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %197, i32 0, i32 1
  %199 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %198, align 8
  %200 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** @RDS_FRAG_SIZE, align 8
  %201 = icmp ugt %struct.rds_ib_recv_work* %199, %200
  br i1 %201, label %202, label %212

202:                                              ; preds = %187
  %203 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** @RDS_FRAG_SIZE, align 8
  %204 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %205 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %204, i32 0, i32 1
  %206 = load %struct.rds_ib_recv_work*, %struct.rds_ib_recv_work** %205, align 8
  %207 = ptrtoint %struct.rds_ib_recv_work* %206 to i64
  %208 = ptrtoint %struct.rds_ib_recv_work* %203 to i64
  %209 = sub i64 %207, %208
  %210 = sdiv exact i64 %209, 16
  %211 = inttoptr i64 %210 to %struct.rds_ib_recv_work*
  store %struct.rds_ib_recv_work* %211, %struct.rds_ib_recv_work** %205, align 8
  br label %263

212:                                              ; preds = %187
  %213 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %214 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %213, i32 0, i32 1
  store %struct.rds_ib_recv_work* null, %struct.rds_ib_recv_work** %214, align 8
  %215 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %9, align 8
  %216 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %215, i32 0, i32 0
  store %struct.rds_ib_incoming* null, %struct.rds_ib_incoming** %216, align 8
  %217 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %218 = getelementptr inbounds %struct.rds_ib_incoming, %struct.rds_ib_incoming* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = load i64, i64* @RDS_FLAG_CONG_BITMAP, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %212
  %226 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %227 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %228 = call i32 @rds_ib_cong_recv(%struct.rds_connection* %226, %struct.rds_ib_incoming* %227)
  br label %247

229:                                              ; preds = %212
  %230 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %231 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %232 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %231, i32 0, i32 1
  %233 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %234 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %233, i32 0, i32 0
  %235 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %236 = getelementptr inbounds %struct.rds_ib_incoming, %struct.rds_ib_incoming* %235, i32 0, i32 0
  %237 = load i32, i32* @GFP_ATOMIC, align 4
  %238 = call i32 @rds_recv_incoming(%struct.rds_connection* %230, i32* %232, i32* %234, %struct.TYPE_4__* %236, i32 %237)
  %239 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %240 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %239, i32 0, i32 5
  %241 = load i64, i64* %240, align 8
  %242 = call i8* @be64_to_cpu(i64 %241)
  %243 = load %struct.rds_ib_ack_state*, %struct.rds_ib_ack_state** %8, align 8
  %244 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %243, i32 0, i32 3
  store i8* %242, i8** %244, align 8
  %245 = load %struct.rds_ib_ack_state*, %struct.rds_ib_ack_state** %8, align 8
  %246 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %245, i32 0, i32 1
  store i32 1, i32* %246, align 4
  br label %247

247:                                              ; preds = %229, %225
  %248 = load %struct.rds_header*, %struct.rds_header** %12, align 8
  %249 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @RDS_FLAG_ACK_REQUIRED, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %247
  %255 = load i32, i32* @s_recv_ack_required, align 4
  %256 = call i32 @rds_stats_inc(i32 %255)
  %257 = load %struct.rds_ib_ack_state*, %struct.rds_ib_ack_state** %8, align 8
  %258 = getelementptr inbounds %struct.rds_ib_ack_state, %struct.rds_ib_ack_state* %257, i32 0, i32 2
  store i32 1, i32* %258, align 8
  br label %259

259:                                              ; preds = %254, %247
  %260 = load %struct.rds_ib_incoming*, %struct.rds_ib_incoming** %10, align 8
  %261 = getelementptr inbounds %struct.rds_ib_incoming, %struct.rds_ib_incoming* %260, i32 0, i32 0
  %262 = call i32 @rds_inc_put(%struct.TYPE_4__* %261)
  br label %263

263:                                              ; preds = %27, %52, %91, %183, %259, %202
  ret void
}

declare dso_local i32 @rdsdebug(i8*, %struct.rds_ib_connection*, %struct.rds_ib_incoming*, %struct.rds_ib_recv_work*, i32) #1

declare dso_local i32 @rds_ib_conn_error(%struct.rds_connection*, i8*, ...) #1

declare dso_local i32 @rds_message_verify_checksum(%struct.rds_header*) #1

declare dso_local i32 @rds_stats_inc(i32) #1

declare dso_local i8* @be64_to_cpu(i64) #1

declare dso_local i32 @rds_ib_send_add_credits(%struct.rds_connection*, i64) #1

declare dso_local i32 @rds_ib_stats_inc(i32) #1

declare dso_local i32 @rds_ib_frag_free(%struct.rds_ib_connection*, %struct.TYPE_5__*) #1

declare dso_local i8* @local_clock(...) #1

declare dso_local i32 @memcpy(%struct.rds_header*, %struct.rds_header*, i32) #1

declare dso_local %struct.rds_ib_recv_work* @be32_to_cpu(i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @rds_ib_cong_recv(%struct.rds_connection*, %struct.rds_ib_incoming*) #1

declare dso_local i32 @rds_recv_incoming(%struct.rds_connection*, i32*, i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @rds_inc_put(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
