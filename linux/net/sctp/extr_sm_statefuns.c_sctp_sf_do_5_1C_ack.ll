; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_5_1C_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_5_1C_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_init_chunk = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_6__, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.sctp_inithdr* }
%struct.sctp_inithdr = type { i32 }
%struct.sctp_packet = type { i32 }

@SCTP_ERROR_NO_RESOURCE = common dso_local global i32 0, align 4
@SCTP_CMD_SEND_PKT = common dso_local global i32 0, align 4
@SCTP_MIB_OUTCTRLCHUNKS = common dso_local global i32 0, align 4
@SCTP_ERROR_INV_PARAM = common dso_local global i32 0, align 4
@SCTP_CID_ABORT = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@SCTP_CMD_PEER_INIT = common dso_local global i32 0, align 4
@SCTP_CMD_INIT_COUNTER_RESET = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_INIT = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_START = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_COOKIE = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_COOKIE_ECHOED = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_SHKEY = common dso_local global i32 0, align 4
@SCTP_CMD_GEN_COOKIE_ECHO = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_5_1C_ack(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca %struct.sctp_init_chunk*, align 8
  %15 = alloca %struct.sctp_chunk*, align 8
  %16 = alloca %struct.sctp_chunk*, align 8
  %17 = alloca %struct.sctp_packet*, align 8
  %18 = alloca i32, align 4
  %19 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %19, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = bitcast i8* %20 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %21, %struct.sctp_chunk** %15, align 8
  %22 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %23 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %24 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %22, %struct.sctp_association* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %6
  %27 = load %struct.net*, %struct.net** %9, align 8
  %28 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %29 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %32 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sctp_sf_pdiscard(%struct.net* %27, %struct.sctp_endpoint* %28, %struct.sctp_association* %29, i32 %33, i8* %30, %struct.sctp_cmd_seq* %31)
  store i32 %34, i32* %7, align 4
  br label %197

35:                                               ; preds = %6
  %36 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %37 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = load %struct.net*, %struct.net** %9, align 8
  %42 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %43 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %46 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sctp_sf_violation_chunk(%struct.net* %41, %struct.sctp_endpoint* %42, %struct.sctp_association* %43, i32 %47, i8* %44, %struct.sctp_cmd_seq* %45)
  store i32 %48, i32* %7, align 4
  br label %197

49:                                               ; preds = %35
  %50 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %51 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %50, i32 4)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = load %struct.net*, %struct.net** %9, align 8
  %55 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %56 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %59 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @sctp_sf_violation_chunklen(%struct.net* %54, %struct.sctp_endpoint* %55, %struct.sctp_association* %56, i32 %60, i8* %57, %struct.sctp_cmd_seq* %58)
  store i32 %61, i32* %7, align 4
  br label %197

62:                                               ; preds = %49
  %63 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %64 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.sctp_inithdr*
  %69 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %70 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store %struct.sctp_inithdr* %68, %struct.sctp_inithdr** %71, align 8
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %16, align 8
  %72 = load %struct.net*, %struct.net** %9, align 8
  %73 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %74 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %75 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %76 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %81 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = bitcast %struct.TYPE_7__* %82 to %struct.sctp_init_chunk*
  %84 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %85 = call i32 @sctp_verify_init(%struct.net* %72, %struct.sctp_endpoint* %73, %struct.sctp_association* %74, i32 %79, %struct.sctp_init_chunk* %83, %struct.sctp_chunk* %84, %struct.sctp_chunk** %16)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %151, label %87

87:                                               ; preds = %62
  %88 = load i32, i32* @SCTP_ERROR_NO_RESOURCE, align 4
  store i32 %88, i32* %18, align 4
  %89 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %90 = icmp ne %struct.sctp_chunk* %89, null
  br i1 %90, label %91, label %124

91:                                               ; preds = %87
  %92 = load %struct.net*, %struct.net** %9, align 8
  %93 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %94 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %97 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = bitcast %struct.TYPE_7__* %98 to i32*
  %100 = getelementptr inbounds i32, i32* %99, i64 4
  %101 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %102 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @ntohs(i32 %105)
  %107 = sub i64 %106, 4
  %108 = call %struct.sctp_packet* @sctp_abort_pkt_new(%struct.net* %92, %struct.sctp_endpoint* %93, %struct.sctp_association* %94, i8* %95, i32* %100, i64 %107)
  store %struct.sctp_packet* %108, %struct.sctp_packet** %17, align 8
  %109 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %110 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %109)
  %111 = load %struct.sctp_packet*, %struct.sctp_packet** %17, align 8
  %112 = icmp ne %struct.sctp_packet* %111, null
  br i1 %112, label %113, label %123

