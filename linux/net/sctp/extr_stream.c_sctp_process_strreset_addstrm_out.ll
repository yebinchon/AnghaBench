; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_process_strreset_addstrm_out.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_process_strreset_addstrm_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32 }
%struct.sctp_association = type { i64, i64*, i32, %struct.TYPE_2__*, i32, i32, %struct.sctp_stream }
%struct.TYPE_2__ = type { %struct.sctp_transport* }
%struct.sctp_transport = type { i32 }
%struct.sctp_stream = type { i64 }
%struct.sctp_strreset_addstrm = type { i32, i32 }
%struct.sctp_ulpevent = type { i32 }
%union.sctp_params = type { %struct.sctp_strreset_addstrm* }

@SCTP_STRRESET_DENIED = common dso_local global i64 0, align 8
@SCTP_STRRESET_ERR_BAD_SEQNO = common dso_local global i64 0, align 8
@SCTP_ENABLE_CHANGE_ASSOC_REQ = common dso_local global i32 0, align 4
@SCTP_MAX_STREAM = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_PARAM_RESET_ADD_IN_STREAMS = common dso_local global i32 0, align 4
@SCTP_STRRESET_ERR_IN_PROGRESS = common dso_local global i64 0, align 8
@SCTP_STRRESET_PERFORMED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_process_strreset_addstrm_out(%struct.sctp_association* %0, %struct.sctp_strreset_addstrm* %1, %struct.sctp_ulpevent** %2) #0 {
  %4 = alloca %union.sctp_params, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_ulpevent**, align 8
  %7 = alloca %struct.sctp_strreset_addstrm*, align 8
  %8 = alloca %struct.sctp_stream*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sctp_transport*, align 8
  %15 = getelementptr inbounds %union.sctp_params, %union.sctp_params* %4, i32 0, i32 0
  store %struct.sctp_strreset_addstrm* %1, %struct.sctp_strreset_addstrm** %15, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %5, align 8
  store %struct.sctp_ulpevent** %2, %struct.sctp_ulpevent*** %6, align 8
  %16 = bitcast %union.sctp_params* %4 to %struct.sctp_strreset_addstrm**
  %17 = load %struct.sctp_strreset_addstrm*, %struct.sctp_strreset_addstrm** %16, align 8
  store %struct.sctp_strreset_addstrm* %17, %struct.sctp_strreset_addstrm** %7, align 8
  %18 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %19 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %18, i32 0, i32 6
  store %struct.sctp_stream* %19, %struct.sctp_stream** %8, align 8
  %20 = load i64, i64* @SCTP_STRRESET_DENIED, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.sctp_strreset_addstrm*, %struct.sctp_strreset_addstrm** %7, align 8
  %22 = getelementptr inbounds %struct.sctp_strreset_addstrm, %struct.sctp_strreset_addstrm* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ntohl(i32 %23)
  store i64 %24, i64* %10, align 8
  %25 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %26 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i64 @TSN_lt(i64 %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %3
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %34 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %35, 2
  %37 = call i64 @TSN_lt(i64 %32, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31, %3
  %40 = load i64, i64* @SCTP_STRRESET_ERR_BAD_SEQNO, align 8
  store i64 %40, i64* %9, align 8
  br label %161

41:                                               ; preds = %31
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %44 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @TSN_lt(i64 %42, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %41
  %49 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %50 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = sub nsw i64 %51, %52
  %54 = sub nsw i64 %53, 1
  store i64 %54, i64* %13, align 8
  %55 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %56 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %13, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %9, align 8
  br label %161

61:                                               ; preds = %41
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %64 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %68 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SCTP_ENABLE_CHANGE_ASSOC_REQ, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %62
  br label %157

74:                                               ; preds = %62
  %75 = load %struct.sctp_strreset_addstrm*, %struct.sctp_strreset_addstrm** %7, align 8
  %76 = getelementptr inbounds %struct.sctp_strreset_addstrm, %struct.sctp_strreset_addstrm* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @ntohs(i32 %77)
  store i64 %78, i64* %12, align 8
  %79 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %80 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = add i64 %81, %82
  store i64 %83, i64* %11, align 8
  %84 = load i64, i64* %12, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %74
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* @SCTP_MAX_STREAM, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86, %74
  br label %157

91:                                               ; preds = %86
  %92 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i32, i32* @GFP_ATOMIC, align 4
  %95 = call i64 @sctp_stream_alloc_in(%struct.sctp_stream* %92, i64 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %157

98:                                               ; preds = %91
  %99 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %100 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %99, i32 0, i32 3
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = icmp ne %struct.TYPE_2__* %101, null
  br i1 %102, label %103, label %144

103:                                              ; preds = %98
  %104 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %105 = load i32, i32* @SCTP_PARAM_RESET_ADD_IN_STREAMS, align 4
  %106 = call i32 @sctp_chunk_lookup_strreset_param(%struct.sctp_association* %104, i32 0, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %103
  %109 = load i64, i64* @SCTP_STRRESET_ERR_IN_PROGRESS, align 8
  store i64 %109, i64* %9, align 8
  br label %157

110:                                              ; preds = %103
  %111 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %112 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %112, align 8
  %115 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %116 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %120 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %143, label %123

123:                                              ; preds = %110
  %124 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %125 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %124, i32 0, i32 3
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load %struct.sctp_transport*, %struct.sctp_transport** %127, align 8
  store %struct.sctp_transport* %128, %struct.sctp_transport** %14, align 8
  %129 = load %struct.sctp_transport*, %struct.sctp_transport** %14, align 8
  %130 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %129, i32 0, i32 0
  %131 = call i64 @del_timer(i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load %struct.sctp_transport*, %struct.sctp_transport** %14, align 8
  %135 = call i32 @sctp_transport_put(%struct.sctp_transport* %134)
  br label %136

136:                                              ; preds = %133, %123
  %137 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %138 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %137, i32 0, i32 3
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = call i32 @sctp_chunk_put(%struct.TYPE_2__* %139)
  %141 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %142 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %141, i32 0, i32 3
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %142, align 8
  br label %143

143:                                              ; preds = %136, %110
  br label %144

144:                                              ; preds = %143, %98
  %145 = load i64, i64* %11, align 8
  %146 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %147 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  %148 = load i64, i64* @SCTP_STRRESET_PERFORMED, align 8
  store i64 %148, i64* %9, align 8
  %149 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %150 = load %struct.sctp_strreset_addstrm*, %struct.sctp_strreset_addstrm** %7, align 8
  %151 = getelementptr inbounds %struct.sctp_strreset_addstrm, %struct.sctp_strreset_addstrm* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @ntohs(i32 %152)
  %154 = load i32, i32* @GFP_ATOMIC, align 4
  %155 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_stream_change_event(%struct.sctp_association* %149, i32 0, i64 %153, i32 0, i32 %154)
  %156 = load %struct.sctp_ulpevent**, %struct.sctp_ulpevent*** %6, align 8
  store %struct.sctp_ulpevent* %155, %struct.sctp_ulpevent** %156, align 8
  br label %157

157:                                              ; preds = %144, %108, %97, %90, %73
  %158 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %159 = load i64, i64* %9, align 8
  %160 = call i32 @sctp_update_strreset_result(%struct.sctp_association* %158, i64 %159)
  br label %161

161:                                              ; preds = %157, %48, %39
  %162 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %163 = load i64, i64* %9, align 8
  %164 = load i64, i64* %10, align 8
  %165 = call %struct.sctp_chunk* @sctp_make_strreset_resp(%struct.sctp_association* %162, i64 %163, i64 %164)
  ret %struct.sctp_chunk* %165
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @TSN_lt(i64, i64) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @sctp_stream_alloc_in(%struct.sctp_stream*, i64, i32) #1

declare dso_local i32 @sctp_chunk_lookup_strreset_param(%struct.sctp_association*, i32, i32) #1

declare dso_local i64 @del_timer(i32*) #1

declare dso_local i32 @sctp_transport_put(%struct.sctp_transport*) #1

declare dso_local i32 @sctp_chunk_put(%struct.TYPE_2__*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_stream_change_event(%struct.sctp_association*, i32, i64, i32, i32) #1

declare dso_local i32 @sctp_update_strreset_result(%struct.sctp_association*, i64) #1

declare dso_local %struct.sctp_chunk* @sctp_make_strreset_resp(%struct.sctp_association*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
