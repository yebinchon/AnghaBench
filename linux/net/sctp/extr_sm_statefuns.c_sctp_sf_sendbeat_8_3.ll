; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_sendbeat_8_3.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_sendbeat_8_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i64, i64 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_transport = type { i32 }

@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_FAILED = common dso_local global i32 0, align 4
@SCTP_ERROR_NO_ERROR = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DELETE_TCB = common dso_local global i32 0, align 4
@SPP_HB_ENABLE = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i64 0, align 8
@SCTP_CMD_TRANSPORT_HB_SENT = common dso_local global i32 0, align 4
@SCTP_CMD_TRANSPORT_IDLE = common dso_local global i32 0, align 4
@SCTP_CMD_HB_TIMER_UPDATE = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_sendbeat_8_3(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
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
  %18 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %19 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %22 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %6
  %26 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %27 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %28 = load i32, i32* @ETIMEDOUT, align 4
  %29 = call i32 @SCTP_ERROR(i32 %28)
  %30 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %26, i32 %27, i32 %29)
  %31 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %32 = load i32, i32* @SCTP_CMD_ASSOC_FAILED, align 4
  %33 = load i32, i32* @SCTP_ERROR_NO_ERROR, align 4
  %34 = call i32 @SCTP_PERR(i32 %33)
  %35 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %31, i32 %32, i32 %34)
  %36 = load %struct.net*, %struct.net** %9, align 8
  %37 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %38 = call i32 @SCTP_INC_STATS(%struct.net* %36, i32 %37)
  %39 = load %struct.net*, %struct.net** %9, align 8
  %40 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %41 = call i32 @SCTP_DEC_STATS(%struct.net* %39, i32 %40)
  %42 = load i32, i32* @SCTP_DISPOSITION_DELETE_TCB, align 4
  store i32 %42, i32* %7, align 4
  br label %81

43:                                               ; preds = %6
  %44 = load %struct.sctp_transport*, %struct.sctp_transport** %14, align 8
  %45 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SPP_HB_ENABLE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %43
  %51 = load i64, i64* @SCTP_DISPOSITION_NOMEM, align 8
  %52 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %53 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %56 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @sctp_sf_heartbeat(%struct.sctp_endpoint* %52, %struct.sctp_association* %53, i32 %57, i8* %54, %struct.sctp_cmd_seq* %55)
  %59 = icmp eq i64 %51, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i64, i64* @SCTP_DISPOSITION_NOMEM, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %7, align 4
  br label %81

63:                                               ; preds = %50
  %64 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %65 = load i32, i32* @SCTP_CMD_TRANSPORT_HB_SENT, align 4
  %66 = load %struct.sctp_transport*, %struct.sctp_transport** %14, align 8
  %67 = call i32 @SCTP_TRANSPORT(%struct.sctp_transport* %66)
  %68 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %64, i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %63, %43
  %70 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %71 = load i32, i32* @SCTP_CMD_TRANSPORT_IDLE, align 4
  %72 = load %struct.sctp_transport*, %struct.sctp_transport** %14, align 8
  %73 = call i32 @SCTP_TRANSPORT(%struct.sctp_transport* %72)
  %74 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %70, i32 %71, i32 %73)
  %75 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %76 = load i32, i32* @SCTP_CMD_HB_TIMER_UPDATE, align 4
  %77 = load %struct.sctp_transport*, %struct.sctp_transport** %14, align 8
  %78 = call i32 @SCTP_TRANSPORT(%struct.sctp_transport* %77)
  %79 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %75, i32 %76, i32 %78)
  %80 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %69, %60, %25
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @SCTP_DEC_STATS(%struct.net*, i32) #1

declare dso_local i64 @sctp_sf_heartbeat(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @SCTP_TRANSPORT(%struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
