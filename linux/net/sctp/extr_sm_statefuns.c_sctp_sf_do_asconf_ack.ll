; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_asconf_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_asconf_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i64, %struct.sctp_chunk*, %struct.TYPE_5__ }
%struct.sctp_chunk = type { %struct.TYPE_8__, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_paramhdr = type { i32 }
%struct.sctp_addiphdr = type { i32 }

@SCTP_CMD_REPORT_BAD_TAG = common dso_local global i32 0, align 4
@SCTP_ERROR_ASCONF_ACK = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T4_RTO = common dso_local global i32 0, align 4
@SCTP_CMD_DISCARD_PACKET = common dso_local global i32 0, align 4
@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_FAILED = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_ABORT = common dso_local global i32 0, align 4
@SCTP_ERROR_RSRC_LOW = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DISCARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_asconf_ack(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  %15 = alloca %struct.sctp_paramhdr*, align 8
  %16 = alloca %struct.sctp_chunk*, align 8
  %17 = alloca %struct.sctp_addiphdr*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.sctp_chunk*, align 8
  %21 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %21, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %22 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %23 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %22, i32 0, i32 1
  %24 = load %struct.sctp_chunk*, %struct.sctp_chunk** %23, align 8
  store %struct.sctp_chunk* %24, %struct.sctp_chunk** %14, align 8
  store %struct.sctp_paramhdr* null, %struct.sctp_paramhdr** %15, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = bitcast i8* %25 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %26, %struct.sctp_chunk** %16, align 8
  %27 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %28 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %29 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %27, %struct.sctp_association* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %6
  %32 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %33 = load i32, i32* @SCTP_CMD_REPORT_BAD_TAG, align 4
  %34 = call i32 (...) @SCTP_NULL()
  %35 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %32, i32 %33, i32 %34)
  %36 = load %struct.net*, %struct.net** %9, align 8
  %37 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %38 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %41 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sctp_sf_pdiscard(%struct.net* %36, %struct.sctp_endpoint* %37, %struct.sctp_association* %38, i32 %42, i8* %39, %struct.sctp_cmd_seq* %40)
  store i32 %43, i32* %7, align 4
  br label %246

44:                                               ; preds = %6
  %45 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %46 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.net*, %struct.net** %9, align 8
  %52 = getelementptr inbounds %struct.net, %struct.net* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %50
  %57 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %58 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %56, %44
  %62 = load %struct.net*, %struct.net** %9, align 8
  %63 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %64 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %67 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sctp_sf_discard_chunk(%struct.net* %62, %struct.sctp_endpoint* %63, %struct.sctp_association* %64, i32 %68, i8* %65, %struct.sctp_cmd_seq* %66)
  store i32 %69, i32* %7, align 4
  br label %246

70:                                               ; preds = %56, %50
  %71 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %72 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %71, i32 4)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %70
  %75 = load %struct.net*, %struct.net** %9, align 8
  %76 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %77 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %80 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @sctp_sf_violation_chunklen(%struct.net* %75, %struct.sctp_endpoint* %76, %struct.sctp_association* %77, i32 %81, i8* %78, %struct.sctp_cmd_seq* %79)
  store i32 %82, i32* %7, align 4
  br label %246

83:                                               ; preds = %70
  %84 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %85 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to %struct.sctp_addiphdr*
  store %struct.sctp_addiphdr* %89, %struct.sctp_addiphdr** %17, align 8
  %90 = load %struct.sctp_addiphdr*, %struct.sctp_addiphdr** %17, align 8
  %91 = getelementptr inbounds %struct.sctp_addiphdr, %struct.sctp_addiphdr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @ntohl(i32 %92)
  store i64 %93, i64* %19, align 8
  %94 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %95 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %96 = call i32 @sctp_verify_asconf(%struct.sctp_association* %94, %struct.sctp_chunk* %95, i32 0, %struct.sctp_paramhdr** %15)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %83
  %99 = load %struct.net*, %struct.net** %9, align 8
  %100 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %101 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %15, align 8
  %104 = bitcast %struct.sctp_paramhdr* %103 to i8*
  %105 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %106 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @sctp_sf_violation_paramlen(%struct.net* %99, %struct.sctp_endpoint* %100, %struct.sctp_association* %101, i32 %107, i8* %102, i8* %104, %struct.sctp_cmd_seq* %105)
  store i32 %108, i32* %7, align 4
  br label %246

