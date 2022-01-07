; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_abort_violation.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_abort_violation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.sctp_association = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%struct.sctp_packet = type { i8* }
%struct.sctp_chunk = type { %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.sctp_initack_chunk = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@SCTP_CID_ABORT = common dso_local global i32 0, align 4
@SCTP_CID_INIT_ACK = common dso_local global i64 0, align 8
@SCTP_CHUNK_FLAG_T = common dso_local global i32 0, align 4
@SCTP_CMD_UPDATE_INITTAG = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_MIB_OUTCTRLCHUNKS = common dso_local global i32 0, align 4
@SCTP_STATE_COOKIE_ECHOED = common dso_local global i64 0, align 8
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_INIT = common dso_local global i32 0, align 4
@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@SCTP_CMD_INIT_FAILED = common dso_local global i32 0, align 4
@SCTP_ERROR_PROTO_VIOLATION = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_FAILED = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_CMD_SEND_PKT = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_ABORT = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i8*, %struct.sctp_cmd_seq*, i32*, i64)* @sctp_sf_abort_violation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_abort_violation(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i8* %3, %struct.sctp_cmd_seq* %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.sctp_packet*, align 8
  %17 = alloca %struct.sctp_chunk*, align 8
  %18 = alloca %struct.sctp_chunk*, align 8
  %19 = alloca %struct.sctp_initack_chunk*, align 8
  %20 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.sctp_cmd_seq* %4, %struct.sctp_cmd_seq** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  store %struct.sctp_packet* null, %struct.sctp_packet** %16, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = bitcast i8* %21 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %22, %struct.sctp_chunk** %17, align 8
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %18, align 8
  %23 = load i32, i32* @SCTP_CID_ABORT, align 4
  %24 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %25 = call i64 @sctp_auth_recv_cid(i32 %23, %struct.sctp_association* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %7
  br label %174

28:                                               ; preds = %7
  %29 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %30 = load %struct.sctp_chunk*, %struct.sctp_chunk** %17, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = load i64, i64* %15, align 8
  %33 = call %struct.sctp_chunk* @sctp_make_abort_violation(%struct.sctp_association* %29, %struct.sctp_chunk* %30, i32* %31, i64 %32)
  store %struct.sctp_chunk* %33, %struct.sctp_chunk** %18, align 8
  %34 = load %struct.sctp_chunk*, %struct.sctp_chunk** %18, align 8
  %35 = icmp ne %struct.sctp_chunk* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %186

37:                                               ; preds = %28
  %38 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %39 = icmp ne %struct.sctp_association* %38, null
  br i1 %39, label %40, label %129

40:                                               ; preds = %37
  %41 = load %struct.sctp_chunk*, %struct.sctp_chunk** %17, align 8
  %42 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %41, i32 0, i32 2
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SCTP_CID_INIT_ACK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %84

48:                                               ; preds = %40
  %49 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %50 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %84, label %55

55:                                               ; preds = %48
  %56 = load %struct.sctp_chunk*, %struct.sctp_chunk** %17, align 8
  %57 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %56, i32 0, i32 2
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = bitcast %struct.TYPE_10__* %58 to %struct.sctp_initack_chunk*
  store %struct.sctp_initack_chunk* %59, %struct.sctp_initack_chunk** %19, align 8
  %60 = load %struct.sctp_chunk*, %struct.sctp_chunk** %17, align 8
  %61 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %60, i32 4)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* @SCTP_CHUNK_FLAG_T, align 4
  %65 = load %struct.sctp_chunk*, %struct.sctp_chunk** %18, align 8
  %66 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %65, i32 0, i32 2
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %64
  store i32 %70, i32* %68, align 8
  br label %83

71:                                               ; preds = %55
  %72 = load %struct.sctp_initack_chunk*, %struct.sctp_initack_chunk** %19, align 8
  %73 = getelementptr inbounds %struct.sctp_initack_chunk, %struct.sctp_initack_chunk* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @ntohl(i32 %75)
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %20, align 4
  %78 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %79 = load i32, i32* @SCTP_CMD_UPDATE_INITTAG, align 4
  %80 = load i32, i32* %20, align 4
  %81 = call i32 @SCTP_U32(i32 %80)
  %82 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %78, i32 %79, i32 %81)
  br label %83

83:                                               ; preds = %71, %63
  br label %84

84:                                               ; preds = %83, %48, %40
  %85 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %86 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %87 = load %struct.sctp_chunk*, %struct.sctp_chunk** %18, align 8
  %88 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %87)
  %89 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %85, i32 %86, i32 %88)
  %90 = load %struct.net*, %struct.net** %9, align 8
  %91 = load i32, i32* @SCTP_MIB_OUTCTRLCHUNKS, align 4
  %92 = call i32 @SCTP_INC_STATS(%struct.net* %90, i32 %91)
  %93 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %94 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SCTP_STATE_COOKIE_ECHOED, align 8
  %97 = icmp sle i64 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %84
  %99 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %100 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %101 = load i32, i32* @SCTP_EVENT_TIMEOUT_T1_INIT, align 4
  %102 = call i32 @SCTP_TO(i32 %101)
  %103 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %99, i32 %100, i32 %102)
  %104 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %105 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %106 = load i32, i32* @ECONNREFUSED, align 4
  %107 = call i32 @SCTP_ERROR(i32 %106)
  %108 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %104, i32 %105, i32 %107)
  %109 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %110 = load i32, i32* @SCTP_CMD_INIT_FAILED, align 4
  %111 = load i32, i32* @SCTP_ERROR_PROTO_VIOLATION, align 4
  %112 = call i32 @SCTP_PERR(i32 %111)
  %113 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %109, i32 %110, i32 %112)
  br label %128

