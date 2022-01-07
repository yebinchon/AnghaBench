; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_5_1B_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_5_1B_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.sctp_endpoint = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_11__*, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.sctp_inithdr* }
%struct.sctp_inithdr = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.sctp_unrecognized_param = type { i32 }
%struct.sctp_packet = type { i32 }
%struct.TYPE_17__ = type { %struct.sctp_endpoint* }
%struct.sctp_init_chunk = type { i32 }

@SCTP_MIB_OUTOFBLUES = common dso_local global i32 0, align 4
@CLOSING = common dso_local global i32 0, align 4
@SCTP_CMD_SEND_PKT = common dso_local global i32 0, align 4
@SCTP_MIB_OUTCTRLCHUNKS = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_ASOC = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_DELETE_TCB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DELETE_TCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_5_1B_init(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
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
  %19 = alloca %struct.sctp_packet*, align 8
  %20 = alloca i32, align 4
  %21 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %21, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = bitcast i8* %22 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %23, %struct.sctp_chunk** %14, align 8
  %24 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %25 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %26 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %25, i32 0, i32 1
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = call i64 @security_sctp_assoc_request(%struct.sctp_endpoint* %24, %struct.TYPE_16__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %6
  %31 = load %struct.net*, %struct.net** %9, align 8
  %32 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %33 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %36 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sctp_sf_pdiscard(%struct.net* %31, %struct.sctp_endpoint* %32, %struct.sctp_association* %33, i32 %37, i8* %34, %struct.sctp_cmd_seq* %35)
  store i32 %38, i32* %7, align 4
  br label %296

39:                                               ; preds = %6
  %40 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %41 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = load %struct.net*, %struct.net** %9, align 8
  %46 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %47 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %50 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @sctp_sf_pdiscard(%struct.net* %45, %struct.sctp_endpoint* %46, %struct.sctp_association* %47, i32 %51, i8* %48, %struct.sctp_cmd_seq* %49)
  store i32 %52, i32* %7, align 4
  br label %296

53:                                               ; preds = %39
  %54 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %55 = load %struct.net*, %struct.net** %9, align 8
  %56 = getelementptr inbounds %struct.net, %struct.net* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.TYPE_17__* @sctp_sk(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %60, align 8
  %62 = icmp eq %struct.sctp_endpoint* %54, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %53
  %64 = load %struct.net*, %struct.net** %9, align 8
  %65 = load i32, i32* @SCTP_MIB_OUTOFBLUES, align 4
  %66 = call i32 @SCTP_INC_STATS(%struct.net* %64, i32 %65)
  %67 = load %struct.net*, %struct.net** %9, align 8
  %68 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %69 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %72 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @sctp_sf_tabort_8_4_8(%struct.net* %67, %struct.sctp_endpoint* %68, %struct.sctp_association* %69, i32 %73, i8* %70, %struct.sctp_cmd_seq* %71)
  store i32 %74, i32* %7, align 4
  br label %296

75:                                               ; preds = %53
  %76 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %77 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %76, i32 0, i32 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load %struct.net*, %struct.net** %9, align 8
  %84 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %85 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %88 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @sctp_sf_tabort_8_4_8(%struct.net* %83, %struct.sctp_endpoint* %84, %struct.sctp_association* %85, i32 %89, i8* %86, %struct.sctp_cmd_seq* %87)
  store i32 %90, i32* %7, align 4
  br label %296

91:                                               ; preds = %75
  %92 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %93 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %92, i32 4)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %91
  %96 = load %struct.net*, %struct.net** %9, align 8
  %97 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %98 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %101 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @sctp_sf_pdiscard(%struct.net* %96, %struct.sctp_endpoint* %97, %struct.sctp_association* %98, i32 %102, i8* %99, %struct.sctp_cmd_seq* %100)
  store i32 %103, i32* %7, align 4
  br label %296

104:                                              ; preds = %91
  %105 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %106 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CLOSING, align 4
  %110 = call i64 @sctp_sstate(i32 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %104
  %113 = load %struct.net*, %struct.net** %9, align 8
  %114 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %115 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %118 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @sctp_sf_tabort_8_4_8(%struct.net* %113, %struct.sctp_endpoint* %114, %struct.sctp_association* %115, i32 %119, i8* %116, %struct.sctp_cmd_seq* %117)
  store i32 %120, i32* %7, align 4
  br label %296

121:                                              ; preds = %104
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %16, align 8
  %122 = load %struct.net*, %struct.net** %9, align 8
  %123 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %124 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %125 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %126 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %125, i32 0, i32 0
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %131 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %130, i32 0, i32 0
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = bitcast %struct.TYPE_15__* %132 to %struct.sctp_init_chunk*
  %134 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %135 = call i32 @sctp_verify_init(%struct.net* %122, %struct.sctp_endpoint* %123, %struct.sctp_association* %124, i32 %129, %struct.sctp_init_chunk* %133, %struct.sctp_chunk* %134, %struct.sctp_chunk** %16)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %185, label %137

137:                                              ; preds = %121
  %138 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %139 = icmp ne %struct.sctp_chunk* %138, null
  br i1 %139, label %140, label %176

140:                                              ; preds = %137
  %141 = load %struct.net*, %struct.net** %9, align 8
  %142 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %143 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %144 = load i8*, i8** %12, align 8
  %145 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %146 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %145, i32 0, i32 0
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %146, align 8
  %148 = bitcast %struct.TYPE_15__* %147 to i32*
  %149 = getelementptr inbounds i32, i32* %148, i64 4
  %150 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %151 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %150, i32 0, i32 0
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ntohs(i32 %154)
  %156 = sext i32 %155 to i64
  %157 = sub i64 %156, 4
  %158 = trunc i64 %157 to i32
  %159 = call %struct.sctp_packet* @sctp_abort_pkt_new(%struct.net* %141, %struct.sctp_endpoint* %142, %struct.sctp_association* %143, i8* %144, i32* %149, i32 %158)
  store %struct.sctp_packet* %159, %struct.sctp_packet** %19, align 8
  %160 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %161 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %160)
  %162 = load %struct.sctp_packet*, %struct.sctp_packet** %19, align 8
  %163 = icmp ne %struct.sctp_packet* %162, null
  br i1 %163, label %164, label %174

164:                                              ; preds = %140
  %165 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %166 = load i32, i32* @SCTP_CMD_SEND_PKT, align 4
  %167 = load %struct.sctp_packet*, %struct.sctp_packet** %19, align 8
  %168 = call i32 @SCTP_PACKET(%struct.sctp_packet* %167)
  %169 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %165, i32 %166, i32 %168)
  %170 = load %struct.net*, %struct.net** %9, align 8
  %171 = load i32, i32* @SCTP_MIB_OUTCTRLCHUNKS, align 4
  %172 = call i32 @SCTP_INC_STATS(%struct.net* %170, i32 %171)
  %173 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %173, i32* %7, align 4
  br label %296

174:                                              ; preds = %140
  %175 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %175, i32* %7, align 4
  br label %296

176:                                              ; preds = %137
  %177 = load %struct.net*, %struct.net** %9, align 8
  %178 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %179 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %180 = load i8*, i8** %12, align 8
  %181 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %182 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @sctp_sf_tabort_8_4_8(%struct.net* %177, %struct.sctp_endpoint* %178, %struct.sctp_association* %179, i32 %183, i8* %180, %struct.sctp_cmd_seq* %181)
  store i32 %184, i32* %7, align 4
  br label %296

185:                                              ; preds = %121
  %186 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %187 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %186, i32 0, i32 1
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = inttoptr i64 %190 to %struct.sctp_inithdr*
  %192 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %193 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  store %struct.sctp_inithdr* %191, %struct.sctp_inithdr** %194, align 8
  %195 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %196 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %195, i32 0, i32 1
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %196, align 8
  %198 = call i32 @skb_pull(%struct.TYPE_16__* %197, i32 4)
  %199 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %200 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  store i32 %198, i32* %201, align 8
  %202 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %203 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %204 = load i32, i32* @GFP_ATOMIC, align 4
  %205 = call %struct.sctp_association* @sctp_make_temp_asoc(%struct.sctp_endpoint* %202, %struct.sctp_chunk* %203, i32 %204)
  store %struct.sctp_association* %205, %struct.sctp_association** %18, align 8
  %206 = load %struct.sctp_association*, %struct.sctp_association** %18, align 8
  %207 = icmp ne %struct.sctp_association* %206, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %185
  br label %288

209:                                              ; preds = %185
  %210 = load %struct.sctp_association*, %struct.sctp_association** %18, align 8
  %211 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %212 = call i32 @sctp_source(%struct.sctp_chunk* %211)
  %213 = call i32 @sctp_scope(i32 %212)
  %214 = load i32, i32* @GFP_ATOMIC, align 4
  %215 = call i64 @sctp_assoc_set_bind_addr_from_ep(%struct.sctp_association* %210, i32 %213, i32 %214)
  %216 = icmp slt i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %209
  br label %285

218:                                              ; preds = %209
  %219 = load %struct.sctp_association*, %struct.sctp_association** %18, align 8
  %220 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %221 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %222 = call i32 @sctp_source(%struct.sctp_chunk* %221)
  %223 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %224 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %223, i32 0, i32 0
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %224, align 8
  %226 = bitcast %struct.TYPE_15__* %225 to %struct.sctp_init_chunk*
  %227 = load i32, i32* @GFP_ATOMIC, align 4
  %228 = call i32 @sctp_process_init(%struct.sctp_association* %219, %struct.sctp_chunk* %220, i32 %222, %struct.sctp_init_chunk* %226, i32 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %218
  br label %285

231:                                              ; preds = %218
  store i32 0, i32* %20, align 4
  %232 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %233 = icmp ne %struct.sctp_chunk* %232, null
  br i1 %233, label %234, label %244

234:                                              ; preds = %231
  %235 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %236 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %235, i32 0, i32 0
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @ntohs(i32 %239)
  %241 = sext i32 %240 to i64
  %242 = sub i64 %241, 4
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %20, align 4
  br label %244

244:                                              ; preds = %234, %231
  %245 = load %struct.sctp_association*, %struct.sctp_association** %18, align 8
  %246 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %247 = load i32, i32* @GFP_ATOMIC, align 4
  %248 = load i32, i32* %20, align 4
  %249 = call %struct.sctp_chunk* @sctp_make_init_ack(%struct.sctp_association* %245, %struct.sctp_chunk* %246, i32 %247, i32 %248)
  store %struct.sctp_chunk* %249, %struct.sctp_chunk** %15, align 8
  %250 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %251 = icmp ne %struct.sctp_chunk* %250, null
  br i1 %251, label %253, label %252

252:                                              ; preds = %244
  br label %285

253:                                              ; preds = %244
  %254 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %255 = icmp ne %struct.sctp_chunk* %254, null
  br i1 %255, label %256, label %269

256:                                              ; preds = %253
  %257 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %258 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %257, i32 0, i32 0
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %258, align 8
  %260 = bitcast %struct.TYPE_15__* %259 to i32*
  %261 = getelementptr inbounds i32, i32* %260, i64 4
  %262 = bitcast i32* %261 to %struct.sctp_unrecognized_param*
  store %struct.sctp_unrecognized_param* %262, %struct.sctp_unrecognized_param** %17, align 8
  %263 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %264 = load i32, i32* %20, align 4
  %265 = load %struct.sctp_unrecognized_param*, %struct.sctp_unrecognized_param** %17, align 8
  %266 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %263, i32 %264, %struct.sctp_unrecognized_param* %265)
  %267 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %268 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %267)
  br label %269

