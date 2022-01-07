; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_violation_paramlen.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_violation_paramlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_paramhdr = type { i32 }
%struct.sctp_chunk = type { i32 }

@SCTP_CID_ABORT = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_MIB_OUTCTRLCHUNKS = common dso_local global i32 0, align 4
@SCTP_CMD_SET_SK_ERR = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@SCTP_CMD_ASSOC_FAILED = common dso_local global i32 0, align 4
@SCTP_ERROR_PROTO_VIOLATION = common dso_local global i32 0, align 4
@SCTP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@SCTP_MIB_ABORTEDS = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_ABORT = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i8*, %struct.sctp_cmd_seq*)* @sctp_sf_violation_paramlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_violation_paramlen(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, i8* %5, %struct.sctp_cmd_seq* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %union.sctp_subtype, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.sctp_endpoint*, align 8
  %12 = alloca %struct.sctp_association*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.sctp_cmd_seq*, align 8
  %16 = alloca %struct.sctp_paramhdr*, align 8
  %17 = alloca %struct.sctp_chunk*, align 8
  %18 = alloca %struct.sctp_chunk*, align 8
  %19 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %9, i32 0, i32 0
  store i32 %3, i32* %19, align 4
  store %struct.net* %0, %struct.net** %10, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %11, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.sctp_cmd_seq* %6, %struct.sctp_cmd_seq** %15, align 8
  %20 = load i8*, i8** %14, align 8
  %21 = bitcast i8* %20 to %struct.sctp_paramhdr*
  store %struct.sctp_paramhdr* %21, %struct.sctp_paramhdr** %16, align 8
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %17, align 8
  %22 = load i8*, i8** %13, align 8
  %23 = bitcast i8* %22 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %23, %struct.sctp_chunk** %18, align 8
  %24 = load i32, i32* @SCTP_CID_ABORT, align 4
  %25 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %26 = call i64 @sctp_auth_recv_cid(i32 %24, %struct.sctp_association* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %7
  br label %62

29:                                               ; preds = %7
  %30 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %31 = load %struct.sctp_chunk*, %struct.sctp_chunk** %18, align 8
  %32 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %16, align 8
  %33 = call %struct.sctp_chunk* @sctp_make_violation_paramlen(%struct.sctp_association* %30, %struct.sctp_chunk* %31, %struct.sctp_paramhdr* %32)
  store %struct.sctp_chunk* %33, %struct.sctp_chunk** %17, align 8
  %34 = load %struct.sctp_chunk*, %struct.sctp_chunk** %17, align 8
  %35 = icmp ne %struct.sctp_chunk* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %71

37:                                               ; preds = %29
  %38 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %15, align 8
  %39 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %40 = load %struct.sctp_chunk*, %struct.sctp_chunk** %17, align 8
  %41 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %40)
  %42 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %38, i32 %39, i32 %41)
  %43 = load %struct.net*, %struct.net** %10, align 8
  %44 = load i32, i32* @SCTP_MIB_OUTCTRLCHUNKS, align 4
  %45 = call i32 @SCTP_INC_STATS(%struct.net* %43, i32 %44)
  %46 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %15, align 8
  %47 = load i32, i32* @SCTP_CMD_SET_SK_ERR, align 4
  %48 = load i32, i32* @ECONNABORTED, align 4
  %49 = call i32 @SCTP_ERROR(i32 %48)
  %50 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %46, i32 %47, i32 %49)
  %51 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %15, align 8
  %52 = load i32, i32* @SCTP_CMD_ASSOC_FAILED, align 4
  %53 = load i32, i32* @SCTP_ERROR_PROTO_VIOLATION, align 4
  %54 = call i32 @SCTP_PERR(i32 %53)
  %55 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %51, i32 %52, i32 %54)
  %56 = load %struct.net*, %struct.net** %10, align 8
  %57 = load i32, i32* @SCTP_MIB_CURRESTAB, align 4
  %58 = call i32 @SCTP_DEC_STATS(%struct.net* %56, i32 %57)
  %59 = load %struct.net*, %struct.net** %10, align 8
  %60 = load i32, i32* @SCTP_MIB_ABORTEDS, align 4
  %61 = call i32 @SCTP_INC_STATS(%struct.net* %59, i32 %60)
  br label %62

62:                                               ; preds = %37, %28
  %63 = load %struct.net*, %struct.net** %10, align 8
  %64 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %11, align 8
  %65 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  %66 = call i32 @SCTP_ST_CHUNK(i32 0)
  %67 = load i8*, i8** %13, align 8
  %68 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %15, align 8
  %69 = call i32 @sctp_sf_pdiscard(%struct.net* %63, %struct.sctp_endpoint* %64, %struct.sctp_association* %65, i32 %66, i8* %67, %struct.sctp_cmd_seq* %68)
  %70 = load i32, i32* @SCTP_DISPOSITION_ABORT, align 4
  store i32 %70, i32* %8, align 4
  br label %73

71:                                               ; preds = %36
  %72 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %71, %62
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i64 @sctp_auth_recv_cid(i32, %struct.sctp_association*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_violation_paramlen(%struct.sctp_association*, %struct.sctp_chunk*, %struct.sctp_paramhdr*) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @SCTP_ERROR(i32) #1

declare dso_local i32 @SCTP_PERR(i32) #1

declare dso_local i32 @SCTP_DEC_STATS(%struct.net*, i32) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @SCTP_ST_CHUNK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