114:                                              ; preds = %84
  %115 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %116 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %117 = load i32, i32* @ECONNABORTED, align 4
  %118 = call i32 @SCTP_ERROR(i32 %117)
  %119 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %115, i32 %116, i32 %118)
  %120 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %121 = load i32, i32* @SCTP_CMD_ASSOC_FAILED, align 4
  %122 = load i32, i32* @SCTP_ERROR_PROTO_VIOLATION, align 4
  %123 = call i32 @SCTP_PERR(i32 %122)
  %124 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %120, i32 %121, i32 %123)
  %125 = load %struct.net*, %struct.net** %9, align 8
  %126 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %127 = call i32 @SCTP_DEC_STATS(%struct.net* %125, i32 %126)
  br label %128

128:                                              ; preds = %114, %98
  br label %170

129:                                              ; preds = %37
  %130 = load %struct.net*, %struct.net** %9, align 8
  %131 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %132 = load %struct.sctp_chunk*, %struct.sctp_chunk** %17, align 8
  %133 = call %struct.sctp_packet* @sctp_ootb_pkt_new(%struct.net* %130, %struct.sctp_association* %131, %struct.sctp_chunk* %132)
  store %struct.sctp_packet* %133, %struct.sctp_packet** %16, align 8
  %134 = load %struct.sctp_packet*, %struct.sctp_packet** %16, align 8
  %135 = icmp ne %struct.sctp_packet* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %129
  br label %183

137:                                              ; preds = %129
  %138 = load %struct.sctp_chunk*, %struct.sctp_chunk** %18, align 8
  %139 = call i64 @sctp_test_T_bit(%struct.sctp_chunk* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %137
  %142 = load %struct.sctp_chunk*, %struct.sctp_chunk** %17, align 8
  %143 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %142, i32 0, i32 1
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @ntohl(i32 %146)
  %148 = load %struct.sctp_packet*, %struct.sctp_packet** %16, align 8
  %149 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  br label %150

150:                                              ; preds = %141, %137
  %151 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %152 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.sctp_chunk*, %struct.sctp_chunk** %18, align 8
  %156 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %155, i32 0, i32 0
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  store i32 %154, i32* %158, align 4
  %159 = load %struct.sctp_packet*, %struct.sctp_packet** %16, align 8
  %160 = load %struct.sctp_chunk*, %struct.sctp_chunk** %18, align 8
  %161 = call i32 @sctp_packet_append_chunk(%struct.sctp_packet* %159, %struct.sctp_chunk* %160)
  %162 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %163 = load i32, i32* @SCTP_CMD_SEND_PKT, align 4
  %164 = load %struct.sctp_packet*, %struct.sctp_packet** %16, align 8
  %165 = call i32 @SCTP_PACKET(%struct.sctp_packet* %164)
  %166 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %162, i32 %163, i32 %165)
  %167 = load %struct.net*, %struct.net** %9, align 8
  %168 = load i32, i32* @SCTP_MIB_OUTCTRLCHUNKS, align 4
  %169 = call i32 @SCTP_INC_STATS(%struct.net* %167, i32 %168)
  br label %170

170:                                              ; preds = %150, %128
  %171 = load %struct.net*, %struct.net** %9, align 8
  %172 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %173 = call i32 @SCTP_INC_STATS(%struct.net* %171, i32 %172)
  br label %174

174:                                              ; preds = %170, %27
  %175 = load %struct.net*, %struct.net** %9, align 8
  %176 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %177 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %178 = call i32 @SCTP_ST_CHUNK(i32 0)
  %179 = load i8*, i8** %12, align 8
  %180 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %181 = call i32 @sctp_sf_pdiscard(%struct.net* %175, %struct.sctp_endpoint* %176, %struct.sctp_association* %177, i32 %178, i8* %179, %struct.sctp_cmd_seq* %180)
  %182 = load i32, i32* @SCTP_DISPOSITION_ABORT, align 4
  store i32 %182, i32* %8, align 4
  br label %188

183:                                              ; preds = %136
  %184 = load %struct.sctp_chunk*, %struct.sctp_chunk** %18, align 8
  %185 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %184)
  br label %186

186:                                              ; preds = %183, %36
  %187 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %187, i32* %8, align 4
  br label %188

188:                                              ; preds = %186, %174
  %189 = load i32, i32* %8, align 4
  ret i32 %189
}

declare dso_local i64 @sctp_auth_recv_cid(i32, %struct.sctp_association*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_abort_violation(%struct.sctp_association*, %struct.sctp_chunk*, i32*, i64) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_U32(i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

declare dso_local i32 @SCTP_DEC_STATS(%struct.net*, i32) #1

declare dso_local %struct.sctp_packet* @sctp_ootb_pkt_new(%struct.net*, %struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local i64 @sctp_test_T_bit(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_packet_append_chunk(%struct.sctp_packet*, %struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_PACKET(%struct.sctp_packet*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @SCTP_ST_CHUNK(i32) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
