; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_unexpected_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_unexpected_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.sctp_inithdr* }
%struct.sctp_inithdr = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.sctp_unrecognized_param = type { i32 }
%struct.sctp_packet = type { i32 }
%struct.sctp_init_chunk = type { i32 }

@SCTP_CMD_SEND_PKT = common dso_local global i32 0, align 4
@SCTP_MIB_OUTCTRLCHUNKS = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@COOKIE_WAIT = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_ASOC = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_DELETE_TCB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*)* @sctp_sf_do_unexpected_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_do_unexpected_init(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  %15 = alloca %struct.sctp_chunk*, align 8
  %16 = alloca %struct.sctp_chunk*, align 8
  %17 = alloca %struct.sctp_unrecognized_param*, align 8
  %18 = alloca %struct.sctp_association*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.sctp_packet*, align 8
  %21 = alloca i32, align 4
  %22 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %22, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = bitcast i8* %23 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %24, %struct.sctp_chunk** %14, align 8
  %25 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %26 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %27 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %26, i32 0, i32 1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = call i64 @security_sctp_assoc_request(%struct.sctp_endpoint* %25, %struct.TYPE_11__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %6
  %32 = load %struct.net*, %struct.net** %9, align 8
  %33 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %34 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %37 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sctp_sf_pdiscard(%struct.net* %32, %struct.sctp_endpoint* %33, %struct.sctp_association* %34, i32 %38, i8* %35, %struct.sctp_cmd_seq* %36)
  store i32 %39, i32* %7, align 4
  br label %280

40:                                               ; preds = %6
  %41 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %42 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = load %struct.net*, %struct.net** %9, align 8
  %47 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %48 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %51 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sctp_sf_pdiscard(%struct.net* %46, %struct.sctp_endpoint* %47, %struct.sctp_association* %48, i32 %52, i8* %49, %struct.sctp_cmd_seq* %50)
  store i32 %53, i32* %7, align 4
  br label %280

54:                                               ; preds = %40
  %55 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %56 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %55, i32 0, i32 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load %struct.net*, %struct.net** %9, align 8
  %63 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %64 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %67 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sctp_sf_tabort_8_4_8(%struct.net* %62, %struct.sctp_endpoint* %63, %struct.sctp_association* %64, i32 %68, i8* %65, %struct.sctp_cmd_seq* %66)
  store i32 %69, i32* %7, align 4
  br label %280

70:                                               ; preds = %54
  %71 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
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
  br label %280

83:                                               ; preds = %70
  %84 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %85 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to %struct.sctp_inithdr*
  %90 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %91 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store %struct.sctp_inithdr* %89, %struct.sctp_inithdr** %92, align 8
  %93 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %94 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %93, i32 0, i32 1
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = call i32 @skb_pull(%struct.TYPE_11__* %95, i32 4)
  %97 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %98 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %16, align 8
  %100 = load %struct.net*, %struct.net** %9, align 8
  %101 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %102 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %103 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %104 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %109 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %108, i32 0, i32 0
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = bitcast %struct.TYPE_10__* %110 to %struct.sctp_init_chunk*
  %112 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %113 = call i32 @sctp_verify_init(%struct.net* %100, %struct.sctp_endpoint* %101, %struct.sctp_association* %102, i32 %107, %struct.sctp_init_chunk* %111, %struct.sctp_chunk* %112, %struct.sctp_chunk** %16)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %162, label %115

115:                                              ; preds = %83
  %116 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %117 = icmp ne %struct.sctp_chunk* %116, null
  br i1 %117, label %118, label %153

118:                                              ; preds = %115
  %119 = load %struct.net*, %struct.net** %9, align 8
  %120 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %121 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %124 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %123, i32 0, i32 0
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = bitcast %struct.TYPE_10__* %125 to i32*
  %127 = getelementptr inbounds i32, i32* %126, i64 4
  %128 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %129 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %128, i32 0, i32 0
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ntohs(i32 %132)
  %134 = sext i32 %133 to i64
  %135 = sub i64 %134, 4
  %136 = trunc i64 %135 to i32
  %137 = call %struct.sctp_packet* @sctp_abort_pkt_new(%struct.net* %119, %struct.sctp_endpoint* %120, %struct.sctp_association* %121, i8* %122, i32* %127, i32 %136)
  store %struct.sctp_packet* %137, %struct.sctp_packet** %20, align 8
  %138 = load %struct.sctp_packet*, %struct.sctp_packet** %20, align 8
  %139 = icmp ne %struct.sctp_packet* %138, null
  br i1 %139, label %140, label %150

140:                                              ; preds = %118
  %141 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %142 = load i32, i32* @SCTP_CMD_SEND_PKT, align 4
  %143 = load %struct.sctp_packet*, %struct.sctp_packet** %20, align 8
  %144 = call i32 @SCTP_PACKET(%struct.sctp_packet* %143)
  %145 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %141, i32 %142, i32 %144)
  %146 = load %struct.net*, %struct.net** %9, align 8
  %147 = load i32, i32* @SCTP_MIB_OUTCTRLCHUNKS, align 4
  %148 = call i32 @SCTP_INC_STATS(%struct.net* %146, i32 %147)
  %149 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %149, i32* %19, align 4
  br label %152

150:                                              ; preds = %118
  %151 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %151, i32* %19, align 4
  br label %152

152:                                              ; preds = %150, %140
  br label %272

153:                                              ; preds = %115
  %154 = load %struct.net*, %struct.net** %9, align 8
  %155 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %156 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %157 = load i8*, i8** %12, align 8
  %158 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %159 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @sctp_sf_tabort_8_4_8(%struct.net* %154, %struct.sctp_endpoint* %155, %struct.sctp_association* %156, i32 %160, i8* %157, %struct.sctp_cmd_seq* %158)
  store i32 %161, i32* %7, align 4
  br label %280

162:                                              ; preds = %83
  %163 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %164 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %165 = load i32, i32* @GFP_ATOMIC, align 4
  %166 = call %struct.sctp_association* @sctp_make_temp_asoc(%struct.sctp_endpoint* %163, %struct.sctp_chunk* %164, i32 %165)
  store %struct.sctp_association* %166, %struct.sctp_association** %18, align 8
  %167 = load %struct.sctp_association*, %struct.sctp_association** %18, align 8
  %168 = icmp ne %struct.sctp_association* %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %162
  br label %263

170:                                              ; preds = %162
  %171 = load %struct.sctp_association*, %struct.sctp_association** %18, align 8
  %172 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %173 = call i32 @sctp_source(%struct.sctp_chunk* %172)
  %174 = call i32 @sctp_scope(i32 %173)
  %175 = load i32, i32* @GFP_ATOMIC, align 4
  %176 = call i64 @sctp_assoc_set_bind_addr_from_ep(%struct.sctp_association* %171, i32 %174, i32 %175)
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %170
  br label %263

179:                                              ; preds = %170
  %180 = load %struct.sctp_association*, %struct.sctp_association** %18, align 8
  %181 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %182 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %183 = call i32 @sctp_source(%struct.sctp_chunk* %182)
  %184 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %185 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %184, i32 0, i32 0
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  %187 = bitcast %struct.TYPE_10__* %186 to %struct.sctp_init_chunk*
  %188 = load i32, i32* @GFP_ATOMIC, align 4
  %189 = call i32 @sctp_process_init(%struct.sctp_association* %180, %struct.sctp_chunk* %181, i32 %183, %struct.sctp_init_chunk* %187, i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %179
  br label %263

192:                                              ; preds = %179
  %193 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %194 = load i32, i32* @COOKIE_WAIT, align 4
  %195 = call i32 @sctp_state(%struct.sctp_association* %193, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %207, label %197

197:                                              ; preds = %192
  %198 = load %struct.sctp_association*, %struct.sctp_association** %18, align 8
  %199 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %200 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %201 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %202 = call i32 @sctp_sf_check_restart_addrs(%struct.sctp_association* %198, %struct.sctp_association* %199, %struct.sctp_chunk* %200, %struct.sctp_cmd_seq* %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %197
  %205 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %205, i32* %19, align 4
  br label %265

206:                                              ; preds = %197
  br label %207

207:                                              ; preds = %206, %192
  %208 = load %struct.sctp_association*, %struct.sctp_association** %18, align 8
  %209 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %210 = call i32 @sctp_tietags_populate(%struct.sctp_association* %208, %struct.sctp_association* %209)
  store i32 0, i32* %21, align 4
  %211 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %212 = icmp ne %struct.sctp_chunk* %211, null
  br i1 %212, label %213, label %223

213:                                              ; preds = %207
  %214 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %215 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %214, i32 0, i32 0
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @ntohs(i32 %218)
  %220 = sext i32 %219 to i64
  %221 = sub i64 %220, 4
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %21, align 4
  br label %223

223:                                              ; preds = %213, %207
  %224 = load %struct.sctp_association*, %struct.sctp_association** %18, align 8
  %225 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %226 = load i32, i32* @GFP_ATOMIC, align 4
  %227 = load i32, i32* %21, align 4
  %228 = call %struct.sctp_chunk* @sctp_make_init_ack(%struct.sctp_association* %224, %struct.sctp_chunk* %225, i32 %226, i32 %227)
  store %struct.sctp_chunk* %228, %struct.sctp_chunk** %15, align 8
  %229 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %230 = icmp ne %struct.sctp_chunk* %229, null
  br i1 %230, label %232, label %231

231:                                              ; preds = %223
  br label %263

232:                                              ; preds = %223
  %233 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %234 = icmp ne %struct.sctp_chunk* %233, null
  br i1 %234, label %235, label %246

235:                                              ; preds = %232
  %236 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %237 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %236, i32 0, i32 0
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %237, align 8
  %239 = bitcast %struct.TYPE_10__* %238 to i32*
  %240 = getelementptr inbounds i32, i32* %239, i64 4
  %241 = bitcast i32* %240 to %struct.sctp_unrecognized_param*
  store %struct.sctp_unrecognized_param* %241, %struct.sctp_unrecognized_param** %17, align 8
  %242 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %243 = load i32, i32* %21, align 4
  %244 = load %struct.sctp_unrecognized_param*, %struct.sctp_unrecognized_param** %17, align 8
  %245 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %242, i32 %243, %struct.sctp_unrecognized_param* %244)
  br label %246

246:                                              ; preds = %235, %232
  %247 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %248 = load i32, i32* @SCTP_CMD_NEW_ASOC, align 4
  %249 = load %struct.sctp_association*, %struct.sctp_association** %18, align 8
  %250 = call i32 @SCTP_ASOC(%struct.sctp_association* %249)
  %251 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %247, i32 %248, i32 %250)
  %252 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %253 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %254 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %255 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %254)
  %256 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %252, i32 %253, i32 %255)
  %257 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %258 = load i32, i32* @SCTP_CMD_DELETE_TCB, align 4
  %259 = call i32 (...) @SCTP_NULL()
  %260 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %257, i32 %258, i32 %259)
  %261 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %261, i32* %19, align 4
  %262 = load i32, i32* %19, align 4
  store i32 %262, i32* %7, align 4
  br label %280

