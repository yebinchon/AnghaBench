; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_cookie_wait_prm_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_cookie_wait_prm_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }

@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_INIT = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_CLOSED = common dso_local global i32 0, align 4
@SCTP_MIB_SHUTDOWNS = common dso_local global i32 0, align 4
@SCTP_CMD_DELETE_TCB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DELETE_TCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_cookie_wait_prm_shutdown(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca %union.sctp_subtype, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sctp_endpoint*, align 8
  %10 = alloca %struct.sctp_association*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.sctp_cmd_seq*, align 8
  %13 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %7, i32 0, i32 0
  store i32 %3, i32* %13, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %9, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %12, align 8
  %14 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %15 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %16 = load i32, i32* @SCTP_EVENT_TIMEOUT_T1_INIT, align 4
  %17 = call i32 @SCTP_TO(i32 %16)
  %18 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %14, i32 %15, i32 %17)
  %19 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %20 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %21 = load i32, i32* @SCTP_STATE_CLOSED, align 4
  %22 = call i32 @SCTP_STATE(i32 %21)
  %23 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %19, i32 %20, i32 %22)
  %24 = load %struct.net*, %struct.net** %8, align 8
  %25 = load i32, i32* @SCTP_MIB_SHUTDOWNS, align 4
  %26 = call i32 @SCTP_INC_STATS(%struct.net* %24, i32 %25)
  %27 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %12, align 8
  %28 = load i32, i32* @SCTP_CMD_DELETE_TCB, align 4
  %29 = call i32 (...) @SCTP_NULL()
  %30 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %27, i32 %28, i32 %29)
  %31 = load i32, i32* @SCTP_DISPOSITION_DELETE_TCB, align 4
  ret i32 %31
}

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