269:                                              ; preds = %256, %253
  %270 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %271 = load i32, i32* @SCTP_CMD_NEW_ASOC, align 4
  %272 = load %struct.sctp_association*, %struct.sctp_association** %18, align 8
  %273 = call i32 @SCTP_ASOC(%struct.sctp_association* %272)
  %274 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %270, i32 %271, i32 %273)
  %275 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %276 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %277 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %278 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %277)
  %279 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %275, i32 %276, i32 %278)
  %280 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %281 = load i32, i32* @SCTP_CMD_DELETE_TCB, align 4
  %282 = call i32 (...) @SCTP_NULL()
  %283 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %280, i32 %281, i32 %282)
  %284 = load i32, i32* @SCTP_DISPOSITION_DELETE_TCB, align 4
  store i32 %284, i32* %7, align 4
  br label %296

285:                                              ; preds = %252, %230, %217
  %286 = load %struct.sctp_association*, %struct.sctp_association** %18, align 8
  %287 = call i32 @sctp_association_free(%struct.sctp_association* %286)
  br label %288

288:                                              ; preds = %285, %208
  %289 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %290 = icmp ne %struct.sctp_chunk* %289, null
  br i1 %290, label %291, label %294

291:                                              ; preds = %288
  %292 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %293 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %292)
  br label %294

