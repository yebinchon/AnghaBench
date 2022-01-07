; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_process_strreset_outreq.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_process_strreset_outreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32 }
%struct.sctp_association = type { i64, i64*, i32, %struct.TYPE_7__*, i32, i32, %struct.TYPE_5__, %struct.sctp_stream }
%struct.TYPE_7__ = type { %struct.sctp_transport* }
%struct.sctp_transport = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sctp_stream = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.sctp_ulpevent = type { i32 }
%union.sctp_params = type { %struct.TYPE_6__* }
%struct.sctp_strreset_outreq = type { i32, i32*, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@SCTP_STRRESET_DENIED = common dso_local global i64 0, align 8
@SCTP_STRRESET_IN_PROGRESS = common dso_local global i64 0, align 8
@SCTP_STRRESET_ERR_BAD_SEQNO = common dso_local global i64 0, align 8
@SCTP_ENABLE_RESET_STREAM_REQ = common dso_local global i32 0, align 4
@SCTP_STRRESET_ERR_WRONG_SSN = common dso_local global i64 0, align 8
@SCTP_PARAM_RESET_IN_REQUEST = common dso_local global i32 0, align 4
@SCTP_STRRESET_ERR_IN_PROGRESS = common dso_local global i64 0, align 8
@SCTP_STRRESET_PERFORMED = common dso_local global i64 0, align 8
@SCTP_STREAM_RESET_INCOMING_SSN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_process_strreset_outreq(%struct.sctp_association* %0, %struct.TYPE_6__* %1, %struct.sctp_ulpevent** %2) #0 {
  %4 = alloca %union.sctp_params, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_ulpevent**, align 8
  %7 = alloca %struct.sctp_strreset_outreq*, align 8
  %8 = alloca %struct.sctp_stream*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sctp_transport*, align 8
  %15 = getelementptr inbounds %union.sctp_params, %union.sctp_params* %4, i32 0, i32 0
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %15, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %5, align 8
  store %struct.sctp_ulpevent** %2, %struct.sctp_ulpevent*** %6, align 8
  %16 = bitcast %union.sctp_params* %4 to %struct.sctp_strreset_outreq**
  %17 = load %struct.sctp_strreset_outreq*, %struct.sctp_strreset_outreq** %16, align 8
  store %struct.sctp_strreset_outreq* %17, %struct.sctp_strreset_outreq** %7, align 8
  %18 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %19 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %18, i32 0, i32 7
  store %struct.sctp_stream* %19, %struct.sctp_stream** %8, align 8
  %20 = load i64, i64* @SCTP_STRRESET_DENIED, align 8
  store i64 %20, i64* %9, align 8
  store i32* null, i32** %10, align 8
  %21 = load %struct.sctp_strreset_outreq*, %struct.sctp_strreset_outreq** %7, align 8
  %22 = getelementptr inbounds %struct.sctp_strreset_outreq, %struct.sctp_strreset_outreq* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ntohl(i32 %23)
  store i64 %24, i64* %11, align 8
  %25 = load %struct.sctp_strreset_outreq*, %struct.sctp_strreset_outreq** %7, align 8
  %26 = getelementptr inbounds %struct.sctp_strreset_outreq, %struct.sctp_strreset_outreq* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @ntohl(i32 %27)
  %29 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %30 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i64 @sctp_tsnmap_get_ctsn(i32* %31)
  %33 = icmp sgt i64 %28, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i64, i64* @SCTP_STRRESET_IN_PROGRESS, align 8
  store i64 %35, i64* %9, align 8
  br label %216

36:                                               ; preds = %3
  %37 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %38 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @TSN_lt(i64 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %36
  %44 = load i64, i64* %11, align 8
  %45 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %46 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %47, 2
  %49 = call i64 @TSN_lt(i64 %44, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43, %36
  %52 = load i64, i64* @SCTP_STRRESET_ERR_BAD_SEQNO, align 8
  store i64 %52, i64* %9, align 8
  br label %216

53:                                               ; preds = %43
  %54 = load i64, i64* %11, align 8
  %55 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %56 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @TSN_lt(i64 %54, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %53
  %61 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %62 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = sub i64 %63, %64
  %66 = sub i64 %65, 1
  store i64 %66, i64* %12, align 8
  %67 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %68 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %12, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %9, align 8
  br label %216

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %76 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %76, align 8
  %79 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %80 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SCTP_ENABLE_RESET_STREAM_REQ, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %74
  br label %212

86:                                               ; preds = %74
  %87 = bitcast %union.sctp_params* %4 to %struct.TYPE_6__**
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @ntohs(i32 %90)
  %92 = sub i64 %91, 24
  %93 = udiv i64 %92, 8
  store i64 %93, i64* %13, align 8
  %94 = load %struct.sctp_strreset_outreq*, %struct.sctp_strreset_outreq** %7, align 8
  %95 = getelementptr inbounds %struct.sctp_strreset_outreq, %struct.sctp_strreset_outreq* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  store i32* %96, i32** %10, align 8
  store i64 0, i64* %12, align 8
  br label %97

97:                                               ; preds = %114, %86
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* %13, align 8
  %100 = icmp ult i64 %98, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %97
  %102 = load i32*, i32** %10, align 8
  %103 = load i64, i64* %12, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @ntohs(i32 %105)
  %107 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %108 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp uge i64 %106, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = load i64, i64* @SCTP_STRRESET_ERR_WRONG_SSN, align 8
  store i64 %112, i64* %9, align 8
  br label %212

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %12, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %12, align 8
  br label %97

117:                                              ; preds = %97
  %118 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %119 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %118, i32 0, i32 3
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = icmp ne %struct.TYPE_7__* %120, null
  br i1 %121, label %122, label %166

122:                                              ; preds = %117
  %123 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %124 = load %struct.sctp_strreset_outreq*, %struct.sctp_strreset_outreq** %7, align 8
  %125 = getelementptr inbounds %struct.sctp_strreset_outreq, %struct.sctp_strreset_outreq* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @SCTP_PARAM_RESET_IN_REQUEST, align 4
  %128 = call i32 @sctp_chunk_lookup_strreset_param(%struct.sctp_association* %123, i32 %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %122
  %131 = load i64, i64* @SCTP_STRRESET_ERR_IN_PROGRESS, align 8
  store i64 %131, i64* %9, align 8
  br label %212

132:                                              ; preds = %122
  %133 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %134 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %134, align 8
  %137 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %138 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %142 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %165, label %145

145:                                              ; preds = %132
  %146 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %147 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %146, i32 0, i32 3
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load %struct.sctp_transport*, %struct.sctp_transport** %149, align 8
  store %struct.sctp_transport* %150, %struct.sctp_transport** %14, align 8
  %151 = load %struct.sctp_transport*, %struct.sctp_transport** %14, align 8
  %152 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %151, i32 0, i32 0
  %153 = call i64 @del_timer(i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %145
  %156 = load %struct.sctp_transport*, %struct.sctp_transport** %14, align 8
  %157 = call i32 @sctp_transport_put(%struct.sctp_transport* %156)
  br label %158

158:                                              ; preds = %155, %145
  %159 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %160 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %159, i32 0, i32 3
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = call i32 @sctp_chunk_put(%struct.TYPE_7__* %161)
  %163 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %164 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %163, i32 0, i32 3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %164, align 8
  br label %165

165:                                              ; preds = %158, %132
  br label %166

166:                                              ; preds = %165, %117
  %167 = load i64, i64* %13, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %187

169:                                              ; preds = %166
  store i64 0, i64* %12, align 8
  br label %170

170:                                              ; preds = %183, %169
  %171 = load i64, i64* %12, align 8
  %172 = load i64, i64* %13, align 8
  %173 = icmp ult i64 %171, %172
  br i1 %173, label %174, label %186

174:                                              ; preds = %170
  %175 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %176 = load i32*, i32** %10, align 8
  %177 = load i64, i64* %12, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @ntohs(i32 %179)
  %181 = call %struct.TYPE_8__* @SCTP_SI(%struct.sctp_stream* %175, i64 %180)
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  store i64 0, i64* %182, align 8
  br label %183

183:                                              ; preds = %174
  %184 = load i64, i64* %12, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %12, align 8
  br label %170

186:                                              ; preds = %170
  br label %203

187:                                              ; preds = %166
  store i64 0, i64* %12, align 8
  br label %188

188:                                              ; preds = %199, %187
  %189 = load i64, i64* %12, align 8
  %190 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %191 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp ult i64 %189, %192
  br i1 %193, label %194, label %202

194:                                              ; preds = %188
  %195 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %196 = load i64, i64* %12, align 8
  %197 = call %struct.TYPE_8__* @SCTP_SI(%struct.sctp_stream* %195, i64 %196)
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  store i64 0, i64* %198, align 8
  br label %199

199:                                              ; preds = %194
  %200 = load i64, i64* %12, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %12, align 8
  br label %188

202:                                              ; preds = %188
  br label %203

203:                                              ; preds = %202, %186
  %204 = load i64, i64* @SCTP_STRRESET_PERFORMED, align 8
  store i64 %204, i64* %9, align 8
  %205 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %206 = load i32, i32* @SCTP_STREAM_RESET_INCOMING_SSN, align 4
  %207 = load i64, i64* %13, align 8
  %208 = load i32*, i32** %10, align 8
  %209 = load i32, i32* @GFP_ATOMIC, align 4
  %210 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_stream_reset_event(%struct.sctp_association* %205, i32 %206, i64 %207, i32* %208, i32 %209)
  %211 = load %struct.sctp_ulpevent**, %struct.sctp_ulpevent*** %6, align 8
  store %struct.sctp_ulpevent* %210, %struct.sctp_ulpevent** %211, align 8
  br label %212

212:                                              ; preds = %203, %130, %111, %85
  %213 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %214 = load i64, i64* %9, align 8
  %215 = call i32 @sctp_update_strreset_result(%struct.sctp_association* %213, i64 %214)
  br label %216

216:                                              ; preds = %212, %60, %51, %34
  %217 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %218 = load i64, i64* %9, align 8
  %219 = load i64, i64* %11, align 8
  %220 = call %struct.sctp_chunk* @sctp_make_strreset_resp(%struct.sctp_association* %217, i64 %218, i64 %219)
  ret %struct.sctp_chunk* %220
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @sctp_tsnmap_get_ctsn(i32*) #1

declare dso_local i64 @TSN_lt(i64, i64) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @sctp_chunk_lookup_strreset_param(%struct.sctp_association*, i32, i32) #1

declare dso_local i64 @del_timer(i32*) #1

declare dso_local i32 @sctp_transport_put(%struct.sctp_transport*) #1

declare dso_local i32 @sctp_chunk_put(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_8__* @SCTP_SI(%struct.sctp_stream*, i64) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_stream_reset_event(%struct.sctp_association*, i32, i64, i32*, i32) #1

declare dso_local i32 @sctp_update_strreset_result(%struct.sctp_association*, i64) #1

declare dso_local %struct.sctp_chunk* @sctp_make_strreset_resp(%struct.sctp_association*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