263:                                              ; preds = %231, %191, %178, %169
  %264 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %264, i32* %19, align 4
  br label %265

265:                                              ; preds = %263, %204
  %266 = load %struct.sctp_association*, %struct.sctp_association** %18, align 8
  %267 = icmp ne %struct.sctp_association* %266, null
  br i1 %267, label %268, label %271

268:                                              ; preds = %265
  %269 = load %struct.sctp_association*, %struct.sctp_association** %18, align 8
  %270 = call i32 @sctp_association_free(%struct.sctp_association* %269)
  br label %271

271:                                              ; preds = %268, %265
  br label %272

272:                                              ; preds = %271, %152
  %273 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %274 = icmp ne %struct.sctp_chunk* %273, null
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %277 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %276)
  br label %278

278:                                              ; preds = %275, %272
  %279 = load i32, i32* %19, align 4
  store i32 %279, i32* %7, align 4
  br label %280

280:                                              ; preds = %278, %246, %153, %74, %61, %45, %31
  %281 = load i32, i32* %7, align 4
  ret i32 %281
}

declare dso_local i64 @security_sctp_assoc_request(%struct.sctp_endpoint*, %struct.TYPE_11__*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_sf_tabort_8_4_8(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @skb_pull(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sctp_verify_init(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, %struct.sctp_init_chunk*, %struct.sctp_chunk*, %struct.sctp_chunk**) #1

declare dso_local %struct.sctp_packet* @sctp_abort_pkt_new(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i8*, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_PACKET(%struct.sctp_packet*) #1

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local %struct.sctp_association* @sctp_make_temp_asoc(%struct.sctp_endpoint*, %struct.sctp_chunk*, i32) #1

declare dso_local i64 @sctp_assoc_set_bind_addr_from_ep(%struct.sctp_association*, i32, i32) #1

declare dso_local i32 @sctp_scope(i32) #1

declare dso_local i32 @sctp_source(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_process_init(%struct.sctp_association*, %struct.sctp_chunk*, i32, %struct.sctp_init_chunk*, i32) #1

declare dso_local i32 @sctp_state(%struct.sctp_association*, i32) #1

declare dso_local i32 @sctp_sf_check_restart_addrs(%struct.sctp_association*, %struct.sctp_association*, %struct.sctp_chunk*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_tietags_populate(%struct.sctp_association*, %struct.sctp_association*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_init_ack(%struct.sctp_association*, %struct.sctp_chunk*, i32, i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %struct.sctp_unrecognized_param*) #1

declare dso_local i32 @SCTP_ASOC(%struct.sctp_association*) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @sctp_association_free(%struct.sctp_association*) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