294:                                              ; preds = %291, %288
  %295 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %295, i32* %7, align 4
  br label %296

296:                                              ; preds = %294, %269, %176, %174, %164, %112, %95, %82, %63, %44, %30
  %297 = load i32, i32* %7, align 4
  ret i32 %297
}

declare dso_local i64 @security_sctp_assoc_request(%struct.sctp_endpoint*, %struct.TYPE_16__*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local %struct.TYPE_17__* @sctp_sk(i32) #1

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @sctp_sf_tabort_8_4_8(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i64 @sctp_sstate(i32, i32) #1

declare dso_local i32 @sctp_verify_init(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, %struct.sctp_init_chunk*, %struct.sctp_chunk*, %struct.sctp_chunk**) #1

declare dso_local %struct.sctp_packet* @sctp_abort_pkt_new(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i8*, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_PACKET(%struct.sctp_packet*) #1

declare dso_local i32 @skb_pull(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.sctp_association* @sctp_make_temp_asoc(%struct.sctp_endpoint*, %struct.sctp_chunk*, i32) #1

declare dso_local i64 @sctp_assoc_set_bind_addr_from_ep(%struct.sctp_association*, i32, i32) #1

declare dso_local i32 @sctp_scope(i32) #1

declare dso_local i32 @sctp_source(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_process_init(%struct.sctp_association*, %struct.sctp_chunk*, i32, %struct.sctp_init_chunk*, i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_init_ack(%struct.sctp_association*, %struct.sctp_chunk*, i32, i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %struct.sctp_unrecognized_param*) #1

declare dso_local i32 @SCTP_ASOC(%struct.sctp_association*) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @sctp_association_free(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