113:                                              ; preds = %91
  %114 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %115 = load i32, i32* @SCTP_CMD_SEND_PKT, align 4
  %116 = load %struct.sctp_packet*, %struct.sctp_packet** %17, align 8
  %117 = call i32 @SCTP_PACKET(%struct.sctp_packet* %116)
  %118 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %114, i32 %115, i32 %117)
  %119 = load %struct.net*, %struct.net** %9, align 8
  %120 = load i32, i32* @SCTP_MIB_OUTCTRLCHUNKS, align 4
  %121 = call i32 @SCTP_INC_STATS(%struct.net* %119, i32 %120)
  %122 = load i32, i32* @SCTP_ERROR_INV_PARAM, align 4
  store i32 %122, i32* %18, align 4
  br label %123

123:                                              ; preds = %113, %91
  br label %124

124:                                              ; preds = %123, %87
  %125 = load i32, i32* @SCTP_CID_ABORT, align 4
  %126 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %127 = call i64 @sctp_auth_recv_cid(i32 %125, %struct.sctp_association* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %124
  %130 = load %struct.net*, %struct.net** %9, align 8
  %131 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %132 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %135 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @sctp_sf_pdiscard(%struct.net* %130, %struct.sctp_endpoint* %131, %struct.sctp_association* %132, i32 %136, i8* %133, %struct.sctp_cmd_seq* %134)
  store i32 %137, i32* %7, align 4
  br label %197

138:                                              ; preds = %124
  %139 = load %struct.net*, %struct.net** %9, align 8
  %140 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %141 = call i32 @SCTP_INC_STATS(%struct.net* %139, i32 %140)
  %142 = load %struct.net*, %struct.net** %9, align 8
  %143 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* @ECONNREFUSED, align 4
  %146 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %147 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %148 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @sctp_stop_t1_and_abort(%struct.net* %142, %struct.sctp_cmd_seq* %143, i32 %144, i32 %145, %struct.sctp_association* %146, i32 %149)
  store i32 %150, i32* %7, align 4
  br label %197

151:                                              ; preds = %62
  %152 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %153 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %152, i32 0, i32 1
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = call i32 @skb_pull(%struct.TYPE_8__* %154, i32 4)
  %156 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %157 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 8
  %159 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %160 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %159, i32 0, i32 0
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = bitcast %struct.TYPE_7__* %161 to %struct.sctp_init_chunk*
  store %struct.sctp_init_chunk* %162, %struct.sctp_init_chunk** %14, align 8
  %163 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %164 = load i32, i32* @SCTP_CMD_PEER_INIT, align 4
  %165 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %14, align 8
  %166 = call i32 @SCTP_PEER_INIT(%struct.sctp_init_chunk* %165)
  %167 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %163, i32 %164, i32 %166)
  %168 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %169 = load i32, i32* @SCTP_CMD_INIT_COUNTER_RESET, align 4
  %170 = call i32 (...) @SCTP_NULL()
  %171 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %168, i32 %169, i32 %170)
  %172 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %173 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %174 = load i32, i32* @SCTP_EVENT_TIMEOUT_T1_INIT, align 4
  %175 = call i32 @SCTP_TO(i32 %174)
  %176 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %172, i32 %173, i32 %175)
  %177 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %178 = load i32, i32* @SCTP_CMD_TIMER_START, align 4
  %179 = load i32, i32* @SCTP_EVENT_TIMEOUT_T1_COOKIE, align 4
  %180 = call i32 @SCTP_TO(i32 %179)
  %181 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %177, i32 %178, i32 %180)
  %182 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %183 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %184 = load i32, i32* @SCTP_STATE_COOKIE_ECHOED, align 4
  %185 = call i32 @SCTP_STATE(i32 %184)
  %186 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %182, i32 %183, i32 %185)
  %187 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %188 = load i32, i32* @SCTP_CMD_ASSOC_SHKEY, align 4
  %189 = call i32 (...) @SCTP_NULL()
  %190 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %187, i32 %188, i32 %189)
  %191 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %192 = load i32, i32* @SCTP_CMD_GEN_COOKIE_ECHO, align 4
  %193 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %194 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %193)
  %195 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %191, i32 %192, i32 %194)
  %196 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %196, i32* %7, align 4
  br label %197

197:                                              ; preds = %151, %138, %129, %53, %40, %26
  %198 = load i32, i32* %7, align 4
  ret i32 %198
}

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_sf_violation_chunk(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_verify_init(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, %struct.sctp_init_chunk*, %struct.sctp_chunk*, %struct.sctp_chunk**) #1

declare dso_local %struct.sctp_packet* @sctp_abort_pkt_new(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i8*, i32*, i64) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_PACKET(%struct.sctp_packet*) #1

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local i64 @sctp_auth_recv_cid(i32, %struct.sctp_association*) #1

declare dso_local i32 @sctp_stop_t1_and_abort(%struct.net*, %struct.sctp_cmd_seq*, i32, i32, %struct.sctp_association*, i32) #1

declare dso_local i32 @skb_pull(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @SCTP_PEER_INIT(%struct.sctp_init_chunk*) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
