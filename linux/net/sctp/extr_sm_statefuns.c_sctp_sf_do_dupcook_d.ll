; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_dupcook_d.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_dupcook_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_chunk = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%struct.sctp_association = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sctp_ulpevent = type { i32 }

@SCTP_DISPOSITION_DISCARD = common dso_local global i32 0, align 4
@SCTP_STATE_ESTABLISHED = common dso_local global i64 0, align 8
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_COOKIE = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_CMD_HB_TIMERS_START = common dso_local global i32 0, align 4
@SCTP_COMM_UP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_AUTH_NO_AUTH = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_EVENT_ULP = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, %struct.sctp_chunk*, %struct.sctp_cmd_seq*, %struct.sctp_association*)* @sctp_sf_do_dupcook_d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_do_dupcook_d(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, %struct.sctp_chunk* %3, %struct.sctp_cmd_seq* %4, %struct.sctp_association* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sctp_endpoint*, align 8
  %10 = alloca %struct.sctp_association*, align 8
  %11 = alloca %struct.sctp_chunk*, align 8
  %12 = alloca %struct.sctp_cmd_seq*, align 8
  %13 = alloca %struct.sctp_association*, align 8
  %14 = alloca %struct.sctp_ulpevent*, align 8
  %15 = alloca %struct.sctp_ulpevent*, align 8
  %16 = alloca %struct.sctp_ulpevent*, align 8
  %17 = alloca %struct.sctp_chunk*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %9, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %10, align 8
  store %struct.sctp_chunk* %3, %struct.sctp_chunk** %11, align 8
  store %struct.sctp_cmd_seq* %4, %struct.sctp_cmd_seq** %12, align 8
  store %struct.sctp_association* %5, %struct.sctp_association** %13, align 8
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %14, align 8
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %15, align 8
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %16, align 8
  %18 = load %struct.net*, %struct.net** %8, align 8
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %20 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %21 = call i32 @sctp_auth_chunk_verify(%struct.net* %18, %struct.sctp_chunk* %19, %struct.sctp_association* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @SCTP_DISPOSITION_DISCARD, align 4
  store i32 %24, i32* %7, align 4
  br label %155

25:                                               ; preds = %6
  %26 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %27 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SCTP_STATE_ESTABLISHED, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %94

31:                                               ; preds = %25
  %32 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %33 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %34 = load i32, i32* @SCTP_EVENT_TIMEOUT_T1_COOKIE, align 4
  %35 = call i32 @SCTP_TO(i32 %34)
  %36 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %32, i32 %33, i32 %35)
  %37 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %38 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %39 = load i64, i64* @SCTP_STATE_ESTABLISHED, align 8
  %40 = call i32 @SCTP_STATE(i64 %39)
  %41 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %37, i32 %38, i32 %40)
  %42 = load %struct.net*, %struct.net** %8, align 8
  %43 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %44 = call i32 @SCTP_INC_STATS(%struct.net* %42, i32 %43)
  %45 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %46 = load i32, i32* @SCTP_CMD_HB_TIMERS_START, align 4
  %47 = call i32 (...) @SCTP_NULL()
  %48 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %45, i32 %46, i32 %47)
  %49 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %50 = load i32, i32* @SCTP_COMM_UP, align 4
  %51 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %52 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %56 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @GFP_ATOMIC, align 4
  %60 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association* %49, i32 0, i32 %50, i32 0, i32 %54, i32 %58, i32* null, i32 %59)
  store %struct.sctp_ulpevent* %60, %struct.sctp_ulpevent** %14, align 8
  %61 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %14, align 8
  %62 = icmp ne %struct.sctp_ulpevent* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %31
  br label %135

64:                                               ; preds = %31
  %65 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %66 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %72 = load i32, i32* @GFP_ATOMIC, align 4
  %73 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_adaptation_indication(%struct.sctp_association* %71, i32 %72)
  store %struct.sctp_ulpevent* %73, %struct.sctp_ulpevent** %15, align 8
  %74 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %15, align 8
  %75 = icmp ne %struct.sctp_ulpevent* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  br label %135

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %64
  %79 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %80 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %78
  %85 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %86 = load i32, i32* @SCTP_AUTH_NO_AUTH, align 4
  %87 = load i32, i32* @GFP_ATOMIC, align 4
  %88 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_authkey(%struct.sctp_association* %85, i32 0, i32 %86, i32 %87)
  store %struct.sctp_ulpevent* %88, %struct.sctp_ulpevent** %16, align 8
  %89 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %16, align 8
  %90 = icmp ne %struct.sctp_ulpevent* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  br label %135

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %78
  br label %94

94:                                               ; preds = %93, %25
  %95 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %96 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %97 = call %struct.sctp_chunk* @sctp_make_cookie_ack(%struct.sctp_association* %95, %struct.sctp_chunk* %96)
  store %struct.sctp_chunk* %97, %struct.sctp_chunk** %17, align 8
  %98 = load %struct.sctp_chunk*, %struct.sctp_chunk** %17, align 8
  %99 = icmp ne %struct.sctp_chunk* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  br label %135

101:                                              ; preds = %94
  %102 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %103 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %104 = load %struct.sctp_chunk*, %struct.sctp_chunk** %17, align 8
  %105 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %104)
  %106 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %102, i32 %103, i32 %105)
  %107 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %14, align 8
  %108 = icmp ne %struct.sctp_ulpevent* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %111 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %112 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %14, align 8
  %113 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %112)
  %114 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %110, i32 %111, i32 %113)
  br label %115

115:                                              ; preds = %109, %101
  %116 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %15, align 8
  %117 = icmp ne %struct.sctp_ulpevent* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %120 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %121 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %15, align 8
  %122 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %121)
  %123 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %119, i32 %120, i32 %122)
  br label %124

124:                                              ; preds = %118, %115
  %125 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %16, align 8
  %126 = icmp ne %struct.sctp_ulpevent* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %129 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %130 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %16, align 8
  %131 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %130)
  %132 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %128, i32 %129, i32 %131)
  br label %133

133:                                              ; preds = %127, %124
  %134 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %134, i32* %7, align 4
  br label %155

135:                                              ; preds = %100, %91, %76, %63
  %136 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %16, align 8
  %137 = icmp ne %struct.sctp_ulpevent* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %16, align 8
  %140 = call i32 @sctp_ulpevent_free(%struct.sctp_ulpevent* %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %15, align 8
  %143 = icmp ne %struct.sctp_ulpevent* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %15, align 8
  %146 = call i32 @sctp_ulpevent_free(%struct.sctp_ulpevent* %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %14, align 8
  %149 = icmp ne %struct.sctp_ulpevent* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %14, align 8
  %152 = call i32 @sctp_ulpevent_free(%struct.sctp_ulpevent* %151)
  br label %153

153:                                              ; preds = %150, %147
  %154 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %153, %133, %23
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i32 @sctp_auth_chunk_verify(%struct.net*, %struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_STATE(i64) #1

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_adaptation_indication(%struct.sctp_association*, i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_authkey(%struct.sctp_association*, i32, i32, i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_cookie_ack(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent*) #1

declare dso_local i32 @sctp_ulpevent_free(%struct.sctp_ulpevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
