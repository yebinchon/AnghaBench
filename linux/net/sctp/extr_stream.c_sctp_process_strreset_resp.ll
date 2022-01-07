; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_process_strreset_resp.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_process_strreset_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32 }
%struct.sctp_association = type { %struct.TYPE_15__*, i32, i32, i64, i64, i64, %struct.TYPE_14__, %struct.TYPE_13__, i32, %struct.sctp_stream }
%struct.TYPE_15__ = type { %struct.sctp_transport* }
%struct.sctp_transport = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.sctp_stream = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (i32*, i64)* }
%struct.TYPE_11__ = type { i32 }
%struct.sctp_ulpevent = type { i32 }
%union.sctp_params = type { %struct.TYPE_11__* }
%struct.sctp_strreset_resp = type { i32, i32 }
%struct.sctp_paramhdr = type { i64 }
%struct.sctp_strreset_outreq = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.sctp_stream_out = type { i8*, i64, i64 }
%struct.sctp_strreset_inreq = type { %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.sctp_strreset_resptsn = type { i32, i32 }
%struct.sctp_strreset_addstrm = type { i32 }
%struct.TYPE_16__ = type { i64 }

@SCTP_STRRESET_PERFORMED = common dso_local global i64 0, align 8
@SCTP_STRRESET_IN_PROGRESS = common dso_local global i64 0, align 8
@SCTP_STRRESET_DENIED = common dso_local global i64 0, align 8
@SCTP_STREAM_RESET_DENIED = common dso_local global i32 0, align 4
@SCTP_STREAM_RESET_FAILED = common dso_local global i32 0, align 4
@SCTP_PARAM_RESET_OUT_REQUEST = common dso_local global i64 0, align 8
@SCTP_STREAM_RESET_OUTGOING_SSN = common dso_local global i32 0, align 4
@SCTP_STREAM_OPEN = common dso_local global i8* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_PARAM_RESET_IN_REQUEST = common dso_local global i64 0, align 8
@SCTP_STREAM_RESET_INCOMING_SSN = common dso_local global i32 0, align 4
@SCTP_PARAM_RESET_TSN_REQUEST = common dso_local global i64 0, align 8
@temp = common dso_local global i32 0, align 4
@SCTP_TSN_MAP_INITIAL = common dso_local global i32 0, align 4
@SCTP_PARAM_RESET_ADD_OUT_STREAMS = common dso_local global i64 0, align 8
@SCTP_PARAM_RESET_ADD_IN_STREAMS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_process_strreset_resp(%struct.sctp_association* %0, %struct.TYPE_11__* %1, %struct.sctp_ulpevent** %2) #0 {
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %union.sctp_params, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.sctp_ulpevent**, align 8
  %8 = alloca %struct.sctp_stream*, align 8
  %9 = alloca %struct.sctp_strreset_resp*, align 8
  %10 = alloca %struct.sctp_transport*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sctp_paramhdr*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.sctp_strreset_outreq*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.sctp_stream_out*, align 8
  %19 = alloca %struct.sctp_strreset_inreq*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.sctp_strreset_resptsn*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.sctp_strreset_addstrm*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.sctp_strreset_addstrm*, align 8
  %28 = getelementptr inbounds %union.sctp_params, %union.sctp_params* %5, i32 0, i32 0
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %28, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %6, align 8
  store %struct.sctp_ulpevent** %2, %struct.sctp_ulpevent*** %7, align 8
  %29 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %30 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %29, i32 0, i32 9
  store %struct.sctp_stream* %30, %struct.sctp_stream** %8, align 8
  %31 = bitcast %union.sctp_params* %5 to %struct.sctp_strreset_resp**
  %32 = load %struct.sctp_strreset_resp*, %struct.sctp_strreset_resp** %31, align 8
  store %struct.sctp_strreset_resp* %32, %struct.sctp_strreset_resp** %9, align 8
  store i32 0, i32* %13, align 4
  %33 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %34 = load %struct.sctp_strreset_resp*, %struct.sctp_strreset_resp** %9, align 8
  %35 = getelementptr inbounds %struct.sctp_strreset_resp, %struct.sctp_strreset_resp* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.sctp_paramhdr* @sctp_chunk_lookup_strreset_param(%struct.sctp_association* %33, i32 %36, i32 0)
  store %struct.sctp_paramhdr* %37, %struct.sctp_paramhdr** %14, align 8
  %38 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  %39 = icmp ne %struct.sctp_paramhdr* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %3
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %4, align 8
  br label %444

41:                                               ; preds = %3
  %42 = load %struct.sctp_strreset_resp*, %struct.sctp_strreset_resp** %9, align 8
  %43 = getelementptr inbounds %struct.sctp_strreset_resp, %struct.sctp_strreset_resp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ntohl(i32 %44)
  store i64 %45, i64* %15, align 8
  %46 = load i64, i64* %15, align 8
  %47 = load i64, i64* @SCTP_STRRESET_PERFORMED, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %41
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* @SCTP_STRRESET_IN_PROGRESS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %4, align 8
  br label %444

54:                                               ; preds = %49
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* @SCTP_STRRESET_DENIED, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @SCTP_STREAM_RESET_DENIED, align 4
  store i32 %59, i32* %13, align 4
  br label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @SCTP_STREAM_RESET_FAILED, align 4
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %60, %58
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63, %41
  %65 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  %66 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SCTP_PARAM_RESET_OUT_REQUEST, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %160

70:                                               ; preds = %64
  %71 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  %72 = bitcast %struct.sctp_paramhdr* %71 to %struct.sctp_strreset_outreq*
  store %struct.sctp_strreset_outreq* %72, %struct.sctp_strreset_outreq** %16, align 8
  %73 = load %struct.sctp_strreset_outreq*, %struct.sctp_strreset_outreq** %16, align 8
  %74 = getelementptr inbounds %struct.sctp_strreset_outreq, %struct.sctp_strreset_outreq* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %17, align 8
  %76 = load %struct.sctp_strreset_outreq*, %struct.sctp_strreset_outreq** %16, align 8
  %77 = getelementptr inbounds %struct.sctp_strreset_outreq, %struct.sctp_strreset_outreq* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ntohs(i32 %79)
  %81 = sext i32 %80 to i64
  %82 = sub i64 %81, 16
  %83 = udiv i64 %82, 4
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %12, align 4
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* @SCTP_STRRESET_PERFORMED, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %133

88:                                               ; preds = %70
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %88
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %109, %91
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %92
  %97 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %98 = load i32*, i32** %17, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ntohs(i32 %102)
  %104 = call %struct.sctp_stream_out* @SCTP_SO(%struct.sctp_stream* %97, i32 %103)
  store %struct.sctp_stream_out* %104, %struct.sctp_stream_out** %18, align 8
  %105 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %18, align 8
  %106 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %18, align 8
  %108 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %107, i32 0, i32 1
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %96
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %92

112:                                              ; preds = %92
  br label %132

113:                                              ; preds = %88
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %128, %113
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %117 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %114
  %121 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call %struct.sctp_stream_out* @SCTP_SO(%struct.sctp_stream* %121, i32 %122)
  store %struct.sctp_stream_out* %123, %struct.sctp_stream_out** %18, align 8
  %124 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %18, align 8
  %125 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %124, i32 0, i32 2
  store i64 0, i64* %125, align 8
  %126 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %18, align 8
  %127 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  br label %128

128:                                              ; preds = %120
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %114

131:                                              ; preds = %114
  br label %132

132:                                              ; preds = %131, %112
  br label %133

133:                                              ; preds = %132, %70
  %134 = load i32, i32* @SCTP_STREAM_RESET_OUTGOING_SSN, align 4
  %135 = load i32, i32* %13, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %137

137:                                              ; preds = %149, %133
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %140 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %137
  %144 = load i8*, i8** @SCTP_STREAM_OPEN, align 8
  %145 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %146 = load i32, i32* %11, align 4
  %147 = call %struct.sctp_stream_out* @SCTP_SO(%struct.sctp_stream* %145, i32 %146)
  %148 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %147, i32 0, i32 0
  store i8* %144, i8** %148, align 8
  br label %149

149:                                              ; preds = %143
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %137

152:                                              ; preds = %137
  %153 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32*, i32** %17, align 8
  %157 = load i32, i32* @GFP_ATOMIC, align 4
  %158 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_stream_reset_event(%struct.sctp_association* %153, i32 %154, i32 %155, i32* %156, i32 %157)
  %159 = load %struct.sctp_ulpevent**, %struct.sctp_ulpevent*** %7, align 8
  store %struct.sctp_ulpevent* %158, %struct.sctp_ulpevent** %159, align 8
  br label %410

160:                                              ; preds = %64
  %161 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  %162 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @SCTP_PARAM_RESET_IN_REQUEST, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %196

166:                                              ; preds = %160
  %167 = load i64, i64* %15, align 8
  %168 = load i64, i64* @SCTP_STRRESET_PERFORMED, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %4, align 8
  br label %444

171:                                              ; preds = %166
  %172 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  %173 = bitcast %struct.sctp_paramhdr* %172 to %struct.sctp_strreset_inreq*
  store %struct.sctp_strreset_inreq* %173, %struct.sctp_strreset_inreq** %19, align 8
  %174 = load %struct.sctp_strreset_inreq*, %struct.sctp_strreset_inreq** %19, align 8
  %175 = getelementptr inbounds %struct.sctp_strreset_inreq, %struct.sctp_strreset_inreq* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  store i32* %176, i32** %20, align 8
  %177 = load %struct.sctp_strreset_inreq*, %struct.sctp_strreset_inreq** %19, align 8
  %178 = getelementptr inbounds %struct.sctp_strreset_inreq, %struct.sctp_strreset_inreq* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @ntohs(i32 %180)
  %182 = sext i32 %181 to i64
  %183 = sub i64 %182, 16
  %184 = udiv i64 %183, 4
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* @SCTP_STREAM_RESET_INCOMING_SSN, align 4
  %187 = load i32, i32* %13, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %13, align 4
  %189 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* %12, align 4
  %192 = load i32*, i32** %20, align 8
  %193 = load i32, i32* @GFP_ATOMIC, align 4
  %194 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_stream_reset_event(%struct.sctp_association* %189, i32 %190, i32 %191, i32* %192, i32 %193)
  %195 = load %struct.sctp_ulpevent**, %struct.sctp_ulpevent*** %7, align 8
  store %struct.sctp_ulpevent* %194, %struct.sctp_ulpevent** %195, align 8
  br label %409

196:                                              ; preds = %160
  %197 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  %198 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @SCTP_PARAM_RESET_TSN_REQUEST, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %332

202:                                              ; preds = %196
  %203 = bitcast %union.sctp_params* %5 to %struct.TYPE_11__**
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @ntohs(i32 %206)
  %208 = sext i32 %207 to i64
  %209 = icmp ne i64 %208, 8
  br i1 %209, label %210, label %211

210:                                              ; preds = %202
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %4, align 8
  br label %444

211:                                              ; preds = %202
  %212 = load %struct.sctp_strreset_resp*, %struct.sctp_strreset_resp** %9, align 8
  %213 = bitcast %struct.sctp_strreset_resp* %212 to %struct.sctp_strreset_resptsn*
  store %struct.sctp_strreset_resptsn* %213, %struct.sctp_strreset_resptsn** %21, align 8
  %214 = load %struct.sctp_strreset_resptsn*, %struct.sctp_strreset_resptsn** %21, align 8
  %215 = getelementptr inbounds %struct.sctp_strreset_resptsn, %struct.sctp_strreset_resptsn* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i64 @ntohl(i32 %216)
  store i64 %217, i64* %22, align 8
  %218 = load %struct.sctp_strreset_resptsn*, %struct.sctp_strreset_resptsn** %21, align 8
  %219 = getelementptr inbounds %struct.sctp_strreset_resptsn, %struct.sctp_strreset_resptsn* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i64 @ntohl(i32 %220)
  store i64 %221, i64* %23, align 8
  %222 = load i64, i64* %15, align 8
  %223 = load i64, i64* @SCTP_STRRESET_PERFORMED, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %308

225:                                              ; preds = %211
  %226 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %227 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %226, i32 0, i32 7
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 0
  %229 = call i64 @sctp_tsnmap_get_max_tsn_seen(i32* %228)
  store i64 %229, i64* %24, align 8
  %230 = load i32, i32* @temp, align 4
  %231 = call i32 @LIST_HEAD(i32 %230)
  %232 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %233 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %232, i32 0, i32 9
  %234 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %233, i32 0, i32 2
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 0
  %237 = load i32 (i32*, i64)*, i32 (i32*, i64)** %236, align 8
  %238 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %239 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %238, i32 0, i32 8
  %240 = load i64, i64* %24, align 8
  %241 = call i32 %237(i32* %239, i64 %240)
  %242 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %243 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %242, i32 0, i32 7
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = load i32, i32* @SCTP_TSN_MAP_INITIAL, align 4
  %246 = load i64, i64* %22, align 8
  %247 = load i32, i32* @GFP_ATOMIC, align 4
  %248 = call i32 @sctp_tsnmap_init(i32* %244, i32 %245, i64 %246, i32 %247)
  %249 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %250 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %249, i32 0, i32 6
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  %252 = call i32 @list_splice_init(i32* %251, i32* @temp)
  %253 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %254 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %253, i32 0, i32 6
  %255 = call i32 @sctp_outq_free(%struct.TYPE_14__* %254)
  %256 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %257 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %256, i32 0, i32 6
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 0
  %259 = call i32 @list_splice_init(i32* @temp, i32* %258)
  %260 = load i64, i64* %23, align 8
  %261 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %262 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %261, i32 0, i32 5
  store i64 %260, i64* %262, align 8
  %263 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %264 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %263, i32 0, i32 5
  %265 = load i64, i64* %264, align 8
  %266 = sub nsw i64 %265, 1
  %267 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %268 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %267, i32 0, i32 3
  store i64 %266, i64* %268, align 8
  %269 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %270 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %273 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %272, i32 0, i32 4
  store i64 %271, i64* %273, align 8
  store i32 0, i32* %11, align 4
  br label %274

274:                                              ; preds = %289, %225
  %275 = load i32, i32* %11, align 4
  %276 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %277 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = icmp slt i32 %275, %278
  br i1 %279, label %280, label %292

280:                                              ; preds = %274
  %281 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %282 = load i32, i32* %11, align 4
  %283 = call %struct.sctp_stream_out* @SCTP_SO(%struct.sctp_stream* %281, i32 %282)
  %284 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %283, i32 0, i32 2
  store i64 0, i64* %284, align 8
  %285 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %286 = load i32, i32* %11, align 4
  %287 = call %struct.sctp_stream_out* @SCTP_SO(%struct.sctp_stream* %285, i32 %286)
  %288 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %287, i32 0, i32 1
  store i64 0, i64* %288, align 8
  br label %289

289:                                              ; preds = %280
  %290 = load i32, i32* %11, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %11, align 4
  br label %274

292:                                              ; preds = %274
  store i32 0, i32* %11, align 4
  br label %293

293:                                              ; preds = %304, %292
  %294 = load i32, i32* %11, align 4
  %295 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %296 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = icmp slt i32 %294, %297
  br i1 %298, label %299, label %307

299:                                              ; preds = %293
  %300 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %301 = load i32, i32* %11, align 4
  %302 = call %struct.TYPE_16__* @SCTP_SI(%struct.sctp_stream* %300, i32 %301)
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 0
  store i64 0, i64* %303, align 8
  br label %304

304:                                              ; preds = %299
  %305 = load i32, i32* %11, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %11, align 4
  br label %293

307:                                              ; preds = %293
  br label %308

308:                                              ; preds = %307, %211
  store i32 0, i32* %11, align 4
  br label %309

309:                                              ; preds = %321, %308
  %310 = load i32, i32* %11, align 4
  %311 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %312 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = icmp slt i32 %310, %313
  br i1 %314, label %315, label %324

315:                                              ; preds = %309
  %316 = load i8*, i8** @SCTP_STREAM_OPEN, align 8
  %317 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %318 = load i32, i32* %11, align 4
  %319 = call %struct.sctp_stream_out* @SCTP_SO(%struct.sctp_stream* %317, i32 %318)
  %320 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %319, i32 0, i32 0
  store i8* %316, i8** %320, align 8
  br label %321

321:                                              ; preds = %315
  %322 = load i32, i32* %11, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %11, align 4
  br label %309

324:                                              ; preds = %309
  %325 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %326 = load i32, i32* %13, align 4
  %327 = load i64, i64* %22, align 8
  %328 = load i64, i64* %23, align 8
  %329 = load i32, i32* @GFP_ATOMIC, align 4
  %330 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_reset_event(%struct.sctp_association* %325, i32 %326, i64 %327, i64 %328, i32 %329)
  %331 = load %struct.sctp_ulpevent**, %struct.sctp_ulpevent*** %7, align 8
  store %struct.sctp_ulpevent* %330, %struct.sctp_ulpevent** %331, align 8
  br label %408

332:                                              ; preds = %196
  %333 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  %334 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @SCTP_PARAM_RESET_ADD_OUT_STREAMS, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %382

338:                                              ; preds = %332
  %339 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  %340 = bitcast %struct.sctp_paramhdr* %339 to %struct.sctp_strreset_addstrm*
  store %struct.sctp_strreset_addstrm* %340, %struct.sctp_strreset_addstrm** %25, align 8
  %341 = load %struct.sctp_strreset_addstrm*, %struct.sctp_strreset_addstrm** %25, align 8
  %342 = getelementptr inbounds %struct.sctp_strreset_addstrm, %struct.sctp_strreset_addstrm* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @ntohs(i32 %343)
  store i32 %344, i32* %12, align 4
  %345 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %346 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* %12, align 4
  %349 = sub nsw i32 %347, %348
  store i32 %349, i32* %26, align 4
  %350 = load i64, i64* %15, align 8
  %351 = load i64, i64* @SCTP_STRRESET_PERFORMED, align 8
  %352 = icmp eq i64 %350, %351
  br i1 %352, label %353, label %371

353:                                              ; preds = %338
  %354 = load i32, i32* %26, align 4
  store i32 %354, i32* %11, align 4
  br label %355

355:                                              ; preds = %367, %353
  %356 = load i32, i32* %11, align 4
  %357 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %358 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = icmp slt i32 %356, %359
  br i1 %360, label %361, label %370

361:                                              ; preds = %355
  %362 = load i8*, i8** @SCTP_STREAM_OPEN, align 8
  %363 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %364 = load i32, i32* %11, align 4
  %365 = call %struct.sctp_stream_out* @SCTP_SO(%struct.sctp_stream* %363, i32 %364)
  %366 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %365, i32 0, i32 0
  store i8* %362, i8** %366, align 8
  br label %367

367:                                              ; preds = %361
  %368 = load i32, i32* %11, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %11, align 4
  br label %355

370:                                              ; preds = %355
  br label %375

371:                                              ; preds = %338
  %372 = load i32, i32* %26, align 4
  %373 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %374 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %373, i32 0, i32 0
  store i32 %372, i32* %374, align 8
  br label %375

375:                                              ; preds = %371, %370
  %376 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %377 = load i32, i32* %13, align 4
  %378 = load i32, i32* %12, align 4
  %379 = load i32, i32* @GFP_ATOMIC, align 4
  %380 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_stream_change_event(%struct.sctp_association* %376, i32 %377, i32 0, i32 %378, i32 %379)
  %381 = load %struct.sctp_ulpevent**, %struct.sctp_ulpevent*** %7, align 8
  store %struct.sctp_ulpevent* %380, %struct.sctp_ulpevent** %381, align 8
  br label %407

382:                                              ; preds = %332
  %383 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  %384 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = load i64, i64* @SCTP_PARAM_RESET_ADD_IN_STREAMS, align 8
  %387 = icmp eq i64 %385, %386
  br i1 %387, label %388, label %406

388:                                              ; preds = %382
  %389 = load i64, i64* %15, align 8
  %390 = load i64, i64* @SCTP_STRRESET_PERFORMED, align 8
  %391 = icmp eq i64 %389, %390
  br i1 %391, label %392, label %393

392:                                              ; preds = %388
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %4, align 8
  br label %444

393:                                              ; preds = %388
  %394 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  %395 = bitcast %struct.sctp_paramhdr* %394 to %struct.sctp_strreset_addstrm*
  store %struct.sctp_strreset_addstrm* %395, %struct.sctp_strreset_addstrm** %27, align 8
  %396 = load %struct.sctp_strreset_addstrm*, %struct.sctp_strreset_addstrm** %27, align 8
  %397 = getelementptr inbounds %struct.sctp_strreset_addstrm, %struct.sctp_strreset_addstrm* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = call i32 @ntohs(i32 %398)
  store i32 %399, i32* %12, align 4
  %400 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %401 = load i32, i32* %13, align 4
  %402 = load i32, i32* %12, align 4
  %403 = load i32, i32* @GFP_ATOMIC, align 4
  %404 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_stream_change_event(%struct.sctp_association* %400, i32 %401, i32 %402, i32 0, i32 %403)
  %405 = load %struct.sctp_ulpevent**, %struct.sctp_ulpevent*** %7, align 8
  store %struct.sctp_ulpevent* %404, %struct.sctp_ulpevent** %405, align 8
  br label %406

406:                                              ; preds = %393, %382
  br label %407

407:                                              ; preds = %406, %375
  br label %408

408:                                              ; preds = %407, %324
  br label %409

409:                                              ; preds = %408, %171
  br label %410

410:                                              ; preds = %409, %152
  %411 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %412 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 8
  %414 = add nsw i32 %413, -1
  store i32 %414, i32* %412, align 8
  %415 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %416 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %416, align 4
  %419 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %420 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 8
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %443, label %423

423:                                              ; preds = %410
  %424 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %425 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %424, i32 0, i32 0
  %426 = load %struct.TYPE_15__*, %struct.TYPE_15__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %426, i32 0, i32 0
  %428 = load %struct.sctp_transport*, %struct.sctp_transport** %427, align 8
  store %struct.sctp_transport* %428, %struct.sctp_transport** %10, align 8
  %429 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %430 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %429, i32 0, i32 0
  %431 = call i64 @del_timer(i32* %430)
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %436

433:                                              ; preds = %423
  %434 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %435 = call i32 @sctp_transport_put(%struct.sctp_transport* %434)
  br label %436

436:                                              ; preds = %433, %423
  %437 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %438 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %437, i32 0, i32 0
  %439 = load %struct.TYPE_15__*, %struct.TYPE_15__** %438, align 8
  %440 = call i32 @sctp_chunk_put(%struct.TYPE_15__* %439)
  %441 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %442 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %441, i32 0, i32 0
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %442, align 8
  br label %443

443:                                              ; preds = %436, %410
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %4, align 8
  br label %444

444:                                              ; preds = %443, %392, %210, %170, %53, %40
  %445 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  ret %struct.sctp_chunk* %445
}

declare dso_local %struct.sctp_paramhdr* @sctp_chunk_lookup_strreset_param(%struct.sctp_association*, i32, i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.sctp_stream_out* @SCTP_SO(%struct.sctp_stream*, i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_stream_reset_event(%struct.sctp_association*, i32, i32, i32*, i32) #1

declare dso_local i64 @sctp_tsnmap_get_max_tsn_seen(i32*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @sctp_tsnmap_init(i32*, i32, i64, i32) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @sctp_outq_free(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_16__* @SCTP_SI(%struct.sctp_stream*, i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_reset_event(%struct.sctp_association*, i32, i64, i64, i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_stream_change_event(%struct.sctp_association*, i32, i32, i32, i32) #1

declare dso_local i64 @del_timer(i32*) #1

declare dso_local i32 @sctp_transport_put(%struct.sctp_transport*) #1

declare dso_local i32 @sctp_chunk_put(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
