; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_shutdown_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_shutdown_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i64* }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_chunk = type { i32 }

@SCTP_CMD_SETUP_T2 = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_RESTART = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T2_SHUTDOWN = common dso_local global i64 0, align 8
@SCTP_EVENT_TIMEOUT_AUTOCLOSE = common dso_local global i64 0, align 8
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_SHUTDOWN_ACK_SENT = common dso_local global i32 0, align 4
@SCTP_CMD_HB_TIMERS_STOP = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_9_2_shutdown_ack(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  %15 = alloca %struct.sctp_chunk*, align 8
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
  %20 = icmp ne %struct.sctp_chunk* %19, null
  br i1 %20, label %21, label %49

21:                                               ; preds = %6
  %22 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %23 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %24 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %22, %struct.sctp_association* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load %struct.net*, %struct.net** %9, align 8
  %28 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %29 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %32 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sctp_sf_pdiscard(%struct.net* %27, %struct.sctp_endpoint* %28, %struct.sctp_association* %29, i32 %33, i8* %30, %struct.sctp_cmd_seq* %31)
  store i32 %34, i32* %7, align 4
  br label %98

35:                                               ; preds = %21
  %36 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %37 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %36, i32 4)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load %struct.net*, %struct.net** %9, align 8
  %41 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %42 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %45 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sctp_sf_violation_chunklen(%struct.net* %40, %struct.sctp_endpoint* %41, %struct.sctp_association* %42, i32 %46, i8* %43, %struct.sctp_cmd_seq* %44)
  store i32 %47, i32* %7, align 4
  br label %98

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48, %6
  %50 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %51 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %52 = call %struct.sctp_chunk* @sctp_make_shutdown_ack(%struct.sctp_association* %50, %struct.sctp_chunk* %51)
  store %struct.sctp_chunk* %52, %struct.sctp_chunk** %15, align 8
  %53 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %54 = icmp ne %struct.sctp_chunk* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  br label %96

56:                                               ; preds = %49
  %57 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %58 = load i32, i32* @SCTP_CMD_SETUP_T2, align 4
  %59 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %60 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %59)
  %61 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %57, i32 %58, i32 %60)
  %62 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %63 = load i32, i32* @SCTP_CMD_TIMER_RESTART, align 4
  %64 = load i64, i64* @SCTP_EVENT_TIMEOUT_T2_SHUTDOWN, align 8
  %65 = call i32 @SCTP_TO(i64 %64)
  %66 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %62, i32 %63, i32 %65)
  %67 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %68 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* @SCTP_EVENT_TIMEOUT_AUTOCLOSE, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %56
  %75 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %76 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %77 = load i64, i64* @SCTP_EVENT_TIMEOUT_AUTOCLOSE, align 8
  %78 = call i32 @SCTP_TO(i64 %77)
  %79 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %75, i32 %76, i32 %78)
  br label %80

80:                                               ; preds = %74, %56
  %81 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %82 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %83 = load i32, i32* @SCTP_STATE_SHUTDOWN_ACK_SENT, align 4
  %84 = call i32 @SCTP_STATE(i32 %83)
  %85 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %81, i32 %82, i32 %84)
  %86 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %87 = load i32, i32* @SCTP_CMD_HB_TIMERS_STOP, align 4
  %88 = call i32 (...) @SCTP_NULL()
  %89 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %86, i32 %87, i32 %88)
  %90 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %91 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %92 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %93 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %92)
  %94 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %90, i32 %91, i32 %93)
  %95 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %95, i32* %7, align 4
  br label %98

96:                                               ; preds = %55
  %97 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %96, %80, %39, %26
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_shutdown_ack(%struct.sctp_association*, %struct.sctp_chunk*) #1

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
