; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_process_strreset_inreq.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_process_strreset_inreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32 }
%struct.sctp_association = type { i64, i64*, i32, i32, %struct.sctp_chunk*, %struct.sctp_stream }
%struct.sctp_stream = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_ulpevent = type { i32 }
%union.sctp_params = type { %struct.TYPE_3__* }
%struct.sctp_strreset_inreq = type { i32*, i32 }
%struct.TYPE_4__ = type { i8* }

@SCTP_STRRESET_DENIED = common dso_local global i64 0, align 8
@SCTP_STRRESET_ERR_BAD_SEQNO = common dso_local global i64 0, align 8
@SCTP_STRRESET_PERFORMED = common dso_local global i64 0, align 8
@SCTP_ENABLE_RESET_STREAM_REQ = common dso_local global i32 0, align 4
@SCTP_STRRESET_ERR_IN_PROGRESS = common dso_local global i64 0, align 8
@SCTP_STRRESET_ERR_WRONG_SSN = common dso_local global i64 0, align 8
@SCTP_STRRESET_IN_PROGRESS = common dso_local global i64 0, align 8
@SCTP_STREAM_CLOSED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_process_strreset_inreq(%struct.sctp_association* %0, %struct.TYPE_3__* %1, %struct.sctp_ulpevent** %2) #0 {
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %union.sctp_params, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.sctp_ulpevent**, align 8
  %8 = alloca %struct.sctp_strreset_inreq*, align 8
  %9 = alloca %struct.sctp_stream*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sctp_chunk*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = getelementptr inbounds %union.sctp_params, %union.sctp_params* %5, i32 0, i32 0
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %16, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %6, align 8
  store %struct.sctp_ulpevent** %2, %struct.sctp_ulpevent*** %7, align 8
  %17 = bitcast %union.sctp_params* %5 to %struct.sctp_strreset_inreq**
  %18 = load %struct.sctp_strreset_inreq*, %struct.sctp_strreset_inreq** %17, align 8
  store %struct.sctp_strreset_inreq* %18, %struct.sctp_strreset_inreq** %8, align 8
  %19 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %20 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %19, i32 0, i32 5
  store %struct.sctp_stream* %20, %struct.sctp_stream** %9, align 8
  %21 = load i64, i64* @SCTP_STRRESET_DENIED, align 8
  store i64 %21, i64* %10, align 8
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %11, align 8
  %22 = load %struct.sctp_strreset_inreq*, %struct.sctp_strreset_inreq** %8, align 8
  %23 = getelementptr inbounds %struct.sctp_strreset_inreq, %struct.sctp_strreset_inreq* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @ntohl(i32 %24)
  store i64 %25, i64* %12, align 8
  %26 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %27 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %12, align 8
  %30 = call i64 @TSN_lt(i64 %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %3
  %33 = load i64, i64* %12, align 8
  %34 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %35 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, 2
  %38 = call i64 @TSN_lt(i64 %33, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32, %3
  %41 = load i64, i64* @SCTP_STRRESET_ERR_BAD_SEQNO, align 8
  store i64 %41, i64* %10, align 8
  br label %192

42:                                               ; preds = %32
  %43 = load i64, i64* %12, align 8
  %44 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %45 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @TSN_lt(i64 %43, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %42
  %50 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %51 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %12, align 8
  %54 = sub nsw i64 %52, %53
  %55 = sub nsw i64 %54, 1
  store i64 %55, i64* %13, align 8
  %56 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %57 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %13, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @SCTP_STRRESET_PERFORMED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %49
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %4, align 8
  br label %202

66:                                               ; preds = %49
  br label %192

67:                                               ; preds = %42
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %70 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %74 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SCTP_ENABLE_RESET_STREAM_REQ, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %68
  br label %188

80:                                               ; preds = %68
  %81 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %82 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i64, i64* @SCTP_STRRESET_ERR_IN_PROGRESS, align 8
  store i64 %86, i64* %10, align 8
  br label %188

87:                                               ; preds = %80
  %88 = bitcast %union.sctp_params* %5 to %struct.TYPE_3__**
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @ntohs(i32 %91)
  %93 = sub i64 %92, 16
  %94 = udiv i64 %93, 8
  store i64 %94, i64* %14, align 8
  %95 = load %struct.sctp_strreset_inreq*, %struct.sctp_strreset_inreq** %8, align 8
  %96 = getelementptr inbounds %struct.sctp_strreset_inreq, %struct.sctp_strreset_inreq* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  store i32* %97, i32** %15, align 8
  store i64 0, i64* %13, align 8
  br label %98

98:                                               ; preds = %115, %87
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* %14, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %98
  %103 = load i32*, i32** %15, align 8
  %104 = load i64, i64* %13, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @ntohs(i32 %106)
  %108 = load %struct.sctp_stream*, %struct.sctp_stream** %9, align 8
  %109 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp uge i64 %107, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %102
  %113 = load i64, i64* @SCTP_STRRESET_ERR_WRONG_SSN, align 8
  store i64 %113, i64* %10, align 8
  br label %188

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %13, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %13, align 8
  br label %98

118:                                              ; preds = %98
  %119 = load %struct.sctp_stream*, %struct.sctp_stream** %9, align 8
  %120 = load i64, i64* %14, align 8
  %121 = load i32*, i32** %15, align 8
  %122 = call i32 @sctp_stream_outq_is_empty(%struct.sctp_stream* %119, i64 %120, i32* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load i64, i64* @SCTP_STRRESET_IN_PROGRESS, align 8
  store i64 %125, i64* %10, align 8
  %126 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %127 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, -1
  store i64 %129, i64* %127, align 8
  br label %192

130:                                              ; preds = %118
  %131 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %132 = load i64, i64* %14, align 8
  %133 = load i32*, i32** %15, align 8
  %134 = call %struct.sctp_chunk* @sctp_make_strreset_req(%struct.sctp_association* %131, i64 %132, i32* %133, i32 1, i32 0)
  store %struct.sctp_chunk* %134, %struct.sctp_chunk** %11, align 8
  %135 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %136 = icmp ne %struct.sctp_chunk* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %130
  br label %188

138:                                              ; preds = %130
  %139 = load i64, i64* %14, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %160

141:                                              ; preds = %138
  store i64 0, i64* %13, align 8
  br label %142

142:                                              ; preds = %156, %141
  %143 = load i64, i64* %13, align 8
  %144 = load i64, i64* %14, align 8
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %142
  %147 = load i8*, i8** @SCTP_STREAM_CLOSED, align 8
  %148 = load %struct.sctp_stream*, %struct.sctp_stream** %9, align 8
  %149 = load i32*, i32** %15, align 8
  %150 = load i64, i64* %13, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @ntohs(i32 %152)
  %154 = call %struct.TYPE_4__* @SCTP_SO(%struct.sctp_stream* %148, i64 %153)
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  store i8* %147, i8** %155, align 8
  br label %156

156:                                              ; preds = %146
  %157 = load i64, i64* %13, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %13, align 8
  br label %142

159:                                              ; preds = %142
  br label %177

160:                                              ; preds = %138
  store i64 0, i64* %13, align 8
  br label %161

161:                                              ; preds = %173, %160
  %162 = load i64, i64* %13, align 8
  %163 = load %struct.sctp_stream*, %struct.sctp_stream** %9, align 8
  %164 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ult i64 %162, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %161
  %168 = load i8*, i8** @SCTP_STREAM_CLOSED, align 8
  %169 = load %struct.sctp_stream*, %struct.sctp_stream** %9, align 8
  %170 = load i64, i64* %13, align 8
  %171 = call %struct.TYPE_4__* @SCTP_SO(%struct.sctp_stream* %169, i64 %170)
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  store i8* %168, i8** %172, align 8
  br label %173

173:                                              ; preds = %167
  %174 = load i64, i64* %13, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %13, align 8
  br label %161

176:                                              ; preds = %161
  br label %177

177:                                              ; preds = %176, %159
  %178 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %179 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %180 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %179, i32 0, i32 4
  store %struct.sctp_chunk* %178, %struct.sctp_chunk** %180, align 8
  %181 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %182 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %181, i32 0, i32 3
  store i32 1, i32* %182, align 4
  %183 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %184 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %183, i32 0, i32 4
  %185 = load %struct.sctp_chunk*, %struct.sctp_chunk** %184, align 8
  %186 = call i32 @sctp_chunk_hold(%struct.sctp_chunk* %185)
  %187 = load i64, i64* @SCTP_STRRESET_PERFORMED, align 8
  store i64 %187, i64* %10, align 8
  br label %188

188:                                              ; preds = %177, %137, %112, %85, %79
  %189 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %190 = load i64, i64* %10, align 8
  %191 = call i32 @sctp_update_strreset_result(%struct.sctp_association* %189, i64 %190)
  br label %192

192:                                              ; preds = %188, %124, %66, %40
  %193 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %194 = icmp ne %struct.sctp_chunk* %193, null
  br i1 %194, label %200, label %195

195:                                              ; preds = %192
  %196 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %197 = load i64, i64* %10, align 8
  %198 = load i64, i64* %12, align 8
  %199 = call %struct.sctp_chunk* @sctp_make_strreset_resp(%struct.sctp_association* %196, i64 %197, i64 %198)
  store %struct.sctp_chunk* %199, %struct.sctp_chunk** %11, align 8
  br label %200

200:                                              ; preds = %195, %192
  %201 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  store %struct.sctp_chunk* %201, %struct.sctp_chunk** %4, align 8
  br label %202

202:                                              ; preds = %200, %65
  %203 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  ret %struct.sctp_chunk* %203
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @TSN_lt(i64, i64) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @sctp_stream_outq_is_empty(%struct.sctp_stream*, i64, i32*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_strreset_req(%struct.sctp_association*, i64, i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @SCTP_SO(%struct.sctp_stream*, i64) #1

declare dso_local i32 @sctp_chunk_hold(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_update_strreset_result(%struct.sctp_association*, i64) #1

declare dso_local %struct.sctp_chunk* @sctp_make_strreset_resp(%struct.sctp_association*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
