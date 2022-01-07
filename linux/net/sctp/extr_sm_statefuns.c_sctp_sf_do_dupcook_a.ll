; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_dupcook_a.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_dupcook_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.sctp_init_chunk* }
%struct.sctp_init_chunk = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%struct.sctp_association = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.sctp_ulpevent = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DISCARD = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SHUTDOWN_ACK_SENT = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@SCTP_ERROR_COOKIE_IN_SHUTDOWN = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_T3_RTX_TIMERS_STOP = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_SACK = common dso_local global i32 0, align 4
@SCTP_CMD_PURGE_OUTQUEUE = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T4_RTO = common dso_local global i32 0, align 4
@SCTP_CMD_PURGE_ASCONF_QUEUE = common dso_local global i32 0, align 4
@SCTP_RESTART = common dso_local global i32 0, align 4
@SCTP_CMD_UPDATE_ASSOC = common dso_local global i32 0, align 4
@SCTP_CMD_EVENT_ULP = common dso_local global i32 0, align 4
@SHUTDOWN_PENDING = common dso_local global i32 0, align 4
@CLOSING = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_ESTABLISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, %struct.sctp_chunk*, %struct.sctp_cmd_seq*, %struct.sctp_association*)* @sctp_sf_do_dupcook_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_do_dupcook_a(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, %struct.sctp_chunk* %3, %struct.sctp_cmd_seq* %4, %struct.sctp_association* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sctp_endpoint*, align 8
  %10 = alloca %struct.sctp_association*, align 8
  %11 = alloca %struct.sctp_chunk*, align 8
  %12 = alloca %struct.sctp_cmd_seq*, align 8
  %13 = alloca %struct.sctp_association*, align 8
  %14 = alloca %struct.sctp_init_chunk*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sctp_ulpevent*, align 8
  %17 = alloca %struct.sctp_chunk*, align 8
  %18 = alloca %struct.sctp_chunk*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %9, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %10, align 8
  store %struct.sctp_chunk* %3, %struct.sctp_chunk** %11, align 8
  store %struct.sctp_cmd_seq* %4, %struct.sctp_cmd_seq** %12, align 8
  store %struct.sctp_association* %5, %struct.sctp_association** %13, align 8
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %20 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %24, align 8
  %26 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %25, i64 0
  store %struct.sctp_init_chunk* %26, %struct.sctp_init_chunk** %14, align 8
  %27 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %28 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %29 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %30 = call i32 @sctp_source(%struct.sctp_chunk* %29)
  %31 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %14, align 8
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call i32 @sctp_process_init(%struct.sctp_association* %27, %struct.sctp_chunk* %28, i32 %30, %struct.sctp_init_chunk* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %6
  br label %200

36:                                               ; preds = %6
  %37 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call i64 @sctp_auth_asoc_init_active_key(%struct.sctp_association* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %200

42:                                               ; preds = %36
  %43 = load %struct.net*, %struct.net** %8, align 8
  %44 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %45 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %46 = call i32 @sctp_auth_chunk_verify(%struct.net* %43, %struct.sctp_chunk* %44, %struct.sctp_association* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @SCTP_DISPOSITION_DISCARD, align 4
  store i32 %49, i32* %7, align 4
  br label %202

50:                                               ; preds = %42
  %51 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %52 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %53 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %54 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %55 = call i32 @sctp_sf_check_restart_addrs(%struct.sctp_association* %51, %struct.sctp_association* %52, %struct.sctp_chunk* %53, %struct.sctp_cmd_seq* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %58, i32* %7, align 4
  br label %202

59:                                               ; preds = %50
  %60 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %61 = load i32, i32* @SHUTDOWN_ACK_SENT, align 4
  %62 = call i64 @sctp_state(%struct.sctp_association* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %96

64:                                               ; preds = %59
  %65 = load %struct.net*, %struct.net** %8, align 8
  %66 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %9, align 8
  %67 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %68 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %69 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @SCTP_ST_CHUNK(i32 %72)
  %74 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %75 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %76 = call i32 @sctp_sf_do_9_2_reshutack(%struct.net* %65, %struct.sctp_endpoint* %66, %struct.sctp_association* %67, i32 %73, %struct.sctp_chunk* %74, %struct.sctp_cmd_seq* %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %64
  br label %200

81:                                               ; preds = %64
  %82 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %83 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %84 = load i32, i32* @SCTP_ERROR_COOKIE_IN_SHUTDOWN, align 4
  %85 = call %struct.sctp_chunk* @sctp_make_op_error(%struct.sctp_association* %82, %struct.sctp_chunk* %83, i32 %84, i32* null, i32 0, i32 0)
  store %struct.sctp_chunk* %85, %struct.sctp_chunk** %18, align 8
  %86 = load %struct.sctp_chunk*, %struct.sctp_chunk** %18, align 8
  %87 = icmp ne %struct.sctp_chunk* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %90 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %91 = load %struct.sctp_chunk*, %struct.sctp_chunk** %18, align 8
  %92 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %91)
  %93 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %89, i32 %90, i32 %92)
  br label %94

94:                                               ; preds = %88, %81
  %95 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %95, i32* %7, align 4
  br label %202

96:                                               ; preds = %59
  %97 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %98 = load i32, i32* @SCTP_CMD_T3_RTX_TIMERS_STOP, align 4
  %99 = call i32 (...) @SCTP_NULL()
  %100 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %97, i32 %98, i32 %99)
  %101 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %102 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %103 = load i32, i32* @SCTP_EVENT_TIMEOUT_SACK, align 4
  %104 = call i32 @SCTP_TO(i32 %103)
  %105 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %101, i32 %102, i32 %104)
  %106 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %107 = load i32, i32* @SCTP_CMD_PURGE_OUTQUEUE, align 4
  %108 = call i32 (...) @SCTP_NULL()
  %109 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %106, i32 %107, i32 %108)
  %110 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %111 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %112 = load i32, i32* @SCTP_EVENT_TIMEOUT_T4_RTO, align 4
  %113 = call i32 @SCTP_TO(i32 %112)
  %114 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %110, i32 %111, i32 %113)
  %115 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %116 = load i32, i32* @SCTP_CMD_PURGE_ASCONF_QUEUE, align 4
  %117 = call i32 (...) @SCTP_NULL()
  %118 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %115, i32 %116, i32 %117)
  %119 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %120 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %121 = call %struct.sctp_chunk* @sctp_make_cookie_ack(%struct.sctp_association* %119, %struct.sctp_chunk* %120)
  store %struct.sctp_chunk* %121, %struct.sctp_chunk** %17, align 8
  %122 = load %struct.sctp_chunk*, %struct.sctp_chunk** %17, align 8
  %123 = icmp ne %struct.sctp_chunk* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %96
  br label %200

