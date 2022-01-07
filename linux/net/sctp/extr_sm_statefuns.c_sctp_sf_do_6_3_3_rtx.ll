; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_6_3_3_rtx.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_6_3_3_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_transport = type { i32 }

@SCTP_MIB_T3_RTX_EXPIREDS = common dso_local global i32 0, align 4
@SCTP_STATE_SHUTDOWN_PENDING = common dso_local global i64 0, align 8
@SCTP_CMD_TIMER_START_ONCE = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD = common dso_local global i32 0, align 4
@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_FAILED = common dso_local global i32 0, align 4
@SCTP_ERROR_NO_ERROR = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DELETE_TCB = common dso_local global i32 0, align 4
@SCTP_CMD_STRIKE = common dso_local global i32 0, align 4
@SCTP_CMD_RETRAN = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_6_3_3_rtx(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca %struct.sctp_transport*, align 8
  %15 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %15, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = bitcast i8* %16 to %struct.sctp_transport*
  store %struct.sctp_transport* %17, %struct.sctp_transport** %14, align 8
  %18 = load %struct.net*, %struct.net** %9, align 8
  %19 = load i32, i32* @SCTP_MIB_T3_RTX_EXPIREDS, align 4
  %20 = call i32 @SCTP_INC_STATS(%struct.net* %18, i32 %19)
  %21 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %22 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %25 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %6
  %29 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %30 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %36 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SCTP_STATE_SHUTDOWN_PENDING, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %42 = load i32, i32* @SCTP_CMD_TIMER_START_ONCE, align 4
  %43 = load i32, i32* @SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD, align 4
  %44 = call i32 @SCTP_TO(i32 %43)
  %45 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %41, i32 %42, i32 %44)
  br label %64

46:                                               ; preds = %34, %28
  %47 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %48 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = call i32 @SCTP_ERROR(i32 %49)
  %51 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %47, i32 %48, i32 %50)
  %52 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %53 = load i32, i32* @SCTP_CMD_ASSOC_FAILED, align 4
  %54 = load i32, i32* @SCTP_ERROR_NO_ERROR, align 4
  %55 = call i32 @SCTP_PERR(i32 %54)
  %56 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %52, i32 %53, i32 %55)
  %57 = load %struct.net*, %struct.net** %9, align 8
  %58 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %59 = call i32 @SCTP_INC_STATS(%struct.net* %57, i32 %58)
  %60 = load %struct.net*, %struct.net** %9, align 8
  %61 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %62 = call i32 @SCTP_DEC_STATS(%struct.net* %60, i32 %61)
  %63 = load i32, i32* @SCTP_DISPOSITION_DELETE_TCB, align 4
  store i32 %63, i32* %7, align 4
  br label %77

64:                                               ; preds = %40
  br label %65

65:                                               ; preds = %64, %6
  %66 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %67 = load i32, i32* @SCTP_CMD_STRIKE, align 4
  %68 = load %struct.sctp_transport*, %struct.sctp_transport** %14, align 8
  %69 = call i32 @SCTP_TRANSPORT(%struct.sctp_transport* %68)
  %70 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %66, i32 %67, i32 %69)
  %71 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %72 = load i32, i32* @SCTP_CMD_RETRAN, align 4
  %73 = load %struct.sctp_transport*, %struct.sctp_transport** %14, align 8
  %74 = call i32 @SCTP_TRANSPORT(%struct.sctp_transport* %73)
  %75 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %71, i32 %72, i32 %74)
  %76 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %65, %46
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_TO(i32) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

declare dso_local i32 @SCTP_DEC_STATS(%struct.net*, i32) #1

declare dso_local i32 @SCTP_TRANSPORT(%struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
