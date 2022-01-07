; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_5_2_6_stale.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_5_2_6_stale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.sctp_cookie_preserve_param = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sctp_bind_addr = type { i32 }
%struct.sctp_errhdr = type { i32 }

@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SCTP_CMD_INIT_FAILED = common dso_local global i32 0, align 4
@SCTP_ERROR_STALE_COOKIE = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DELETE_TCB = common dso_local global i32 0, align 4
@SCTP_PARAM_COOKIE_PRESERVATIVE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_CMD_CLEAR_INIT_TAG = common dso_local global i32 0, align 4
@SCTP_CMD_T3_RTX_TIMERS_STOP = common dso_local global i32 0, align 4
@SCTP_CMD_HB_TIMERS_STOP = common dso_local global i32 0, align 4
@SCTP_CMD_DEL_NON_PRIMARY = common dso_local global i32 0, align 4
@SCTP_CMD_T1_RETRAN = common dso_local global i32 0, align 4
@SCTP_CMD_INIT_COUNTER_INC = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_COOKIE = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_COOKIE_WAIT = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_START = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_INIT = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*)* @sctp_sf_do_5_2_6_stale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_do_5_2_6_stale(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sctp_chunk*, align 8
  %16 = alloca %struct.sctp_chunk*, align 8
  %17 = alloca %struct.sctp_cookie_preserve_param, align 4
  %18 = alloca %struct.sctp_bind_addr*, align 8
  %19 = alloca %struct.sctp_errhdr*, align 8
  %20 = alloca i32, align 4
  %21 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %21, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %22 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %23 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %14, align 4
  %26 = load i8*, i8** %12, align 8
  %27 = bitcast i8* %26 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %27, %struct.sctp_chunk** %15, align 8
  %28 = load i32, i32* %14, align 4
  %29 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %30 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %28, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %6
  %34 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %35 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = call i32 @SCTP_ERROR(i32 %36)
  %38 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %34, i32 %35, i32 %37)
  %39 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %40 = load i32, i32* @SCTP_CMD_INIT_FAILED, align 4
  %41 = load i32, i32* @SCTP_ERROR_STALE_COOKIE, align 4
  %42 = call i32 @SCTP_PERR(i32 %41)
  %43 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %39, i32 %40, i32 %42)
  %44 = load i32, i32* @SCTP_DISPOSITION_DELETE_TCB, align 4
  store i32 %44, i32* %7, align 4
  br label %134

45:                                               ; preds = %6
  %46 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %47 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.sctp_errhdr*
  store %struct.sctp_errhdr* %51, %struct.sctp_errhdr** %19, align 8
  %52 = load %struct.sctp_errhdr*, %struct.sctp_errhdr** %19, align 8
  %53 = bitcast %struct.sctp_errhdr* %52 to i32*
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ntohl(i32 %55)
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* %20, align 4
  %58 = mul nsw i32 %57, 2
  %59 = sdiv i32 %58, 1000
  store i32 %59, i32* %20, align 4
  %60 = load i32, i32* @SCTP_PARAM_COOKIE_PRESERVATIVE, align 4
  %61 = getelementptr inbounds %struct.sctp_cookie_preserve_param, %struct.sctp_cookie_preserve_param* %17, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = call i32 @htons(i32 12)
  %64 = getelementptr inbounds %struct.sctp_cookie_preserve_param, %struct.sctp_cookie_preserve_param* %17, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %20, align 4
  %67 = call i32 @htonl(i32 %66)
  %68 = getelementptr inbounds %struct.sctp_cookie_preserve_param, %struct.sctp_cookie_preserve_param* %17, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %70 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = bitcast i32* %71 to %struct.sctp_bind_addr*
  store %struct.sctp_bind_addr* %72, %struct.sctp_bind_addr** %18, align 8
  %73 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %74 = load %struct.sctp_bind_addr*, %struct.sctp_bind_addr** %18, align 8
  %75 = load i32, i32* @GFP_ATOMIC, align 4
  %76 = call %struct.sctp_chunk* @sctp_make_init(%struct.sctp_association* %73, %struct.sctp_bind_addr* %74, i32 %75, i32 12)
  store %struct.sctp_chunk* %76, %struct.sctp_chunk** %16, align 8
  %77 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %78 = icmp ne %struct.sctp_chunk* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %45
  br label %132

80:                                               ; preds = %45
  %81 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %82 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %81, i32 12, %struct.sctp_cookie_preserve_param* %17)
  %83 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %84 = load i32, i32* @SCTP_CMD_CLEAR_INIT_TAG, align 4
  %85 = call i32 (...) @SCTP_NULL()
  %86 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %83, i32 %84, i32 %85)
  %87 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %88 = load i32, i32* @SCTP_CMD_T3_RTX_TIMERS_STOP, align 4
  %89 = call i32 (...) @SCTP_NULL()
  %90 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %87, i32 %88, i32 %89)
  %91 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %92 = load i32, i32* @SCTP_CMD_HB_TIMERS_STOP, align 4
  %93 = call i32 (...) @SCTP_NULL()
  %94 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %91, i32 %92, i32 %93)
  %95 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %96 = load i32, i32* @SCTP_CMD_DEL_NON_PRIMARY, align 4
  %97 = call i32 (...) @SCTP_NULL()
  %98 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %95, i32 %96, i32 %97)
  %99 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %100 = load i32, i32* @SCTP_CMD_T1_RETRAN, align 4
  %101 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %102 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @SCTP_TRANSPORT(i32 %104)
  %106 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %99, i32 %100, i32 %105)
  %107 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %108 = load i32, i32* @SCTP_CMD_INIT_COUNTER_INC, align 4
  %109 = call i32 (...) @SCTP_NULL()
  %110 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %107, i32 %108, i32 %109)
  %111 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %112 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %113 = load i32, i32* @SCTP_EVENT_TIMEOUT_T1_COOKIE, align 4
  %114 = call i32 @SCTP_TO(i32 %113)
  %115 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %111, i32 %112, i32 %114)
  %116 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %117 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %118 = load i32, i32* @SCTP_STATE_COOKIE_WAIT, align 4
  %119 = call i32 @SCTP_STATE(i32 %118)
  %120 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %116, i32 %117, i32 %119)
  %121 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %122 = load i32, i32* @SCTP_CMD_TIMER_START, align 4
  %123 = load i32, i32* @SCTP_EVENT_TIMEOUT_T1_INIT, align 4
  %124 = call i32 @SCTP_TO(i32 %123)
  %125 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %121, i32 %122, i32 %124)
  %126 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %127 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %128 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %129 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %128)
  %130 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %126, i32 %127, i32 %129)
  %131 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %131, i32* %7, align 4
  br label %134

132:                                              ; preds = %79
  %133 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %132, %80, %33
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_init(%struct.sctp_association*, %struct.sctp_bind_addr*, i32, i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %struct.sctp_cookie_preserve_param*) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @SCTP_TRANSPORT(i32) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