125:                                              ; preds = %96
  %126 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %127 = load i32, i32* @SCTP_RESTART, align 4
  %128 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %129 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %133 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @GFP_ATOMIC, align 4
  %137 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association* %126, i32 0, i32 %127, i32 0, i32 %131, i32 %135, i32* null, i32 %136)
  store %struct.sctp_ulpevent* %137, %struct.sctp_ulpevent** %16, align 8
  %138 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %16, align 8
  %139 = icmp ne %struct.sctp_ulpevent* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %125
  br label %197

141:                                              ; preds = %125
  %142 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %143 = load i32, i32* @SCTP_CMD_UPDATE_ASSOC, align 4
  %144 = load %struct.sctp_association*, %struct.sctp_association** %13, align 8
  %145 = call i32 @SCTP_ASOC(%struct.sctp_association* %144)
  %146 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %142, i32 %143, i32 %145)
  %147 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %148 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %149 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %16, align 8
  %150 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %149)
  %151 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %147, i32 %148, i32 %150)
  %152 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %153 = load i32, i32* @SHUTDOWN_PENDING, align 4
  %154 = call i64 @sctp_state(%struct.sctp_association* %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %184

156:                                              ; preds = %141
  %157 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %158 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @CLOSING, align 4
  %162 = call i64 @sctp_sstate(i32 %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %172, label %164

164:                                              ; preds = %156
  %165 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %166 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @SOCK_DEAD, align 4
  %170 = call i64 @sock_flag(i32 %168, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %164, %156
  %173 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %174 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %175 = load %struct.sctp_chunk*, %struct.sctp_chunk** %17, align 8
  %176 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %175)
  %177 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %173, i32 %174, i32 %176)
  %178 = load %struct.net*, %struct.net** %8, align 8
  %179 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %9, align 8
  %180 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %181 = call i32 @SCTP_ST_CHUNK(i32 0)
  %182 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %183 = call i32 @sctp_sf_do_9_2_start_shutdown(%struct.net* %178, %struct.sctp_endpoint* %179, %struct.sctp_association* %180, i32 %181, i32* null, %struct.sctp_cmd_seq* %182)
  store i32 %183, i32* %7, align 4
  br label %202

184:                                              ; preds = %164, %141
  %185 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %186 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %187 = load i32, i32* @SCTP_STATE_ESTABLISHED, align 4
  %188 = call i32 @SCTP_STATE(i32 %187)
  %189 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %185, i32 %186, i32 %188)
  %190 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %191 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %192 = load %struct.sctp_chunk*, %struct.sctp_chunk** %17, align 8
  %193 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %192)
  %194 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %190, i32 %191, i32 %193)
  br label %195

195:                                              ; preds = %184
  %196 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %196, i32* %7, align 4
  br label %202

197:                                              ; preds = %140
  %198 = load %struct.sctp_chunk*, %struct.sctp_chunk** %17, align 8
  %199 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %198)
  br label %200

200:                                              ; preds = %197, %124, %80, %41, %35
  %201 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %201, i32* %7, align 4
  br label %202

202:                                              ; preds = %200, %195, %172, %94, %57, %48
  %203 = load i32, i32* %7, align 4
  ret i32 %203
}

declare dso_local i32 @sctp_process_init(%struct.sctp_association*, %struct.sctp_chunk*, i32, %struct.sctp_init_chunk*, i32) #1

declare dso_local i32 @sctp_source(%struct.sctp_chunk*) #1

declare dso_local i64 @sctp_auth_asoc_init_active_key(%struct.sctp_association*, i32) #1

declare dso_local i32 @sctp_auth_chunk_verify(%struct.net*, %struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_check_restart_addrs(%struct.sctp_association*, %struct.sctp_association*, %struct.sctp_chunk*, %struct.sctp_cmd_seq*) #1

declare dso_local i64 @sctp_state(%struct.sctp_association*, i32) #1

declare dso_local i32 @sctp_sf_do_9_2_reshutack(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, %struct.sctp_chunk*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @SCTP_ST_CHUNK(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_op_error(%struct.sctp_association*, %struct.sctp_chunk*, i32, i32*, i32, i32) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_cookie_ack(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @SCTP_ASOC(%struct.sctp_association*) #1

declare dso_local i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent*) #1

declare dso_local i64 @sctp_sstate(i32, i32) #1

declare dso_local i64 @sock_flag(i32, i32) #1

declare dso_local i32 @sctp_sf_do_9_2_start_shutdown(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i32*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