109:                                              ; preds = %83
  %110 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %111 = icmp ne %struct.sctp_chunk* %110, null
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %114 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to %struct.sctp_addiphdr*
  store %struct.sctp_addiphdr* %117, %struct.sctp_addiphdr** %17, align 8
  %118 = load %struct.sctp_addiphdr*, %struct.sctp_addiphdr** %17, align 8
  %119 = getelementptr inbounds %struct.sctp_addiphdr, %struct.sctp_addiphdr* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @ntohl(i32 %120)
  store i64 %121, i64* %18, align 8
  br label %127

122:                                              ; preds = %109
  %123 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %124 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = sub nsw i64 %125, 1
  store i64 %126, i64* %18, align 8
  br label %127

127:                                              ; preds = %122, %112
  %128 = load i64, i64* %19, align 8
  %129 = load i64, i64* %18, align 8
  %130 = add nsw i64 %129, 1
  %131 = call i64 @ADDIP_SERIAL_gte(i64 %128, i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %180

133:                                              ; preds = %127
  %134 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %135 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %134, i32 0, i32 1
  %136 = load %struct.sctp_chunk*, %struct.sctp_chunk** %135, align 8
  %137 = icmp ne %struct.sctp_chunk* %136, null
  br i1 %137, label %180, label %138

138:                                              ; preds = %133
  %139 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %140 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %141 = call %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association* %139, %struct.sctp_chunk* %140, i32 4)
  store %struct.sctp_chunk* %141, %struct.sctp_chunk** %20, align 8
  %142 = load %struct.sctp_chunk*, %struct.sctp_chunk** %20, align 8
  %143 = icmp ne %struct.sctp_chunk* %142, null
  br i1 %143, label %144, label %153

144:                                              ; preds = %138
  %145 = load %struct.sctp_chunk*, %struct.sctp_chunk** %20, align 8
  %146 = load i32, i32* @SCTP_ERROR_ASCONF_ACK, align 4
  %147 = call i32 @sctp_init_cause(%struct.sctp_chunk* %145, i32 %146, i32 0)
  %148 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %149 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %150 = load %struct.sctp_chunk*, %struct.sctp_chunk** %20, align 8
  %151 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %150)
  %152 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %148, i32 %149, i32 %151)
  br label %153

153:                                              ; preds = %144, %138
  %154 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %155 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %156 = load i32, i32* @SCTP_EVENT_TIMEOUT_T4_RTO, align 4
  %157 = call i32 @SCTP_TO(i32 %156)
  %158 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %154, i32 %155, i32 %157)
  %159 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %160 = load i32, i32* @SCTP_CMD_DISCARD_PACKET, align 4
  %161 = call i32 (...) @SCTP_NULL()
  %162 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %159, i32 %160, i32 %161)
  %163 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %164 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %165 = load i32, i32* @ECONNABORTED, align 4
  %166 = call i32 @SCTP_ERROR(i32 %165)
  %167 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %163, i32 %164, i32 %166)
  %168 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %169 = load i32, i32* @SCTP_CMD_ASSOC_FAILED, align 4
  %170 = load i32, i32* @SCTP_ERROR_ASCONF_ACK, align 4
  %171 = call i32 @SCTP_PERR(i32 %170)
  %172 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %168, i32 %169, i32 %171)
  %173 = load %struct.net*, %struct.net** %9, align 8
  %174 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %175 = call i32 @SCTP_INC_STATS(%struct.net* %173, i32 %174)
  %176 = load %struct.net*, %struct.net** %9, align 8
  %177 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %178 = call i32 @SCTP_DEC_STATS(%struct.net* %176, i32 %177)
  %179 = load i32, i32* @SCTP_DISPOSITION_ABORT, align 4
  store i32 %179, i32* %7, align 4
  br label %246

180:                                              ; preds = %133, %127
  %181 = load i64, i64* %19, align 8
  %182 = load i64, i64* %18, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %244

