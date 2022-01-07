; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_start_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_start_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i64* }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_chunk = type { i32 }

@SCTP_CMD_SETUP_T2 = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_START = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T2_SHUTDOWN = common dso_local global i64 0, align 8
@SCTP_CMD_TIMER_RESTART = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD = common dso_local global i64 0, align 8
@SCTP_EVENT_TIMEOUT_AUTOCLOSE = common dso_local global i64 0, align 8
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_SHUTDOWN_SENT = common dso_local global i32 0, align 4
@SCTP_CMD_HB_TIMERS_STOP = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_9_2_start_shutdown(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  %15 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %15, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %16 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %17 = call %struct.sctp_chunk* @sctp_make_shutdown(%struct.sctp_association* %16, i32* null)
  store %struct.sctp_chunk* %17, %struct.sctp_chunk** %14, align 8
  %18 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %19 = icmp ne %struct.sctp_chunk* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  br label %66

21:                                               ; preds = %6
  %22 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %23 = load i32, i32* @SCTP_CMD_SETUP_T2, align 4
  %24 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %25 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %24)
  %26 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %22, i32 %23, i32 %25)
  %27 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %28 = load i32, i32* @SCTP_CMD_TIMER_START, align 4
  %29 = load i64, i64* @SCTP_EVENT_TIMEOUT_T2_SHUTDOWN, align 8
  %30 = call i32 @SCTP_TO(i64 %29)
  %31 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %27, i32 %28, i32 %30)
  %32 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %33 = load i32, i32* @SCTP_CMD_TIMER_RESTART, align 4
  %34 = load i64, i64* @SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD, align 8
  %35 = call i32 @SCTP_TO(i64 %34)
  %36 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %32, i32 %33, i32 %35)
  %37 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %38 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @SCTP_EVENT_TIMEOUT_AUTOCLOSE, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %21
  %45 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %46 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %47 = load i64, i64* @SCTP_EVENT_TIMEOUT_AUTOCLOSE, align 8
  %48 = call i32 @SCTP_TO(i64 %47)
  %49 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %45, i32 %46, i32 %48)
  br label %50

50:                                               ; preds = %44, %21
  %51 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %52 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %53 = load i32, i32* @SCTP_STATE_SHUTDOWN_SENT, align 4
  %54 = call i32 @SCTP_STATE(i32 %53)
  %55 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %51, i32 %52, i32 %54)
  %56 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %57 = load i32, i32* @SCTP_CMD_HB_TIMERS_STOP, align 4
  %58 = call i32 (...) @SCTP_NULL()
  %59 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %56, i32 %57, i32 %58)
  %60 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %61 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %62 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %63 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %62)
  %64 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %60, i32 %61, i32 %63)
  %65 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %65, i32* %7, align 4
  br label %68

66:                                               ; preds = %20
  %67 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %66, %50
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local %struct.sctp_chunk* @sctp_make_shutdown(%struct.sctp_association*, i32*) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_TO(i64) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
