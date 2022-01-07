; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_final.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_chunk = type { i32 }
%struct.sctp_ulpevent = type { i32 }

@SCTP_SHUTDOWN_COMP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_CMD_EVENT_ULP = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T2_SHUTDOWN = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_CLOSED = common dso_local global i32 0, align 4
@SCTP_MIB_SHUTDOWNS = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_DELETE_TCB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DELETE_TCB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_9_2_final(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  %15 = alloca %struct.sctp_chunk*, align 8
  %16 = alloca %struct.sctp_ulpevent*, align 8
  %17 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %17, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = bitcast i8* %18 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %19, %struct.sctp_chunk** %14, align 8
  %20 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %21 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %22 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %20, %struct.sctp_association* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %6
  %25 = load %struct.net*, %struct.net** %9, align 8
  %26 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %27 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %30 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sctp_sf_pdiscard(%struct.net* %25, %struct.sctp_endpoint* %26, %struct.sctp_association* %27, i32 %31, i8* %28, %struct.sctp_cmd_seq* %29)
  store i32 %32, i32* %7, align 4
  br label %103

33:                                               ; preds = %6
  %34 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %35 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %34, i32 4)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = load %struct.net*, %struct.net** %9, align 8
  %39 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %40 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %43 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sctp_sf_violation_chunklen(%struct.net* %38, %struct.sctp_endpoint* %39, %struct.sctp_association* %40, i32 %44, i8* %41, %struct.sctp_cmd_seq* %42)
  store i32 %45, i32* %7, align 4
  br label %103

46:                                               ; preds = %33
  %47 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %48 = load i32, i32* @SCTP_SHUTDOWN_COMP, align 4
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association* %47, i32 0, i32 %48, i32 0, i32 0, i32 0, i32* null, i32 %49)
  store %struct.sctp_ulpevent* %50, %struct.sctp_ulpevent** %16, align 8
  %51 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %16, align 8
  %52 = icmp ne %struct.sctp_ulpevent* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %101

54:                                               ; preds = %46
  %55 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %56 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %57 = call %struct.sctp_chunk* @sctp_make_shutdown_complete(%struct.sctp_association* %55, %struct.sctp_chunk* %56)
  store %struct.sctp_chunk* %57, %struct.sctp_chunk** %15, align 8
  %58 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %59 = icmp ne %struct.sctp_chunk* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %98

61:                                               ; preds = %54
  %62 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %63 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %64 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %16, align 8
  %65 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %64)
  %66 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %62, i32 %63, i32 %65)
  %67 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %68 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %69 = load i32, i32* @SCTP_EVENT_TIMEOUT_T2_SHUTDOWN, align 4
  %70 = call i32 @SCTP_TO(i32 %69)
  %71 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %67, i32 %68, i32 %70)
  %72 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %73 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %74 = load i32, i32* @SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD, align 4
  %75 = call i32 @SCTP_TO(i32 %74)
  %76 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %72, i32 %73, i32 %75)
  %77 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %78 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %79 = load i32, i32* @SCTP_STATE_CLOSED, align 4
  %80 = call i32 @SCTP_STATE(i32 %79)
  %81 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %77, i32 %78, i32 %80)
  %82 = load %struct.net*, %struct.net** %9, align 8
  %83 = load i32, i32* @SCTP_MIB_SHUTDOWNS, align 4
  %84 = call i32 @SCTP_INC_STATS(%struct.net* %82, i32 %83)
  %85 = load %struct.net*, %struct.net** %9, align 8
  %86 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %87 = call i32 @SCTP_DEC_STATS(%struct.net* %85, i32 %86)
  %88 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %89 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %90 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %91 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %90)
  %92 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %88, i32 %89, i32 %91)
  %93 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %94 = load i32, i32* @SCTP_CMD_DELETE_TCB, align 4
  %95 = call i32 (...) @SCTP_NULL()
  %96 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %93, i32 %94, i32 %95)
  %97 = load i32, i32* @SCTP_DISPOSITION_DELETE_TCB, align 4
  store i32 %97, i32* %7, align 4
  br label %103

98:                                               ; preds = %60
  %99 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %16, align 8
  %100 = call i32 @sctp_ulpevent_free(%struct.sctp_ulpevent* %99)
  br label %101

101:                                              ; preds = %98, %53
  %102 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %101, %61, %37, %24
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_shutdown_complete(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent*) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @SCTP_DEC_STATS(%struct.net*, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @sctp_ulpevent_free(%struct.sctp_ulpevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