184:                                              ; preds = %180
  %185 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %186 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %185, i32 0, i32 1
  %187 = load %struct.sctp_chunk*, %struct.sctp_chunk** %186, align 8
  %188 = icmp ne %struct.sctp_chunk* %187, null
  br i1 %188, label %189, label %244

189:                                              ; preds = %184
  %190 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %191 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %192 = load i32, i32* @SCTP_EVENT_TIMEOUT_T4_RTO, align 4
  %193 = call i32 @SCTP_TO(i32 %192)
  %194 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %190, i32 %191, i32 %193)
  %195 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %196 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %197 = call i32 @sctp_process_asconf_ack(%struct.sctp_association* %195, %struct.sctp_chunk* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %189
  %200 = load %struct.net*, %struct.net** %9, align 8
  %201 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %202 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %203 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %204 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @sctp_send_next_asconf(%struct.net* %200, %struct.sctp_endpoint* %201, %struct.sctp_association* %202, i32 %205, %struct.sctp_cmd_seq* %203)
  store i32 %206, i32* %7, align 4
  br label %246

207:                                              ; preds = %189
  %208 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %209 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %210 = call %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association* %208, %struct.sctp_chunk* %209, i32 4)
  store %struct.sctp_chunk* %210, %struct.sctp_chunk** %20, align 8
  %211 = load %struct.sctp_chunk*, %struct.sctp_chunk** %20, align 8
  %212 = icmp ne %struct.sctp_chunk* %211, null
  br i1 %212, label %213, label %222

213:                                              ; preds = %207
  %214 = load %struct.sctp_chunk*, %struct.sctp_chunk** %20, align 8
  %215 = load i32, i32* @SCTP_ERROR_RSRC_LOW, align 4
  %216 = call i32 @sctp_init_cause(%struct.sctp_chunk* %214, i32 %215, i32 0)
  %217 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %218 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %219 = load %struct.sctp_chunk*, %struct.sctp_chunk** %20, align 8
  %220 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %219)
  %221 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %217, i32 %218, i32 %220)
  br label %222

222:                                              ; preds = %213, %207
  %223 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %224 = load i32, i32* @SCTP_CMD_DISCARD_PACKET, align 4
  %225 = call i32 (...) @SCTP_NULL()
  %226 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %223, i32 %224, i32 %225)
  %227 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %228 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %229 = load i32, i32* @ECONNABORTED, align 4
  %230 = call i32 @SCTP_ERROR(i32 %229)
  %231 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %227, i32 %228, i32 %230)
  %232 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %233 = load i32, i32* @SCTP_CMD_ASSOC_FAILED, align 4
  %234 = load i32, i32* @SCTP_ERROR_ASCONF_ACK, align 4
  %235 = call i32 @SCTP_PERR(i32 %234)
  %236 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %232, i32 %233, i32 %235)
  %237 = load %struct.net*, %struct.net** %9, align 8
  %238 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %239 = call i32 @SCTP_INC_STATS(%struct.net* %237, i32 %238)
  %240 = load %struct.net*, %struct.net** %9, align 8
  %241 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %242 = call i32 @SCTP_DEC_STATS(%struct.net* %240, i32 %241)
  %243 = load i32, i32* @SCTP_DISPOSITION_ABORT, align 4
  store i32 %243, i32* %7, align 4
  br label %246

244:                                              ; preds = %184, %180
  %245 = load i32, i32* @SCTP_DISPOSITION_DISCARD, align 4
  store i32 %245, i32* %7, align 4
  br label %246

246:                                              ; preds = %244, %222, %199, %153, %98, %74, %61, %31
  %247 = load i32, i32* %7, align 4
  ret i32 %247
}

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_sf_discard_chunk(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @sctp_verify_asconf(%struct.sctp_association*, %struct.sctp_chunk*, i32, %struct.sctp_paramhdr**) #1

declare dso_local i32 @sctp_sf_violation_paramlen(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i64 @ADDIP_SERIAL_gte(i64, i64) #1

declare dso_local %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association*, %struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_init_cause(%struct.sctp_chunk*, i32, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @SCTP_DEC_STATS(%struct.net*, i32) #1

declare dso_local i32 @sctp_process_asconf_ack(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local i32 @sctp_send_next_asconf(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, %struct.sctp_cmd_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
