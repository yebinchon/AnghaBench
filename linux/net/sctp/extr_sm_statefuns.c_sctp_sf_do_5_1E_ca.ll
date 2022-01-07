; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_5_1E_ca.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_5_1E_ca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_association = type { %struct.TYPE_6__, %struct.TYPE_5__, i64* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_chunk = type { i32 }
%struct.sctp_ulpevent = type { i32 }

@SCTP_CMD_INIT_COUNTER_RESET = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_COOKIE = common dso_local global i64 0, align 8
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_ESTABLISHED = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_MIB_ACTIVEESTABS = common dso_local global i32 0, align 4
@SCTP_CMD_HB_TIMERS_START = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_AUTOCLOSE = common dso_local global i64 0, align 8
@SCTP_CMD_TIMER_START = common dso_local global i32 0, align 4
@SCTP_COMM_UP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_CMD_EVENT_ULP = common dso_local global i32 0, align 4
@SCTP_AUTH_NO_AUTH = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_5_1E_ca(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  %15 = alloca %struct.sctp_ulpevent*, align 8
  %16 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %16, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = bitcast i8* %17 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %18, %struct.sctp_chunk** %14, align 8
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %20 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %21 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %19, %struct.sctp_association* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %6
  %24 = load %struct.net*, %struct.net** %9, align 8
  %25 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %26 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %29 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sctp_sf_pdiscard(%struct.net* %24, %struct.sctp_endpoint* %25, %struct.sctp_association* %26, i32 %30, i8* %27, %struct.sctp_cmd_seq* %28)
  store i32 %31, i32* %7, align 4
  br label %155

32:                                               ; preds = %6
  %33 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %34 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %33, i32 4)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = load %struct.net*, %struct.net** %9, align 8
  %38 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %39 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %42 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sctp_sf_violation_chunklen(%struct.net* %37, %struct.sctp_endpoint* %38, %struct.sctp_association* %39, i32 %43, i8* %40, %struct.sctp_cmd_seq* %41)
  store i32 %44, i32* %7, align 4
  br label %155

45:                                               ; preds = %32
  %46 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %47 = load i32, i32* @SCTP_CMD_INIT_COUNTER_RESET, align 4
  %48 = call i32 (...) @SCTP_NULL()
  %49 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %46, i32 %47, i32 %48)
  %50 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %51 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %55 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @security_inet_conn_established(i32 %53, i32 %56)
  %58 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %59 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %60 = load i64, i64* @SCTP_EVENT_TIMEOUT_T1_COOKIE, align 8
  %61 = call i32 @SCTP_TO(i64 %60)
  %62 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %58, i32 %59, i32 %61)
  %63 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %64 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %65 = load i32, i32* @SCTP_STATE_ESTABLISHED, align 4
  %66 = call i32 @SCTP_STATE(i32 %65)
  %67 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %63, i32 %64, i32 %66)
  %68 = load %struct.net*, %struct.net** %9, align 8
  %69 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %70 = call i32 @SCTP_INC_STATS(%struct.net* %68, i32 %69)
  %71 = load %struct.net*, %struct.net** %9, align 8
  %72 = load i32, i32* @SCTP_MIB_ACTIVEESTABS, align 4
  %73 = call i32 @SCTP_INC_STATS(%struct.net* %71, i32 %72)
  %74 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %75 = load i32, i32* @SCTP_CMD_HB_TIMERS_START, align 4
  %76 = call i32 (...) @SCTP_NULL()
  %77 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %74, i32 %75, i32 %76)
  %78 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %79 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %78, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* @SCTP_EVENT_TIMEOUT_AUTOCLOSE, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %45
  %86 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %87 = load i32, i32* @SCTP_CMD_TIMER_START, align 4
  %88 = load i64, i64* @SCTP_EVENT_TIMEOUT_AUTOCLOSE, align 8
  %89 = call i32 @SCTP_TO(i64 %88)
  %90 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %86, i32 %87, i32 %89)
  br label %91

91:                                               ; preds = %85, %45
  %92 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %93 = load i32, i32* @SCTP_COMM_UP, align 4
  %94 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %95 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %99 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @GFP_ATOMIC, align 4
  %103 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association* %92, i32 0, i32 %93, i32 0, i32 %97, i32 %101, i32* null, i32 %102)
  store %struct.sctp_ulpevent* %103, %struct.sctp_ulpevent** %15, align 8
  %104 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %15, align 8
  %105 = icmp ne %struct.sctp_ulpevent* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %91
  br label %153

107:                                              ; preds = %91
  %108 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %109 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %110 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %15, align 8
  %111 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %110)
  %112 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %108, i32 %109, i32 %111)
  %113 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %114 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %107
  %119 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %120 = load i32, i32* @GFP_ATOMIC, align 4
  %121 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_adaptation_indication(%struct.sctp_association* %119, i32 %120)
  store %struct.sctp_ulpevent* %121, %struct.sctp_ulpevent** %15, align 8
  %122 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %15, align 8
  %123 = icmp ne %struct.sctp_ulpevent* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %118
  br label %153

125:                                              ; preds = %118
  %126 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %127 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %128 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %15, align 8
  %129 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %128)
  %130 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %126, i32 %127, i32 %129)
  br label %131

131:                                              ; preds = %125, %107
  %132 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %133 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %151, label %137

137:                                              ; preds = %131
  %138 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %139 = load i32, i32* @SCTP_AUTH_NO_AUTH, align 4
  %140 = load i32, i32* @GFP_ATOMIC, align 4
  %141 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_authkey(%struct.sctp_association* %138, i32 0, i32 %139, i32 %140)
  store %struct.sctp_ulpevent* %141, %struct.sctp_ulpevent** %15, align 8
  %142 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %15, align 8
  %143 = icmp ne %struct.sctp_ulpevent* %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %137
  br label %153

145:                                              ; preds = %137
  %146 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %147 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %148 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %15, align 8
  %149 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %148)
  %150 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %146, i32 %147, i32 %149)
  br label %151

151:                                              ; preds = %145, %131
  %152 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %152, i32* %7, align 4
  br label %155

153:                                              ; preds = %144, %124, %106
  %154 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %153, %151, %36, %23
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @security_inet_conn_established(i32, i32) #1

declare dso_local i32 @SCTP_TO(i64) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_adaptation_indication(%struct.sctp_association*, i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_authkey(%struct.sctp_association*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
