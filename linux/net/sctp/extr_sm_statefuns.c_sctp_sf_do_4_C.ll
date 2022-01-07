; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_4_C.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_4_C.c"
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
@SCTP_CMD_DELETE_TCB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DELETE_TCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_4_C(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
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
  %21 = call i32 @sctp_vtag_verify_either(%struct.sctp_chunk* %19, %struct.sctp_association* %20)
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
  br label %99

32:                                               ; preds = %6
  %33 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %34 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = load %struct.net*, %struct.net** %9, align 8
  %39 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %40 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %43 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sctp_sf_violation_chunk(%struct.net* %38, %struct.sctp_endpoint* %39, %struct.sctp_association* %40, i32 %44, i8* %41, %struct.sctp_cmd_seq* %42)
  store i32 %45, i32* %7, align 4
  br label %99

46:                                               ; preds = %32
  %47 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %48 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %47, i32 4)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = load %struct.net*, %struct.net** %9, align 8
  %52 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %53 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %56 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sctp_sf_violation_chunklen(%struct.net* %51, %struct.sctp_endpoint* %52, %struct.sctp_association* %53, i32 %57, i8* %54, %struct.sctp_cmd_seq* %55)
  store i32 %58, i32* %7, align 4
  br label %99

59:                                               ; preds = %46
  %60 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %61 = load i32, i32* @SCTP_SHUTDOWN_COMP, align 4
  %62 = load i32, i32* @GFP_ATOMIC, align 4
  %63 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association* %60, i32 0, i32 %61, i32 0, i32 0, i32 0, i32* null, i32 %62)
  store %struct.sctp_ulpevent* %63, %struct.sctp_ulpevent** %15, align 8
  %64 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %15, align 8
  %65 = icmp ne %struct.sctp_ulpevent* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %68 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %69 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %15, align 8
  %70 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %69)
  %71 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %67, i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %66, %59
  %73 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %74 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %75 = load i32, i32* @SCTP_EVENT_TIMEOUT_T2_SHUTDOWN, align 4
  %76 = call i32 @SCTP_TO(i32 %75)
  %77 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %73, i32 %74, i32 %76)
  %78 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %79 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %80 = load i32, i32* @SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD, align 4
  %81 = call i32 @SCTP_TO(i32 %80)
  %82 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %78, i32 %79, i32 %81)
  %83 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %84 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %85 = load i32, i32* @SCTP_STATE_CLOSED, align 4
  %86 = call i32 @SCTP_STATE(i32 %85)
  %87 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %83, i32 %84, i32 %86)
  %88 = load %struct.net*, %struct.net** %9, align 8
  %89 = load i32, i32* @SCTP_MIB_SHUTDOWNS, align 4
  %90 = call i32 @SCTP_INC_STATS(%struct.net* %88, i32 %89)
  %91 = load %struct.net*, %struct.net** %9, align 8
  %92 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %93 = call i32 @SCTP_DEC_STATS(%struct.net* %91, i32 %92)
  %94 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %95 = load i32, i32* @SCTP_CMD_DELETE_TCB, align 4
  %96 = call i32 (...) @SCTP_NULL()
  %97 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %94, i32 %95, i32 %96)
  %98 = load i32, i32* @SCTP_DISPOSITION_DELETE_TCB, align 4
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %72, %50, %37, %23
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i32 @sctp_vtag_verify_either(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_sf_violation_chunk(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent*) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @SCTP_DEC_STATS(%struct.net*, i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
