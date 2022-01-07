; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_t4_timer_expire.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_t4_timer_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i64, i64, %struct.sctp_chunk* }
%struct.sctp_chunk = type { %struct.sctp_transport* }
%struct.sctp_transport = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }

@SCTP_MIB_T4_RTO_EXPIREDS = common dso_local global i32 0, align 4
@SCTP_CMD_STRIKE = common dso_local global i32 0, align 4
@SCTP_CMD_SETUP_T4 = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T4_RTO = common dso_local global i32 0, align 4
@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_FAILED = common dso_local global i32 0, align 4
@SCTP_ERROR_NO_ERROR = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_ABORT = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_RESTART = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_t4_timer_expire(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  %15 = alloca %struct.sctp_transport*, align 8
  %16 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %16, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %17 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %18 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %17, i32 0, i32 2
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %18, align 8
  store %struct.sctp_chunk* %19, %struct.sctp_chunk** %14, align 8
  %20 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %21 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %20, i32 0, i32 0
  %22 = load %struct.sctp_transport*, %struct.sctp_transport** %21, align 8
  store %struct.sctp_transport* %22, %struct.sctp_transport** %15, align 8
  %23 = load %struct.net*, %struct.net** %9, align 8
  %24 = load i32, i32* @SCTP_MIB_T4_RTO_EXPIREDS, align 4
  %25 = call i32 @SCTP_INC_STATS(%struct.net* %23, i32 %24)
  %26 = load %struct.sctp_transport*, %struct.sctp_transport** %15, align 8
  %27 = icmp ne %struct.sctp_transport* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %6
  %29 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %30 = load i32, i32* @SCTP_CMD_STRIKE, align 4
  %31 = load %struct.sctp_transport*, %struct.sctp_transport** %15, align 8
  %32 = call i32 @SCTP_TRANSPORT(%struct.sctp_transport* %31)
  %33 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %29, i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %28, %6
  %35 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %36 = load i32, i32* @SCTP_CMD_SETUP_T4, align 4
  %37 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %38 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %37)
  %39 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %35, i32 %36, i32 %38)
  %40 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %41 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %44 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %42, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %34
  %48 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %49 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %50 = load i32, i32* @SCTP_EVENT_TIMEOUT_T4_RTO, align 4
  %51 = call i32 @SCTP_TO(i32 %50)
  %52 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %48, i32 %49, i32 %51)
  %53 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %54 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = call i32 @SCTP_ERROR(i32 %55)
  %57 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %53, i32 %54, i32 %56)
  %58 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %59 = load i32, i32* @SCTP_CMD_ASSOC_FAILED, align 4
  %60 = load i32, i32* @SCTP_ERROR_NO_ERROR, align 4
  %61 = call i32 @SCTP_PERR(i32 %60)
  %62 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %58, i32 %59, i32 %61)
  %63 = load %struct.net*, %struct.net** %9, align 8
  %64 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %65 = call i32 @SCTP_INC_STATS(%struct.net* %63, i32 %64)
  %66 = load %struct.net*, %struct.net** %9, align 8
  %67 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %68 = call i32 @SCTP_DEC_STATS(%struct.net* %66, i32 %67)
  %69 = load i32, i32* @SCTP_DISPOSITION_ABORT, align 4
  store i32 %69, i32* %7, align 4
  br label %88

70:                                               ; preds = %34
  %71 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %72 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %71, i32 0, i32 2
  %73 = load %struct.sctp_chunk*, %struct.sctp_chunk** %72, align 8
  %74 = call i32 @sctp_chunk_hold(%struct.sctp_chunk* %73)
  %75 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %76 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %77 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %78 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %77, i32 0, i32 2
  %79 = load %struct.sctp_chunk*, %struct.sctp_chunk** %78, align 8
  %80 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %79)
  %81 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %75, i32 %76, i32 %80)
  %82 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %83 = load i32, i32* @SCTP_CMD_TIMER_RESTART, align 4
  %84 = load i32, i32* @SCTP_EVENT_TIMEOUT_T4_RTO, align 4
  %85 = call i32 @SCTP_TO(i32 %84)
  %86 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %82, i32 %83, i32 %85)
  %87 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %70, %47
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_TRANSPORT(%struct.sctp_transport*) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

declare dso_local i32 @SCTP_DEC_STATS(%struct.net*, i32) #1

declare dso_local i32 @sctp_chunk_hold(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
