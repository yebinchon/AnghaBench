; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_process_strreset_tsnreq.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_process_strreset_tsnreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32 }
%struct.sctp_association = type { i64, i64*, i64, i32, i64, i64, i32, %struct.TYPE_6__, i32, %struct.sctp_stream, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.sctp_stream = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*, i64)* }
%struct.sctp_strreset_tsnreq = type { i32 }
%struct.sctp_ulpevent = type { i32 }
%union.sctp_params = type { %struct.sctp_strreset_tsnreq* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64 }

@SCTP_STRRESET_DENIED = common dso_local global i64 0, align 8
@SCTP_STRRESET_ERR_BAD_SEQNO = common dso_local global i64 0, align 8
@SCTP_STRRESET_PERFORMED = common dso_local global i64 0, align 8
@SCTP_STRRESET_IN_PROGRESS = common dso_local global i64 0, align 8
@SCTP_ENABLE_RESET_ASSOC_REQ = common dso_local global i32 0, align 4
@SCTP_STRRESET_ERR_IN_PROGRESS = common dso_local global i64 0, align 8
@SCTP_TSN_MAP_INITIAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_process_strreset_tsnreq(%struct.sctp_association* %0, %struct.sctp_strreset_tsnreq* %1, %struct.sctp_ulpevent** %2) #0 {
  %4 = alloca %union.sctp_params, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_ulpevent**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sctp_strreset_tsnreq*, align 8
  %11 = alloca %struct.sctp_stream*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = getelementptr inbounds %union.sctp_params, %union.sctp_params* %4, i32 0, i32 0
  store %struct.sctp_strreset_tsnreq* %1, %struct.sctp_strreset_tsnreq** %15, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %5, align 8
  store %struct.sctp_ulpevent** %2, %struct.sctp_ulpevent*** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %16 = bitcast %union.sctp_params* %4 to %struct.sctp_strreset_tsnreq**
  %17 = load %struct.sctp_strreset_tsnreq*, %struct.sctp_strreset_tsnreq** %16, align 8
  store %struct.sctp_strreset_tsnreq* %17, %struct.sctp_strreset_tsnreq** %10, align 8
  %18 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %19 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %18, i32 0, i32 9
  store %struct.sctp_stream* %19, %struct.sctp_stream** %11, align 8
  %20 = load i64, i64* @SCTP_STRRESET_DENIED, align 8
  store i64 %20, i64* %12, align 8
  %21 = load %struct.sctp_strreset_tsnreq*, %struct.sctp_strreset_tsnreq** %10, align 8
  %22 = getelementptr inbounds %struct.sctp_strreset_tsnreq, %struct.sctp_strreset_tsnreq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ntohl(i32 %23)
  store i64 %24, i64* %13, align 8
  %25 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %26 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call i64 @TSN_lt(i64 %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %3
  %32 = load i64, i64* %13, align 8
  %33 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %34 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %35, 2
  %37 = call i64 @TSN_lt(i64 %32, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31, %3
  %40 = load i64, i64* @SCTP_STRRESET_ERR_BAD_SEQNO, align 8
  store i64 %40, i64* %12, align 8
  br label %189

41:                                               ; preds = %31
  %42 = load i64, i64* %13, align 8
  %43 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %44 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @TSN_lt(i64 %42, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %75

48:                                               ; preds = %41
  %49 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %50 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %13, align 8
  %53 = sub nsw i64 %51, %52
  %54 = sub nsw i64 %53, 1
  store i64 %54, i64* %14, align 8
  %55 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %56 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %14, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* @SCTP_STRRESET_PERFORMED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %48
  %65 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %66 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %8, align 8
  %69 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %70 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = call i64 @sctp_tsnmap_get_ctsn(i32* %71)
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %64, %48
  br label %189

75:                                               ; preds = %41
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %78 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %77, i32 0, i32 6
  %79 = call i32 @sctp_outq_is_empty(i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = load i64, i64* @SCTP_STRRESET_IN_PROGRESS, align 8
  store i64 %82, i64* %12, align 8
  br label %189

83:                                               ; preds = %76
  %84 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %85 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %85, align 8
  %88 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %89 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SCTP_ENABLE_RESET_ASSOC_REQ, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %83
  br label %185

95:                                               ; preds = %83
  %96 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %97 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %96, i32 0, i32 10
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i64, i64* @SCTP_STRRESET_ERR_IN_PROGRESS, align 8
  store i64 %101, i64* %12, align 8
  br label %185

102:                                              ; preds = %95
  %103 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %104 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = call i64 @sctp_tsnmap_get_max_tsn_seen(i32* %105)
  store i64 %106, i64* %9, align 8
  %107 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %108 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %107, i32 0, i32 9
  %109 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %108, i32 0, i32 2
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32 (i32*, i64)*, i32 (i32*, i64)** %111, align 8
  %113 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %114 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %113, i32 0, i32 8
  %115 = load i64, i64* %9, align 8
  %116 = call i32 %112(i32* %114, i64 %115)
  %117 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %118 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = call i64 @sctp_tsnmap_get_ctsn(i32* %119)
  %121 = add nsw i64 %120, -2147483648
  store i64 %121, i64* %7, align 8
  %122 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %123 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %122, i32 0, i32 7
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* @SCTP_TSN_MAP_INITIAL, align 4
  %126 = load i64, i64* %7, align 8
  %127 = load i32, i32* @GFP_ATOMIC, align 4
  %128 = call i32 @sctp_tsnmap_init(i32* %124, i32 %125, i64 %126, i32 %127)
  %129 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %130 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %129, i32 0, i32 6
  %131 = call i32 @sctp_outq_free(i32* %130)
  %132 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %133 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %8, align 8
  %135 = load i64, i64* %8, align 8
  %136 = sub nsw i64 %135, 1
  %137 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %138 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %137, i32 0, i32 2
  store i64 %136, i64* %138, align 8
  %139 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %140 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %143 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %142, i32 0, i32 5
  store i64 %141, i64* %143, align 8
  store i64 0, i64* %14, align 8
  br label %144

144:                                              ; preds = %159, %102
  %145 = load i64, i64* %14, align 8
  %146 = load %struct.sctp_stream*, %struct.sctp_stream** %11, align 8
  %147 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ult i64 %145, %148
  br i1 %149, label %150, label %162

150:                                              ; preds = %144
  %151 = load %struct.sctp_stream*, %struct.sctp_stream** %11, align 8
  %152 = load i64, i64* %14, align 8
  %153 = call %struct.TYPE_7__* @SCTP_SO(%struct.sctp_stream* %151, i64 %152)
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  store i64 0, i64* %154, align 8
  %155 = load %struct.sctp_stream*, %struct.sctp_stream** %11, align 8
  %156 = load i64, i64* %14, align 8
  %157 = call %struct.TYPE_7__* @SCTP_SO(%struct.sctp_stream* %155, i64 %156)
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  store i64 0, i64* %158, align 8
  br label %159

159:                                              ; preds = %150
  %160 = load i64, i64* %14, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %14, align 8
  br label %144

162:                                              ; preds = %144
  store i64 0, i64* %14, align 8
  br label %163

163:                                              ; preds = %174, %162
  %164 = load i64, i64* %14, align 8
  %165 = load %struct.sctp_stream*, %struct.sctp_stream** %11, align 8
  %166 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ult i64 %164, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %163
  %170 = load %struct.sctp_stream*, %struct.sctp_stream** %11, align 8
  %171 = load i64, i64* %14, align 8
  %172 = call %struct.TYPE_8__* @SCTP_SI(%struct.sctp_stream* %170, i64 %171)
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  store i64 0, i64* %173, align 8
  br label %174

174:                                              ; preds = %169
  %175 = load i64, i64* %14, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %14, align 8
  br label %163

177:                                              ; preds = %163
  %178 = load i64, i64* @SCTP_STRRESET_PERFORMED, align 8
  store i64 %178, i64* %12, align 8
  %179 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %180 = load i64, i64* %7, align 8
  %181 = load i64, i64* %8, align 8
  %182 = load i32, i32* @GFP_ATOMIC, align 4
  %183 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_reset_event(%struct.sctp_association* %179, i32 0, i64 %180, i64 %181, i32 %182)
  %184 = load %struct.sctp_ulpevent**, %struct.sctp_ulpevent*** %6, align 8
  store %struct.sctp_ulpevent* %183, %struct.sctp_ulpevent** %184, align 8
  br label %185

185:                                              ; preds = %177, %100, %94
  %186 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %187 = load i64, i64* %12, align 8
  %188 = call i32 @sctp_update_strreset_result(%struct.sctp_association* %186, i64 %187)
  br label %189

189:                                              ; preds = %185, %81, %74, %39
  %190 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %191 = load i64, i64* %12, align 8
  %192 = load i64, i64* %13, align 8
  %193 = load i64, i64* %8, align 8
  %194 = load i64, i64* %7, align 8
  %195 = call %struct.sctp_chunk* @sctp_make_strreset_tsnresp(%struct.sctp_association* %190, i64 %191, i64 %192, i64 %193, i64 %194)
  ret %struct.sctp_chunk* %195
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @TSN_lt(i64, i64) #1

declare dso_local i64 @sctp_tsnmap_get_ctsn(i32*) #1

declare dso_local i32 @sctp_outq_is_empty(i32*) #1

declare dso_local i64 @sctp_tsnmap_get_max_tsn_seen(i32*) #1

declare dso_local i32 @sctp_tsnmap_init(i32*, i32, i64, i32) #1

declare dso_local i32 @sctp_outq_free(i32*) #1

declare dso_local %struct.TYPE_7__* @SCTP_SO(%struct.sctp_stream*, i64) #1

declare dso_local %struct.TYPE_8__* @SCTP_SI(%struct.sctp_stream*, i64) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_reset_event(%struct.sctp_association*, i32, i64, i64, i32) #1

declare dso_local i32 @sctp_update_strreset_result(%struct.sctp_association*, i64) #1

declare dso_local %struct.sctp_chunk* @sctp_make_strreset_tsnresp(%struct.sctp_association*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
